#ifndef GPIO_HW_ACCESS_H__
#define GPIO_HW_ACCESS_H__

#include "ING91XXX.h"
#include "status.h"

/* Set gpio interrupt edge, 0:disable. */
typedef enum
{
    GI_DISABLE   = 0U,
    GI_RISE_EDGE = 1U,
    GI_FALL_EDGE = 2U,
}GPIO_SetEdge_t;

typedef void (*lin_uart_rx_gpio_irq_handler_t)(uint32_t instance);

/*!
* @brief Returns detecting egde polarity of generating interrupt.
*
* @param io_index 
* @return Rx edge polarity, reference struct: PIO_SetEdge_t
*/
static inline GPIO_SetEdge_t GPIO_GetGpioEdgePolarity(const GIO_Index_t io_index)
{
    volatile uint32_t *peg = ((__IO uint32_t *)(APB_GIO_BASE + 0x60)); // Rising edge enable register.
    volatile uint32_t *neg = ((__IO uint32_t *)(APB_GIO_BASE + 0x70)); // Falling edge enable register.    
    return (GPIO_SetEdge_t)(((((*peg) >> io_index)&0x1) | ((((*neg) >> io_index)&0x1)<<1U))&0x3);
}

/*!
* @brief Set detecting egde polarity of generating interrupt.
*
* @param  io_index 
* @param  edge: edge selection, edge = 0:disable.
* @return Rx edge polarity, reference struct: PIO_SetEdge_t
*/
static inline void GPIO_SetGpioEdgePolarity(const GIO_Index_t io_index, GPIO_SetEdge_t edge)
{
    volatile uint32_t *peg = ((__IO uint32_t *)(APB_GIO_BASE + 0x60)); // Rising edge enable register.
    volatile uint32_t *neg = ((__IO uint32_t *)(APB_GIO_BASE + 0x70)); // Falling edge enable register.
    
    /* Set rising edge */
    *peg = (*peg & (~(1U << io_index))) | ((edge&0x1) << io_index);
    *neg = (*neg & (~(1U << io_index))) | (((edge>>1)&0x1) << io_index);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : GPIO_GetStatusFlag
 *END**************************************************************************/
static inline bool GPIO_GetStatusFlag(const GIO_Index_t io_index)
{
    return GIO_GetIntStatus(io_index);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_ClearStatusFlag
 *END**************************************************************************/
static inline void GPIO_ClearStatusFlag(const GIO_Index_t io_index)
{
    GIO_ClearIntStatus(io_index);
}

/*!
* @brief Init uart gpio.
*
*/
void GPIO_ForUartInit(void);
void GPIO_ForUartRxIrqRegister(f_platform_irq_cb __handler);

#endif /* GPIO_HW_ACCESS_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/
