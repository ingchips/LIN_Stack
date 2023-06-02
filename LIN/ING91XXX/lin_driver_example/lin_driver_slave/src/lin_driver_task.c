#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "platform_api.h"
#include "main.h"
#include "board.h"
#include "key.h"
#include "stdbool.h" 
#include "peripherals_lin_0.h"
#include "lin_driver_task.h"
#include "lin_user_def.h"
#include "queue.h"


#define MSG_WORKING  (0x01)
#define MSG_WAKEUP   (0x02)
#define MSG_SLEEP    (0x03)

xQueueHandle LinQue_Handle;
typedef struct LinQue_msg
{
    uint32_t        msg_id;
    uint32_t        length;
    const void      *param;
}LinQue_msg_t;


#define DATA_SIZE                     (8U)
#define FRAME_SLAVE_RECEIVE_DATA      (1U)
#define FRAME_MASTER_RECEIVE_DATA     (2U)
#define FRAME_GO_TO_SLEEP             (3U)
#define HEADER_TIMEOUT                (10U)  // delay_MS = (TIMEOUT * LIN0_TMO_NS_TIMER_DUTY_US)/1000; //5ms
#define DATA_TIMEOUT                  (500U) // delay_MS = (TIMEOUT * LIN0_TMO_NS_TIMER_DUTY_US)/1000; //250ms


uint16_t timerOverflowInterruptCount = 0U;
lin_node_state_t timeout_state = LIN_NODE_STATE_UNINIT;

/* Define for DATA buffer transmit */
uint8_t txBuff1[DATA_SIZE] = {0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18};
uint8_t txBuff2[DATA_SIZE] = {0x18, 0x17, 0x16, 0x15, 0x14, 0x13, 0x12, 0x11};
/* Define for DATA buffer receiver */
uint8_t rxBuff[DATA_SIZE] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

/* Function declaration. */
static void lin_driver_init(void);
static int LinQue_SendMsg(uint32_t msg_id, const void *param, uint32_t length);

static char * print_role_str(void)
{
    static char master[] = "Master";
    static char slave[]  = "slave";
    if (LIN0_ROLE == LINR_MASTER){
        return master;
    }
    return slave;
}

/*!
 * @brief LPTMR Interrupt Service Routine
 * The ISR will call LIN timeout service every 500us
 */
uint32_t timer_isr(void *user_data){
    /* Timer Interrupt Handler */
    LIN_DRV_TimeoutService(INST_LIN0);
    
    /* Increment overflow count */
    timerOverflowInterruptCount++;
    
#if (USE_ING918X)
    /* Clear compare flag */
    TMR_IntClr(LIN0_TMO_NS_TIMER_SEL);
#else
    /* Clear compare flag */
    TMR_IntClr(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID, LIN0_TMO_NS_TIMER_MASK);
#endif
    return 0;
}

/*!
 * @brief Callback function to get time interval in nano seconds
 * @param[out] ns - number of nanoseconds passed since the last call of the function
 * @return dummy value
 */
uint32_t lin0TimerGetTimeIntervalCallback0(uint32_t *ns)
{
    static uint32_t previousCountValue = 0UL;
    uint32_t counterValue;

#if (USE_ING918X)
    counterValue = TMR_GetCNT(LIN0_TMO_NS_TIMER_SEL);
#else
    counterValue = TMR_GetCNT(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID);
#endif
    *ns = ((uint32_t)(counterValue + timerOverflowInterruptCount * LIN0_TMO_NS_TIMER_COMPARE_VAL - previousCountValue)) * 1000U / LIN0_TMO_NS_TIMER_TICKS_1US;
    timerOverflowInterruptCount = 0UL;
    previousCountValue = counterValue;

    return 0UL;
}


void BTNPORT_Handler(uint8_t num){
    /* If Button 3 is pressed */
    if (num == KEY_VALUE_3)
    {
        if(LIN_NODE_STATE_SLEEP_MODE == LIN_DRV_GetCurrentNodeState(INST_LIN0))
        {
            printf("%s send wake up signal.\n", print_role_str());
            /* Send wakeup signal */
            LIN_DRV_SendWakeupSignal(INST_LIN0);
        }
    }
}

