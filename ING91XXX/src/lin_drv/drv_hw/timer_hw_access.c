#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "timer_hw_access.h"
#include "ING91870CQ.h"
#ifdef USE_LIN_TIMER

#define LIN_TIMER_SEL               APB_TMR2
#define LIN_TIMER_TIMER_CLK_GATE    SYSCTRL_ClkGate_APB_TMR2
#define LIN_TIMER_IRQ_CB_SEL        PLATFORM_CB_IRQ_TIMER2
#define LIN_TIMER_OP_MODE_SEL       TMR_CTL_OP_MODE_ONESHOT
#define LIN_TIMER_DELAY_US(x)       (uint32_t)(TMR_CLK_FREQ / 1000000 * (x))

static LTI_Handler_t local_lin_timer_handler = NULL;

/*FUNCTION**********************************************************************
 *
 * Function Name : LIN_TIMER_IrqHandler
 * Description   : 
 *
 *END**************************************************************************/
uint32_t LIN_TIMER_IrqHandler(void *user_data)
{
    if (TMR_IntHappened(LIN_TIMER_SEL)){
        if(local_lin_timer_handler != NULL){
            local_lin_timer_handler(1U);
        }
        TMR_IntClr(LIN_TIMER_SEL);
    }
    return 0;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LIN_TIMER_Init
 * Description   : 
 *
 *END**************************************************************************/
void LIN_TIMER_Init(LTI_Handler_t __handler)
{
    SYSCTRL_ClearClkGateMulti((1 << LIN_TIMER_TIMER_CLK_GATE));
    TMR_Disable(LIN_TIMER_SEL);
    TMR_SetCMP(LIN_TIMER_SEL, 0xFFFFFFFF);
    TMR_SetOpMode(LIN_TIMER_SEL, LIN_TIMER_OP_MODE_SEL);
    TMR_IntEnable(LIN_TIMER_SEL);
    local_lin_timer_handler = __handler;
    platform_set_irq_callback(LIN_TIMER_IRQ_CB_SEL, LIN_TIMER_IrqHandler, NULL);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LIN_TIMER_Start
 * Description   : 
 *
 *END**************************************************************************/
void LIN_TIMER_Start(uint32_t tick_us)
{
    TMR_SetCMP(LIN_TIMER_SEL, LIN_TIMER_DELAY_US(tick_us));
    TMR_Reload(LIN_TIMER_SEL);
    TMR_Enable(LIN_TIMER_SEL);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LIN_TIMER_Stop
 * Description   : 
 *
 *END**************************************************************************/
void LIN_TIMER_Stop(void)
{
    TMR_Disable(LIN_TIMER_SEL);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LIN_TIMER_Stop
 * Description   : 
 *
 *END**************************************************************************/
#define bsTMR_CTL_TMR_EN    0   // Config timer to one-shot mode, this bit will auto clear when timeout.
bool LIN_TIMER_GetRunStatus(void)
{
    TMR_TypeDef *pTMR = (TMR_TypeDef *)LIN_TIMER_SEL;
    if (pTMR->CTL & (1 << bsTMR_CTL_TMR_EN))
        return true;
    return false;
}

#endif /* #if USE_LIN_TIMER */
/*******************************************************************************
 * EOF
 ******************************************************************************/
