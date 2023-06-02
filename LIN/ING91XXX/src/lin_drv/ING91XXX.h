
#ifndef __ING91XXX_H__
#define __ING91XXX_H__

#include <stdint.h>
#include "stdbool.h"
#include "peripheral_uart.h"
#include "platform_api.h"
#include "stdio.h"
#include "lin_user_def.h"

typedef enum {

    /* Main clocks */
    CORE_CLK                     = 0u,       /*!< Core clock                     */

    /* Other internal clocks used by peripherals. */
    LPTMR0_CLK                   = 72u,      /*!< LPTMR0 clock source            */
    LPUART0_CLK                  = 73u,      /*!< LPUART0 clock source           */
    LPUART1_CLK                  = 74u,      /*!< LPUART1 clock source           */
} clock_names_t;

typedef enum
{
   LPUART_INT_LIN_BREAK_DETECT  , /*!< LIN break detect. */
   LPUART_INT_RX_ACTIVE_EDGE    , /*!< RX Active Edge. */
   LPUART_INT_TX_DATA_REG_EMPTY , /*!< Transmit data register empty. */
   LPUART_INT_TX_COMPLETE       , /*!< Transmission complete. */
   LPUART_INT_RX_DATA_REG_FULL  , /*!< Receiver data register full. */
   LPUART_INT_IDLE_LINE         , /*!< Idle line. */
   LPUART_INT_RX_OVERRUN        , /*!< Receiver Overrun. */
   LPUART_INT_NOISE_ERR_FLAG    , /*!< Noise error flag. */
   LPUART_INT_FRAME_ERR_FLAG    , /*!< Framing error flag. */
   LPUART_INT_PARITY_ERR_FLAG   , /*!< Parity error flag. */
   LPUART_INT_MATCH_ADDR_ONE    , /*!< Match address one flag. */
   LPUART_INT_MATCH_ADDR_TWO    , /*!< Match address two flag. */
   LPUART_INT_FIFO_TXOF         , /*!< Transmitter FIFO buffer interrupt */
   LPUART_INT_FIFO_RXUF         , /*!< Receiver FIFO buffer interrupt */
} lpuart_interrupt_t;

typedef enum
{
   LPUART_TX_DATA_REG_EMPTY          , /*!< Tx data register empty flag, sets when Tx buffer is empty */
   LPUART_TX_COMPLETE                , /*!< Transmission complete flag, sets when transmission activity complete */
   LPUART_RX_DATA_REG_FULL           , /*!< Rx data register full flag, sets when the receive data buffer is full */
   LPUART_IDLE_LINE_DETECT           , /*!< Idle line detect flag, sets when idle line detected */
   LPUART_RX_OVERRUN                 , /*!< Rx Overrun sets if new data is received before data is read */
   LPUART_NOISE_DETECT               , /*!< Rx takes 3 samples of each received bit. If these differ, the flag sets */
   LPUART_FRAME_ERR                  , /*!< Frame error flag, sets if logic 0 was detected where stop bit expected */
   LPUART_PARITY_ERR                 , /*!< If parity enabled, sets upon parity error detection */
   LPUART_LIN_BREAK_DETECT           , /*!< LIN break detect interrupt flag, sets when LIN break char detected */
   LPUART_RX_ACTIVE_EDGE_DETECT      , /*!< Rx pin active edge interrupt flag, sets when active edge detected */
   LPUART_RX_ACTIVE                  , /*!< Receiver Active Flag (RAF), sets at beginning of valid start bit */
   LPUART_NOISE_IN_CURRENT_WORD      , /*!< NOISY bit, sets if noise detected in current data word */
   LPUART_PARITY_ERR_IN_CURRENT_WORD , /*!< PARITYE bit, sets if noise detected in current data word */
   LPUART_MATCH_ADDR_ONE             , /*!< Address one match flag */
   LPUART_MATCH_ADDR_TWO             , /*!< Address two match flag */
   LPUART_FIFO_TX_OF                 , /*!< Transmitter FIFO buffer overflow */
   LPUART_FIFO_RX_UF                 , /*!< Receiver FIFO buffer underflow */
} lpuart_status_flag_t;


typedef enum
{
    LPUART_BREAK_CHAR_10_BIT = 10U, /*!< LPUART break char length 10 bit times (if start=1, data=8, parity=0, stop=1) */
    LPUART_BREAK_CHAR_11_BIT = 11U, /*!< LPUART break char length 11 bit times (if start=1, data=8, parity=1, stop=1) */
    LPUART_BREAK_CHAR_12_BIT = 12U, /*!< LPUART break char length 12 bit times (if start=1, data=8, parity=1, stop=2) */
    
    LPUART_BREAK_CHAR_13_BIT = 13U, /*!< LPUART break char length 13 bit times (if start=1, data=8, parity=1, stop=2) + 1bit delay  */
    LPUART_BREAK_CHAR_14_BIT = 14U, /*!< LPUART break char length 14 bit times (if start=1, data=8, parity=1, stop=2) + 2bit delay  */
    LPUART_BREAK_CHAR_15_BIT = 15U, /*!< LPUART break char length 15 bit times (if start=1, data=8, parity=1, stop=2) + 3bit delay  */
    
    LPUART_BREAK_CHAR_MAX_BIT,
    
} lpuart_break_char_length_t;

