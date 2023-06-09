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
#include "lin_stack_task.h"
#include "lin_user_def.h"
#include "queue.h"

#include "lin_common_api.h"

/* Motor. */
#define MOTOR_SELECTION_INCREASE (1u)
#define MOTOR_SELECTION_DECREASE (2u)
#define MOTOR_SELECTION_STOP     (3u)

#define MOTOR1_OVER_TEMP   (200u)
#define MOTOR1_MAX_TEMP    (100u)
#define MOTOR1_MIN_TEMP    (30u)

volatile uint16_t capturedValue = 0U;
volatile bool linEnabled = false;
uint8_t Motor1_Selection = 0U;
uint8_t Motor1_temp = 30U;

/* LIN Queue. */
#define MSG_WORKING  (0x01)
#define MSG_SLEEP    (0x02)

xQueueHandle LinQue_Handle;
typedef struct LinQue_msg
{
    uint32_t        msg_id;
    uint32_t        length;
    const void      *param;
}LinQue_msg_t;

/* variable */
uint16_t timerOverflowInterruptCount = 0U;
bool linWorkingCheckRestartFlag = true;
bool linSleepCheckRestartFlag = true;

/* Function declaration. */
static int LinQue_SendMsg(uint32_t msg_id, const void *param, uint32_t length);

/* LED Control. */
#define RED_ON_ONLY         (1U)
#define GREEN_ON_ONLY       (2U)
#define BLUE_ON_ONLY        (3U)
#define TOGGLE_RED          (4U)
#define ALL_OFF             (5U)

/* LED Control. */
static void LED_Control(uint8_t type){
    static bool is_red_on = false;
    switch(type)
    {
        case RED_ON_ONLY:
            set_rgb_led_color(50, 0, 0);
            is_red_on = true;
            break;
        case GREEN_ON_ONLY:
            set_rgb_led_color(0, 50, 0);
            is_red_on = false;
            break;
        case BLUE_ON_ONLY:
            set_rgb_led_color(0, 0, 50);
            is_red_on = false;
            break;
        case TOGGLE_RED:
            if(is_red_on){
                set_rgb_led_color(0, 0, 0);
                is_red_on = false;
            } else {
                set_rgb_led_color(50, 0, 0);
                is_red_on = true;
            }
            break;
        case ALL_OFF:
            set_rgb_led_color(0, 0, 0);
            is_red_on = false;
            break;
        default:
            break;
    }
}

/*!
 * @brief printf role string.
 */
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
 * and will provide the required tick for LIN (every 5 ms)
 */
uint32_t timer_isr(void *user_data)
{
    /* Static variable, used to count if the timeout has passed to
     * provide the LIN scheme tick.
     */
    static uint32_t interruptCount = 0UL;
    /* Timer Interrupt Handler */
    lin_lld_timeout_service(LI0);

    /* Update motor temperature every 0.1s, based on the 
     * motor speed trend. 
     */
    if (++interruptCount >= 200u)
    {
        interruptCount = 0u;

        /* Increase temp */
        if (Motor1_Selection == MOTOR_SELECTION_INCREASE)
        {
            Motor1_temp++;
        }
        /* Decrease temp */
        else if (Motor1_Selection == MOTOR_SELECTION_DECREASE)
        {
            Motor1_temp--;
        }
    }

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
    
    /* If Button 2 is pressed */
    if (num == KEY_VALUE_2)
    {
        printf("add 60 units.\n");
        if (Motor1_temp < 255U)
        {
            Motor1_temp += 60U;
        }
    }

    /* If Button 3 is pressed */
    if (num == KEY_VALUE_3)
    {
        Motor1_temp = 30U;
        printf("set 30 units.\n");
    }
}

/**
 * @brief linMsg_WorkingRunLoop
 */
static void linMsg_WorkingRunLoop(void)
{
    /* Check if temp signal is updated */
    if (l_flg_tst_LI0_Motor1Selection_flag())
    {
        /* Clear this flag... */
        l_flg_clr_LI0_Motor1Selection_flag();

        /* Store selection data */
        Motor1_Selection = l_u8_rd_LI0_Motor1Selection();

        /* The application will change Motor selection in case
        the temperature is greater than maximum value to release motor power
        This will be transfered by unconditional frame type in LIN bus */
        l_u8_wr_LI0_Motor1Temp(Motor1_temp);

        /* Check if power off motor due to high temperature */
        if (Motor1_Selection == MOTOR_SELECTION_STOP)
        {
            /* Turn on Red LED */
            LED_Control(RED_ON_ONLY);
        }

        if (Motor1_Selection == MOTOR_SELECTION_INCREASE)
        {
            /* Turn on Green LED */
            LED_Control(GREEN_ON_ONLY);
        }

        if (Motor1_Selection == MOTOR_SELECTION_DECREASE)
        {
            /* Turn on Blue LED */
            LED_Control(BLUE_ON_ONLY);
        }
    }
}

/**
 * @brief linMsg_SleepRunLoop
 */
static void linMsg_SleepRunLoop(void)
{
    /* Check node state */
    if (LIN_NODE_STATE_SLEEP_MODE == lin_lld_get_state(LI0))
    {
        /* Turn off all LEDs */
        LED_Control(ALL_OFF);
    }
}

/*!
 * @brief LinQue_MsgDispatch
 */
static void LinQue_MsgDispatch(LinQue_msg_t * RecvMsg)
{
    LinQue_msg_t * msg = (LinQue_msg_t *)RecvMsg;

    switch(msg->msg_id)
    {
        case MSG_WORKING:
            linMsg_WorkingRunLoop();
            if (linWorkingCheckRestartFlag){
                LinQue_SendMsg(MSG_WORKING, NULL, 0);
            }
            break;
        case MSG_SLEEP:
            linMsg_SleepRunLoop();
            if (linSleepCheckRestartFlag){
                LinQue_SendMsg(MSG_SLEEP, NULL, 0);
            }
            break;
        default:
            break;
    }
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

/*!
 * @brief lin_stack_init
 */
static void lin_stack_init(void)
{
    __disable_irq();
    
    /* Initialize LIN network interface */
    l_sys_init();
    l_ifc_init(LI0);
    linEnabled = true;
    
    __enable_irq();
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
	printf("LIN Stack: %s\r\n", print_role_str());

    /* Lin stack initialization. */
    lin_stack_init();

    /* Lin Run loop start. */
    linWorkingCheckRestartFlag = true;
    LinQue_SendMsg(MSG_WORKING, NULL, 0);
    linSleepCheckRestartFlag = true;
    LinQue_SendMsg(MSG_SLEEP, NULL, 0);

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

void lin_stack_task(void){

    setup_rgb_led();
    LED_Control(ALL_OFF);
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