/**
* Func:     CallbackHandler()
* Desc:     Declare Callback handler function
*/
lin_callback_t CallbackHandler(uint32_t instance, lin_state_t * lin0_State)
{
    lin_callback_t callbackCurrent;
    callbackCurrent = lin0_State->Callback;
    (void)instance;

    switch (lin0_State->currentEventId)
    {
        case LIN_SENDING_BREAK_FIELD:
        case LIN_SENDING_SYNC_FIELD:
        case LIN_SENDING_PID_FIELD:
        case LIN_RECV_BREAK_FIELD_START:
        case LIN_RECV_BREAK_FIELD_OK:
        case LIN_RECV_SYNC_FIELD_OK:
			if(LIN_RECV_BREAK_FIELD_OK == lin0_State->currentEventId){
                LinQue_SendMsg(MSG_WORKING, NULL, 0);
            }
            /* Set timeout */
            LIN_DRV_SetTimeoutCounter(INST_LIN0, HEADER_TIMEOUT);
            break;
        case LIN_PID_OK:

            /* Set timeout */
            LIN_DRV_SetTimeoutCounter(INST_LIN0, DATA_TIMEOUT);

            /* If PID is 0x01, salve node will receive data from master node */
            if(FRAME_SLAVE_RECEIVE_DATA == lin0_State->currentId)
            {
                /* Call to Receive Frame DATA Function */
                LIN_DRV_ReceiveFrameData(INST_LIN0, rxBuff, sizeof(rxBuff));
            }

            /* If PID is 0x02, salve node will send data */
            if(FRAME_MASTER_RECEIVE_DATA == lin0_State->currentId)
            {
                /* Call to Send Frame DATA Function */
                LIN_DRV_SendFrameData(INST_LIN0, txBuff2, sizeof(txBuff2));
            }

            /* If PID is 0x03, salve node will go to sleep mode */
            if(FRAME_GO_TO_SLEEP == lin0_State->currentId)
            {
                /* Go to sleep mode */
                LIN_DRV_GoToSleepMode(INST_LIN0);
            }
            break;
        case LIN_PID_ERROR:
            if (lin0_InitConfig0.nodeFunction == (bool)MASTER)
                printf("master pid error.\n");
            else
                printf("slave pid error.\n");
            /* Go to idle mode */
            LIN_DRV_GotoIdleState(INST_LIN0);
            break;
        case LIN_TX_COMPLETED:
        case LIN_RX_COMPLETED:
            if(LIN_TX_COMPLETED == lin0_State->currentEventId){
                printf("%s Tx completed.\n", print_role_str());
            } else {
                printf("%s Rx completed.\n", print_role_str());
            }
            /* Go to idle mode */
            LIN_DRV_GotoIdleState(INST_LIN0);
            break;
        case LIN_OP_TIMEOUT:
            switch(lin0_State->currentNodeState)
            {
                case LIN_NODE_STATE_SEND_BREAK_FIELD:
                    printf("master Tx break timeout.\n");
                    break;
                case LIN_NODE_STATE_SEND_SYNC:
                    printf("master Tx sync timeout.\n");
                    break;
                case LIN_NODE_STATE_SEND_PID:
                    printf("master Tx pid timeout.\n");
                    break;
                case LIN_NODE_STATE_RECEIVING_BREAK:
                    printf("slave Rx break timeout.\n");
                    break;
                case LIN_NODE_STATE_RECV_SYNC:
                    printf("slave Rx sync timeout.\n");
                    break;
                case LIN_NODE_STATE_RECV_PID:
                    printf("slave Rx pid timeout.\n");
                    break;
                case LIN_NODE_STATE_SEND_DATA:
                    if (lin0_InitConfig0.nodeFunction == (bool)MASTER)
                        printf("master Tx data timeout.\n");
                    else
                        printf("slave Tx data timeout.\n");
                    break;
                case LIN_NODE_STATE_RECV_DATA:
                    if (lin0_InitConfig0.nodeFunction == (bool)MASTER)
                        printf("master Rx data timeout.\n");
                    else
                        printf("slave Rx data timeout.\n");
                    break;
                default:
                    break;
            }
            timeout_state = lin0_State->currentNodeState;
            /* Go to idle mode */
            LIN_DRV_GotoIdleState(INST_LIN0);
            break;
        case LIN_CHECKSUM_ERROR:
        case LIN_READBACK_ERROR:
        case LIN_FRAME_ERROR:
            /* Set timeout */
            LIN_DRV_SetTimeoutCounter(INST_LIN0, DATA_TIMEOUT);
            break;
        case LIN_WAKEUP_SIGNAL:
            LinQue_SendMsg(MSG_WAKEUP, NULL, 0);
            break;
        case LIN_GO_TO_SLEEP:
            LinQue_SendMsg(MSG_SLEEP, NULL, 0);
            break;
        case LIN_SYNC_ERROR:
        case LIN_BAUDRATE_ADJUSTED:
        case LIN_NO_EVENT:
        case LIN_SYNC_OK:
        default:
        /* do nothing */
            break;
    }
    return callbackCurrent;
}

