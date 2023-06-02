#include "irq_hw_access.h"
#include "stdlib.h"

void INT_SYS_InstallHandler_And_EnableIRQ(Lin_IRQn_Type irqNumber, const lin_isr_t Handler)
{
    platform_set_irq_callback(irqNumber, Handler, NULL);
}

void INT_SYS_DisableIRQ(Lin_IRQn_Type irqNumber)
{
    platform_set_irq_callback(irqNumber, NULL, NULL);
}

