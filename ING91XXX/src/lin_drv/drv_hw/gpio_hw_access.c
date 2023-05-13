#include "gpio_hw_access.h"
#include "lin_user_def.h"
#include "gpio_irq_management.h"

static f_platform_irq_cb lin_uart_rx_gpio_irq_handler = NULL;

/*FUNCTION**********************************************************************
 *
 * Function Name : gpio_isr_for_uart_rx
 * Description   : 
 *
 *END**************************************************************************/
static void gpio_isr_for_uart_rx(uint32_t interrupt_status)
{
    /* check if rx gpio interrupt. */
    if (!(interrupt_status & (1 << LIN0_UART_IO_RX)))
        return;
    
    if (lin_uart_rx_gpio_irq_handler != NULL)
    {
        lin_uart_rx_gpio_irq_handler(NULL);
    }
}

/*FUNCTION**********************************************************************
 *
 * Function Name : GPIO_ForUartRxIrqRegister
 * Description   : 
 *
 *END**************************************************************************/
void GPIO_ForUartRxIrqRegister(f_platform_irq_cb __handler)
{
    lin_uart_rx_gpio_irq_handler = __handler;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : GPIO_ForUartInit
 * Description   : 
 *
 *END**************************************************************************/
void GPIO_ForUartInit(void)
{
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_GPIO0);
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_GPIO1);
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_PinCtrl);
    SYSCTRL_ClearClkGateMulti(1 << LIN0_UART_CLK_GATE);

    /* UART TX gpio config. */
#if (USE_ING918X)
//    PINCTRL_SetPadPwmSel(LIN0_UART_IO_TX, 0);
    PINCTRL_SetGeneralPadMode(LIN0_UART_IO_TX, IO_MODE_GPIO, 0, 0);
#endif
    PINCTRL_SetPadMux(LIN0_UART_IO_TX, LIN0_UART_IO_TX_SRC_SEL);
    GIO_SetDirection(LIN0_UART_IO_TX, GIO_DIR_OUTPUT);
    PINCTRL_Pull(LIN0_UART_IO_TX, PINCTRL_PULL_UP);
    
    /* UART RX gpio config. */
#if (USE_ING918X)
//    PINCTRL_SetPadPwmSel(LIN0_UART_IO_RX, 0);
    PINCTRL_SetGeneralPadMode(LIN0_UART_IO_RX, IO_MODE_GPIO, 0, 0);
#endif
    PINCTRL_SetPadMux(LIN0_UART_IO_RX, IO_SOURCE_GPIO);
    GIO_SetDirection(LIN0_UART_IO_RX, GIO_DIR_INPUT);
    PINCTRL_Pull(LIN0_UART_IO_RX, PINCTRL_PULL_UP);
    PINCTRL_SelUartRxdIn(LIN0_UART_PORT_SEL, LIN0_UART_IO_RX); // Connect uart rx to a gpio.
    
    GPIO_IRQ_Management_add_handler(gpio_isr_for_uart_rx);
}



#if (USE_ING918X)

inline GPIO_SetEdge_t GPIO_GetGpioEdgePolarity(const GIO_Index_t io_index)
{
    volatile uint32_t *peg = GPIO_PE; // Rising edge enable register.
    volatile uint32_t *neg = GPIO_NE; // Falling edge enable register.    
    return (GPIO_SetEdge_t)(((((*peg) >> io_index)&0x1) | ((((*neg) >> io_index)&0x1)<<1U))&0x3);
}

inline void GPIO_SetGpioEdgePolarity(const GIO_Index_t io_index, GPIO_SetEdge_t edge)
{
    volatile uint32_t *peg = GPIO_PE; // Rising edge enable register.
    volatile uint32_t *neg = GPIO_NE; // Falling edge enable register.
    
    /* Set rising edge */
    *peg = (*peg & (~(1U << io_index))) | ((edge&0x1) << io_index);
    *neg = (*neg & (~(1U << io_index))) | (((edge>>1)&0x1) << io_index);
}

#else

#define START_OF_GPIO1          GIO_GPIO_21
#define MASK_GPIO0_BITS         ((1 << 21) - 1)

#define DEF_GIO_AND_PIN(io_index)       GIO_TypeDef *pDef = io_index >= START_OF_GPIO1 ? APB_GPIO1 : APB_GPIO0; int index = io_index >= START_OF_GPIO1 ? io_index - START_OF_GPIO1 : io_index;

GPIO_SetEdge_t GPIO_GetGpioEdgePolarity(const GIO_Index_t io_index)
{
    GPIO_SetEdge_t edge;
    DEF_GIO_AND_PIN(io_index);
    int reg_index = index / 8;
    int offset = (index & 0x7) * 4;
    uint8_t int_mode = ((pDef->IntMod[reg_index] >> offset) & 0x7);
    switch(int_mode)
    {
        case 5:
            edge = GI_FALL_EDGE;
            break;
        case 6:
            edge = GI_RISE_EDGE;
            break;
        default:
            edge = GI_DISABLE;
            break;
    }
    return edge;
}

void GPIO_SetGpioEdgePolarity(const GIO_Index_t io_index, GPIO_SetEdge_t edge)
{
    uint8_t int_mode;
    DEF_GIO_AND_PIN(io_index);
    switch(edge)
    {
        case GI_FALL_EDGE:
            int_mode = 5;
            break;
        case GI_RISE_EDGE:
            int_mode = 6;
            break;
        default:
            int_mode = 0;
            break;
    }
    int reg_index = index / 8;
    int offset = (index & 0x7) * 4;
    pDef->IntMod[reg_index] &= ~(0x7 << offset);
    pDef->IntMod[reg_index] |= int_mode << offset;
}

#endif











