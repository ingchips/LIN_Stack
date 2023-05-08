#ifndef __GPIO_IRQ_MANAGEMENT_H__
#define __GPIO_IRQ_MANAGEMENT_H__
#include <stdio.h>
#include <string.h>
#include <stdint.h>

typedef void (*gpio_irq_handler_t)(uint32_t interrupt_status);

/* API */
int  GPIO_IRQ_Management_add_handler(gpio_irq_handler_t __handler);
void GPIO_IRQ_Management_init(void);

#endif