/*!
 * @brief lin_driver_init
 */
static void lin_driver_init(void)
{
    __disable_irq();
    
    /* Initialize LIN network interface */
    LIN_DRV_Init(INST_LIN0, &lin0_InitConfig0, &lin0_State);

    /* Install callback function */
    LIN_DRV_InstallCallback(INST_LIN0, (lin_callback_t)CallbackHandler);
    
    __enable_irq();
}

/*!
 * @brief LinQue_SendMsg
 */
static int LinQue_SendMsg(uint32_t msg_id, const void *param, uint32_t length)
{
    int8_t err = 0;
    LinQue_msg_t SendMsg;

    SendMsg.msg_id = msg_id;
    SendMsg.length = length;
    SendMsg.param = param;

    if (IS_IN_INTERRUPT()){
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;
        err = xQueueSendToBackFromISR(LinQue_Handle, &SendMsg, &xHigherPriorityTaskWoken);
    } else {
        err = xQueueSendToBack(LinQue_Handle, &SendMsg, portMAX_DELAY);
    }
    return err == pdPASS ? 0 : 1;
}

static void LinMsg_WorkingHandler(void)
{
    if(LIN_NODE_STATE_IDLE != LIN_DRV_GetCurrentNodeState(INST_LIN0))
    {
        LinQue_SendMsg(MSG_WORKING, NULL, 0); // If not idle, re-queue it, until it is idle.
        return;
    }

    uint8_t byteRemain;
    bool receiveFlag;
    status_t status;

    /* slave operation timeout ------------------------------------------*/
    if (timeout_state != LIN_NODE_STATE_UNINIT)
    {
        timeout_state = LIN_NODE_STATE_UNINIT;
        /* Turn on red LED. Close others. */
        set_rgb_led_color(100, 0, 0);
    }            
    /* slave receive data -----------------------------------------------*/
    else if (FRAME_SLAVE_RECEIVE_DATA == lin0_State.currentId)
    {
        status = LIN_DRV_GetReceiveStatus(INST_LIN0, &byteRemain);
        if((status == STATUS_SUCCESS) && (0U == byteRemain))
        {
            receiveFlag = true;
            
            /* Check data receiving */
            if(memcmp(rxBuff, txBuff1, DATA_SIZE) != 0)
            {
                receiveFlag = false;
            }

            /* Clear Rx buffer */
            memset(rxBuff, 0, DATA_SIZE);

            /* Check data receiving */
            if (false == receiveFlag)
            {
                /* Turn on red LED. Close others. */
                set_rgb_led_color(50, 0, 0);
                printf("%s rx data wrong.\n", print_role_str());
            }
            else
            {
                /* Turn on green LED. Close others. */
                set_rgb_led_color(0, 50, 0);
                printf("%s rx data right.\n", print_role_str());
            }
        }
        else
        {
            /* Turn on red LED. Close others. */
            set_rgb_led_color(100, 0, 0);
            printf("%s rx timeout.\n", print_role_str());
        }
    }
    /* slave send data. -----------------------------------------------*/
    else if (FRAME_MASTER_RECEIVE_DATA == lin0_State.currentId)
    {
        status = LIN_DRV_GetTransmitStatus(INST_LIN0, &byteRemain);
        if((status == STATUS_SUCCESS) && (0U == byteRemain))
        {
            /* Turn on green LED. Close others. */
            set_rgb_led_color(0, 50, 0);
            printf("%s tx data success.\n", print_role_str());
        }
        else
        {
            /* Turn on red LED. Close others. */
            set_rgb_led_color(100, 0, 0);
            printf("%s tx data fail.\n", print_role_str());
        }
    }
}

