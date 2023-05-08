#ifndef TIMER_HW_ACCESS_H__
#define TIMER_HW_ACCESS_H__
#include "ING91870CQ.h"
#ifdef USE_LIN_TIMER

typedef void (*LTI_Handler_t)(uint32_t);

/* API */
void LIN_TIMER_Init(LTI_Handler_t __handler);
void LIN_TIMER_Start(uint32_t tick_us);
void LIN_TIMER_Stop(void);
bool LIN_TIMER_GetRunStatus(void);


#endif /* USE_LIN_TIMER */
#endif /* TIMER_HW_ACCESS_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/
