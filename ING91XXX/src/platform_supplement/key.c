#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "platform_api.h"
#include "main.h"
#include "lin_user_def.h"
#include "key.h"
#ifdef LIN_DRIVER_TASK
#include "lin_driver_task.h"
#else
#include "lin_stack_task.h"
#endif
#include "gpio_irq_management.h"

static void key_pressed_callback(uint32_t num){
    btstack_push_user_msg(USER_MSG_ID_KEY_PRESSED_EVENT, NULL, (uint32_t)num);
}

static void key_released_callback(uint32_t num){
    btstack_push_user_msg(USER_MSG_ID_KEY_RELEASED_EVENT, NULL, (uint32_t)num);
}

static void kb_state_changed(uint16_t key_state)
{
    static uint32_t key_pressed[4] = {1,2,4,8};
    static uint32_t key_old[4] = {0,0,0,0};
    uint32_t flag = 0;
    uint16_t i=0;
    for(i=0; i<4; i++){
        if(key_state & key_pressed[i]){
            if(!key_old[i]){
                key_old[i] = 1;
                // key pressed callback.
                flag = i+1;
                key_pressed_callback(flag);
            }
        } else {
            if(key_old[i]){
                key_old[i] = 0;
                // key released callback.
                flag = i+1;                
                key_released_callback(flag);
            }
        }
    }
}

static void key_gpio_isr(uint32_t interrupt_status)
{
    if( (interrupt_status & (1 << USER_BUTTON_2)) == 0 &&
        (interrupt_status & (1 << USER_BUTTON_3)) == 0 ){
        return;
    }
    
    uint32_t current_level = ~GIO_ReadAll();
    uint16_t v = 0; // low level.
    // report which keys are pressed
    if (current_level & (1 << USER_BUTTON_2)) // high level.
        v |= 2;
    if (current_level & (1 << USER_BUTTON_3))
        v |= 4;
    kb_state_changed(v);
}


void button_msg_handler(btstack_user_msg_t * usrmsg)
{
    uint32_t id = usrmsg->msg_id;
    uint32_t num = usrmsg->len;
    switch(id)
    {
        case USER_MSG_ID_KEY_PRESSED_EVENT:
            BTNPORT_Handler(num);
            break;
         
        case USER_MSG_ID_KEY_RELEASED_EVENT:
            break;
        default:
            break;      
    }
   
}

void button_test_init(void)
{
    
    SYSCTRL_ClearClkGateMulti(  
                            (1 << SYSCTRL_ClkGate_APB_GPIO0) |
                            (1 << SYSCTRL_ClkGate_APB_GPIO1) |
                            (1 << SYSCTRL_ClkGate_APB_PinCtrl)
                            );
    PINCTRL_SetPadMux(USER_BUTTON_2, IO_SOURCE_GPIO);
    PINCTRL_SetPadMux(USER_BUTTON_3, IO_SOURCE_GPIO);
    GIO_SetDirection(USER_BUTTON_2, GIO_DIR_INPUT);
    GIO_SetDirection(USER_BUTTON_3, GIO_DIR_INPUT);
    PINCTRL_Pull(USER_BUTTON_2, PINCTRL_PULL_UP);
    PINCTRL_Pull(USER_BUTTON_3, PINCTRL_PULL_UP);
    GIO_ConfigIntSource(USER_BUTTON_2, GIO_INT_EN_LOGIC_LOW_OR_FALLING_EDGE | GIO_INT_EN_LOGIC_HIGH_OR_RISING_EDGE, GIO_INT_EDGE);
    GIO_ConfigIntSource(USER_BUTTON_3, GIO_INT_EN_LOGIC_LOW_OR_FALLING_EDGE | GIO_INT_EN_LOGIC_HIGH_OR_RISING_EDGE, GIO_INT_EDGE);
    GPIO_IRQ_Management_add_handler(key_gpio_isr);

}