#if (LIN_BREAK_STYLE_SEL != BREAK_WITH_IO) && (LIN_BREAK_STYLE_SEL != BREAK_WITH_UART)
#error "LIN_BREAK_STYLE_SEL must be BREAK_WITH_UART or BREAK_WITH_IO ."
#endif
#if ((LIN_BREAK_STYLE_SEL == BREAK_WITH_IO) && (LIN0_ROLE == LINR_MASTER))
#define USE_LIN_TIMER /* Master must enable it. */
#define LIN_USE_GPIO_TMR_FOR_BREAK
#elif ((LIN_BREAK_STYLE_SEL == BREAK_WITH_IO) && (LIN0_ROLE == LINR_SLAVE))
//#define USE_LIN_TIMER /* Slave can disable it to use platform_get_us_time(). */
#define LIN_USE_GPIO_TMR_FOR_BREAK
#endif


/* Set master detect break length. Master support 10~15bits */
#define LIN_MASTER_SEND_AND_DETECT_BREAK_LENGTH     (LPUART_BREAK_CHAR_13_BIT) // For master.
/* Set slave detect break length. Slave support 10~12bits */
#define LIN_SLAVE_DETECT_BREAK_LENGTH               (LPUART_BREAK_CHAR_11_BIT) // For slave

/* Set the additional delay numbler of bits (unit=0.1bit). */
// For master.
#define LIN_MASTER_INTVL_BREAK_AND_SYNC          (0) /* Master delay between BREAK and SYNC,    Unit: 0.1bit, So delayBits = (0.1 * VALUE). */
#define LIN_MASTER_INTVL_SYNC_AND_PID            (0) /* Master delay between SYNC and PID,      Unit: 0.1bit, So delayBits = (0.1 * VALUE). */
#define LIN_MASTER_INTVL_PID_AND_DATA            (0) /* Master delay between PID and DATA,      Unit: 0.1bit, So delayBits = (0.1 * VALUE). */
#define LIN_MASTER_INTVL_DATA_AND_DATA           (0) /* Master delay between DATA and DATA,     Unit: 0.1bit, So delayBits = (0.1 * VALUE). */
#define LIN_MASTER_INTVL_DATA_AND_CHECKSUM       (0) /* Master delay between DATA and CHECKSUM, Unit: 0.1bit, So delayBits = (0.1 * VALUE). */
// For slave.
#define LIN_SLAVE_INTVL_DATA_AND_DATA            (0) /* Master delay between DATA and DATA,     Unit: 0.1bit, So delayBits = (0.1 * VALUE). */
#define LIN_SLAVE_INTVL_DATA_AND_CHECKSUM        (0) /* Master delay between DATA and CHECKSUM, Unit: 0.1bit, So delayBits = (0.1 * VALUE). */

/* defines. */
typedef UART_TypeDef LPUART_Type;

#define LPUART_INSTANCE_COUNT                    (1u)

#define LPUART0                                  APB_UART0
#define LPUART1                                  APB_UART1

#if (USE_ING918X)
#define UART0_CLK                                OSC_CLK_FREQ
#define UART1_CLK                                OSC_CLK_FREQ
#define SYSCTRL_Reset_APB_UART0                  SYSCTRL_Reset_APB_SCI0
#define SYSCTRL_Reset_APB_UART1                  SYSCTRL_Reset_APB_SCI1
#else
#define UART0_CLK                                SYSCTRL_GetClk(SYSCTRL_ITEM_APB_UART0)
#define UART1_CLK                                SYSCTRL_GetClk(SYSCTRL_ITEM_APB_UART1)
#define SYSCTRL_Reset_APB_UART0                  SYSCTRL_ITEM_APB_UART0
#define SYSCTRL_Reset_APB_UART1                  SYSCTRL_ITEM_APB_UART1
#endif

#define UART0_IRQ                                PLATFORM_CB_IRQ_UART0
#define UART1_IRQ                                PLATFORM_CB_IRQ_UART1
#define Lin_IRQn_Type                            platform_irq_callback_type_t
#define lin_isr_t                                f_platform_irq_cb

#define LPUART_BASE_PTRS                         { LPUART1 }
#define LPUART_CLOCK_NAMES                       { LPUART1_CLK }
#define LPUART_RX_TX_IRQS                        { UART1_IRQ }

#endif
