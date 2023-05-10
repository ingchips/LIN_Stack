#ifndef __LIN_USER_DEF_H__
#define __LIN_USER_DEF_H__

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "ingsoc.h"

#define USE_ING918X     (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)

/* User shoule not change here !!! */
#define LINR_SLAVE  0U
#define LINR_MASTER 1U

#define LOG_BY_UART0
//#define LOG_BY_RTT

/* RGB Led Control Gpio Selection */
/* Reference: 
    #define PIN_RGB_LED   GIO_GPIO_0
    board.c
    Project macro: BOARD_ID=BOARD_ING91881B_02_02_05, BOARD_USE_RGB_LED
*/

/* Uart0 gpio Selection */

#if (BOARD_ID == BOARD_ING91881B_02_02_05) //918xx
#define UART0_TX                             GIO_GPIO_2
#define UART0_RX                             GIO_GPIO_3
#elif (BOARD_ID == BOARD_DB72C8K1A) //916xx
#define UART0_TX                             GIO_GPIO_1
#define UART0_RX                             GIO_GPIO_2
#endif

/* Button Gpio Selection */
#if (BOARD_ID == BOARD_ING91881B_02_02_05) //918xx
#define USER_BUTTON_2                        GIO_GPIO_5
#define USER_BUTTON_3                        GIO_GPIO_7
#elif (BOARD_ID == BOARD_DB72C8K1A) //916xx
#define USER_BUTTON_2                        GIO_GPIO_10
#define USER_BUTTON_3                        GIO_GPIO_12
#endif


/* Timer Selection */
#if (USE_ING918X)
#define LIN0_TMO_NS_TIMER_SEL                APB_TMR1
#define LIN0_TMO_NS_TIMER_CLK_GATE           SYSCTRL_ClkGate_APB_TMR1
#define LIN0_TMO_NS_TIMER_IRQ_CB_SEL         PLATFORM_CB_IRQ_TIMER1
#define LIN0_TMO_NS_TIMER_OP_MODE_SEL        TMR_CTL_OP_MODE_WRAPPING
#else
#define LIN0_TMO_NS_TIMER_SEL                APB_TMR1
#define LIN0_TMO_NS_TIMER_CLK_GATE           SYSCTRL_ClkGate_APB_TMR1
#define LIN0_TMO_NS_TIMER_IRQ_CB_SEL         PLATFORM_CB_IRQ_TIMER1
#define LIN0_TMO_NS_TIMER_OP_MODE_SEL        TMR_CTL_OP_MODE_32BIT_TIMER_x1
#define LIN0_TMO_NS_TIMER_CLK_SEL            TMR_CLK_MODE_APB
#define LIN0_TMO_NS_TIMER_CH_ID              (uint8_t)(0U)
#define LIN0_TMO_NS_TIMER_NUM                (uint8_t)(1U) /* 0U=APB_TMR1, 1U=APB_TMR1, 2U=APB_TMR2 */
#define LIN0_TMO_NS_TIMER_MASK               (uint8_t)(1U << LIN0_TMO_NS_TIMER_NUM)
#define TMR_CLK_FREQ                         (TMR_GetClk(LIN0_TMO_NS_TIMER_SEL, LIN0_TMO_NS_TIMER_CH_ID))
#endif

#define LIN0_TMO_NS_TIMER_DUTY_US            (uint32_t)(500)  /* 500 us */
#define LIN0_TMO_NS_TIMER_FREQ_HZ            (uint32_t)(1000000/LIN0_TMO_NS_TIMER_DUTY_US) /* 2khz */
#define LIN0_TMO_NS_TIMER_COMPARE_VAL        (uint32_t)(TMR_CLK_FREQ / LIN0_TMO_NS_TIMER_FREQ_HZ) /* Ticks in 500us */
#define LIN0_TMO_NS_TIMER_TICKS_1US          (uint32_t)(LIN0_TMO_NS_TIMER_COMPARE_VAL/LIN0_TMO_NS_TIMER_DUTY_US) /* Ticks in 1us */


/* Uart Gpio Selection */
#if (BOARD_ID == BOARD_ING91881B_02_02_05) //918xx
#define LIN0_UART_IO_TX                      GIO_GPIO_16
#define LIN0_UART_IO_RX                      GIO_GPIO_19
#elif (BOARD_ID == BOARD_DB72C8K1A) //916xx
#define LIN0_UART_IO_TX                      GIO_GPIO_17
#define LIN0_UART_IO_RX                      GIO_GPIO_18
#endif
#define LIN0_UART_PORT_SEL                   UART_PORT_1
#define LIN0_UART_IO_TX_SRC_SEL              IO_SOURCE_UART1_TXD
#define LIN0_UART_CLK_GATE                   SYSCTRL_ClkGate_APB_UART1
#define LIN0_UART_BAUDRATE                   9600UL
#define LIN0_ROLE                            LINR_MASTER    /* ROLE */
#define LIN0_AUTO_BAUD_EN                    false          /* Only master can enable. */


/* Break style selection. */
#define BREAK_WITH_UART   0U /* Send break with UART break. */
#define BREAK_WITH_IO     1U /* Send break with IO toggle and timer interrupt. */
/* Break style selection. */
#define LIN_BREAK_STYLE_SEL             (BREAK_WITH_UART)  /* master or slave can use different style. */


#endif /* __LIN_USER_DEF_H__ */

