/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "lin_driver.h"

/*******************************************************************************
 * Code
 ******************************************************************************/
#if (LPUART_INSTANCE_COUNT > 0U)
static uint32_t LIN_LPUART0_RxTx_IRQHandler(void *user_data)
{
    LIN_DRV_IRQHandler(0U);
    return 0;
}
#endif /* if (LPUART_INSTANCE_COUNT > 0U) */

#if (LPUART_INSTANCE_COUNT > 1U)
static uint32_t LIN_LPUART1_RxTx_IRQHandler(void *user_data)
{
    LIN_DRV_IRQHandler(1U);
    return 0;
}
#endif /* if (LPUART_INSTANCE_COUNT > 1U) */

#if (LPUART_INSTANCE_COUNT > 0U)
static uint32_t LIN_LPUART0_GPIO_IRQHandler(void *user_data)
{
    LIN_DRV_GPIO_IRQHandler(0U);
    return 0;
}
#endif /* if (LPUART_INSTANCE_COUNT > 0U) */

#if (LPUART_INSTANCE_COUNT > 1U)
static uint32_t LIN_LPUART1_GPIO_IRQHandler(void *user_data)
{
    LIN_DRV_GPIO_IRQHandler(1U);
    return 0;
}
#endif /* if (LPUART_INSTANCE_COUNT > 1U) */


/* ISR array for Lin LPUART driver */
lin_isr_t g_linLpuartIsrs[LPUART_INSTANCE_COUNT] =
{
#if (LPUART_INSTANCE_COUNT > 0U)
    LIN_LPUART0_RxTx_IRQHandler,
#endif
#if (LPUART_INSTANCE_COUNT > 1U)
    LIN_LPUART1_RxTx_IRQHandler,
#endif
};

/* ISR array for Lin GPIO driver */
lin_isr_t g_linGpioIsrs[LPUART_INSTANCE_COUNT] =
{
#if (LPUART_INSTANCE_COUNT > 0U)
    LIN_LPUART0_GPIO_IRQHandler,
#endif
#if (LPUART_INSTANCE_COUNT > 1U)
    LIN_LPUART1_GPIO_IRQHandler,
#endif
};

/******************************************************************************/
/* EOF */
/******************************************************************************/
