#ifndef LIN_IRQ_H
#define LIN_IRQ_H

/*******************************************************************************
 * Includes
 ******************************************************************************/
#include <stdbool.h>
#include <stddef.h>
#include "status.h"
#include "ING91870CQ.h"


/* Table to save ISR pointers for LPUART instances */
extern lin_isr_t g_linLpuartIsrs[LPUART_INSTANCE_COUNT];
extern lin_isr_t g_linGpioIsrs[LPUART_INSTANCE_COUNT];

#endif
