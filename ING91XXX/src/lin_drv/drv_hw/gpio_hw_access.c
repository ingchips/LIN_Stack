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
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_GPIO);
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_PinCtrl);
    SYSCTRL_ClearClkGateMulti(1 << LIN0_UART_CLK_GATE);

    /* UART TX gpio config. */
    PINCTRL_SetPadPwmSel(LIN0_UART_IO_TX, 0);
    PINCTRL_SetPadMux(LIN0_UART_IO_TX, LIN0_UART_IO_TX_SRC_SEL);
    GIO_SetDirection(LIN0_UART_IO_TX, GIO_DIR_OUTPUT);
    PINCTRL_Pull(LIN0_UART_IO_TX, PINCTRL_PULL_UP);
    
    /* UART RX gpio config. */
    PINCTRL_SetPadPwmSel(LIN0_UART_IO_RX, 0);
    PINCTRL_SetPadMux(LIN0_UART_IO_RX, IO_SOURCE_GPIO);
    GIO_SetDirection(LIN0_UART_IO_RX, GIO_DIR_INPUT);
    PINCTRL_Pull(LIN0_UART_IO_RX, PINCTRL_PULL_UP);
    PINCTRL_SelUartRxdIn(LIN0_UART_PORT_SEL, LIN0_UART_IO_RX); // Connect uart rx to a gpio.
    
    GPIO_IRQ_Management_add_handler(gpio_isr_for_uart_rx);
}