static void LinMsg_WakeupHandler(void)
{
    /* Turn on BLUE LED. Close others. */
    set_rgb_led_color(0, 0, 50);
    printf("%s WAKEUP.\n", print_role_str());
}

static void LinMsg_SleepHandler(void)
{
    /* Turn off all LEDs */
    set_rgb_led_color(0, 0, 0);
    printf("%s Sleeping...\n", print_role_str());
}

static void LinQue_MsgDispatch(LinQue_msg_t * RecvMsg)
{
    LinQue_msg_t * msg = (LinQue_msg_t *)RecvMsg;

    switch(msg->msg_id)
    {
        case MSG_WORKING:
            LinMsg_WorkingHandler();
            break;
        case MSG_WAKEUP:
            LinMsg_WakeupHandler();
            break;
        case MSG_SLEEP:
            LinMsg_SleepHandler();
            break;
        default:
            break;
    }
}

/*!
 * @brief Main LIN task
 * This function will initialize the LIN interface and set the scheme
 * to the normal table.
 * After the LIN network is initialized, the function will monitor
 * the Motor temperature and will turn LEDs on and off depending
 * on the retrieved temperature.
 */
void lin_task(void *pdata)
{
	printf("%s lin_drv_task\r\n", print_role_str());

    /* Lin driver initialization. */
    lin_driver_init();

    while(1)
    {
        LinQue_msg_t RecvMsg;

        if(xQueueReceive(LinQue_Handle, &RecvMsg, portMAX_DELAY) == pdPASS)
        {
            LinQue_MsgDispatch(&RecvMsg);
        }
    }
}

void lin_timeout_ns_timer_init(void)
{
#if (USE_ING918X)
    // 500 us timer
    // setup timer 1: 2khz
    SYSCTRL_ClearClkGateMulti((1 << LIN0_TMO_NS_TIMER_CLK_GATE));
    TMR_SetCMP(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_COMPARE_VAL);
    TMR_SetOpMode(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_OP_MODE_SEL);
    TMR_IntEnable(LIN0_TMO_NS_TIMER_SEL);
    TMR_Reload(LIN0_TMO_NS_TIMER_SEL);
    TMR_Enable(LIN0_TMO_NS_TIMER_SEL);
    platform_set_irq_callback(LIN0_TMO_NS_TIMER_IRQ_CB_SEL, timer_isr, NULL);
#else
    // 500 us timer
    // setup timer 1: 2khz
    SYSCTRL_ClearClkGateMulti((1 << LIN0_TMO_NS_TIMER_CLK_GATE));    
    TMR_SetOpMode(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID, LIN0_TMO_NS_TIMER_OP_MODE_SEL, LIN0_TMO_NS_TIMER_CLK_SEL, 0);
    TMR_SetReload(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID, LIN0_TMO_NS_TIMER_COMPARE_VAL);
    TMR_IntEnable(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID, LIN0_TMO_NS_TIMER_MASK);
    TMR_Enable(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID, LIN0_TMO_NS_TIMER_MASK);  
    platform_set_irq_callback(LIN0_TMO_NS_TIMER_IRQ_CB_SEL, timer_isr, NULL);
#endif
    return;
}

void lin_drv_task(void){

    setup_rgb_led();
    set_rgb_led_color(0, 0, 0);
    button_test_init();
    lin_timeout_ns_timer_init();

    LinQue_Handle = xQueueCreate( 32, sizeof(LinQue_msg_t));
    xTaskCreate(    lin_task, 
                    "lin_task", 
                    configMINIMAL_STACK_SIZE, 
                    NULL, 
                    1, 
                    NULL);
}
