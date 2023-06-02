#ifndef IRQ_HW_ACCESS_H__
#define IRQ_HW_ACCESS_H__

#include "ING91XXX.h"
#include "status.h"


void INT_SYS_InstallHandler_And_EnableIRQ(Lin_IRQn_Type irqNumber, const lin_isr_t Handler);
void INT_SYS_DisableIRQ(Lin_IRQn_Type irqNumber);


#endif /* IRQ_HW_ACCESS_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/
