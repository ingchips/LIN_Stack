#include "gpio_irq_management.h"
#include "platform_api.h"
#include "peripheral_gpio.h"


#define MAX_GPIO_HANDLER_NUM    5U
typedef struct {
    gpio_irq_handler_t handler[MAX_GPIO_HANDLER_NUM];
    uint16_t count;
} gpioHandle_t;
static gpioHandle_t gpioHandle;

/* gpio_isr */
static uint32_t gpio_isr(void *user_data)
{
    uint16_t i;
    uint32_t intStatus = GIO_GetAllIntStatus();

    /* Call gpio handler. */
    for(i=0; i<MAX_GPIO_HANDLER_NUM; i++){
        if (gpioHandle.handler[i] != NULL){
            gpioHandle.handler[i](intStatus);
        } else {
            break;
        }
    }

    /* Clear status. Note: It must behind of the handler. */
    GIO_ClearAllIntStatus();
    
    return 0;
}

/* clearAllHandler */
static void clearAllHandler(void)
{
    uint16_t i;
    for(i=0; i<MAX_GPIO_HANDLER_NUM; i++){
        gpioHandle.handler[i] = NULL;
    }
    gpioHandle.count = 0;
}

/* GPIO_IRQ_Management_add_handler */
int GPIO_IRQ_Management_add_handler(gpio_irq_handler_t __handler)
{
    /* Check param. */
    if(__handler == NULL){
        return -1; // param error.
    }
    
    /* Check if handler is already exist. */
    uint16_t i;
    for(i=0; i<gpioHandle.count; i++){
        if( NULL == gpioHandle.handler[i])
            break; // no more.
        if( __handler == gpioHandle.handler[i]){
            return 1; // already exist.
        }
    }
    
    /* Check queue size. */
    if (gpioHandle.count >= MAX_GPIO_HANDLER_NUM){
        return -2;// queue full.
    }
    
    /* Add the handler. */
    gpioHandle.handler[gpioHandle.count++] = __handler;
    
    return 0; // add ok.
}

/* GPIO_IRQ_Management_init */
void GPIO_IRQ_Management_init(void)
{
    clearAllHandler();
    platform_set_irq_callback(PLATFORM_CB_IRQ_GPIO, gpio_isr, NULL);
}
