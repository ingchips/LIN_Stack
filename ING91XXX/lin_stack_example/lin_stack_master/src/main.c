#include <stdio.h>
#include <string.h>
#include "profile.h"
#include "ingsoc.h"
#include "platform_api.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "trace.h"

#include "btstack_util.h"
#include "kv_storage.h"
#include "eflash.h"

#include "gpio_irq_management.h"
#include "lin_user_def.h"
#include "lin_stack_task.h"

static uint32_t cb_hard_fault(hard_fault_info_t *info, void *_)
{
    platform_printf("HARDFAULT:\nPC : 0x%08X\nLR : 0x%08X\nPSR: 0x%08X\n"
                    "R0 : 0x%08X\nR1 : 0x%08X\nR2 : 0x%08X\nP3 : 0x%08X\n"
                    "R12: 0x%08X\n",
                    info->pc, info->lr, info->psr,
                    info->r0, info->r1, info->r2, info->r3, info->r12);
    for (;;);
}

static uint32_t cb_assertion(assertion_info_t *info, void *_)
{
    platform_printf("[ASSERTION] @ %s:%d\n",
                    info->file_name,
                    info->line_no);
    for (;;);
}

static uint32_t cb_heap_out_of_mem(uint32_t tag, void *_)
{
    platform_printf("[OOM] @ %d\n", tag);
    for (;;);
}

uint32_t cb_putc(char *c, void *dummy)
{
#ifdef LOG_BY_UART0
    while (apUART_Check_TXFIFO_FULL(APB_UART0) == 1);
    UART_SendData(APB_UART0, (uint8_t)*c);
#endif
#ifdef LOG_BY_RTT
	SEGGER_RTT_Write(0,c,1);
#endif
    return 0;
}

int fputc(int ch, FILE *f)
{
    cb_putc((char *)&ch, NULL);
    return ch;
}

static void config_uart(uint32_t freq, uint32_t baud)
{
    UART_sStateStruct config;

    config.word_length       = UART_WLEN_8_BITS;
    config.parity            = UART_PARITY_NOT_CHECK;
    config.fifo_enable       = 1;
    config.two_stop_bits     = 0;
    config.receive_en        = 1;
    config.transmit_en       = 1;
    config.UART_en           = 1;
    config.cts_en            = 0;
    config.rts_en            = 0;
    config.rxfifo_waterlevel = 1;
    config.txfifo_waterlevel = 1;
    config.ClockFrequency    = freq;
    config.BaudRate          = baud;

    apUART_Initialize(APB_UART0, &config, 0);
}

void setup_peripherals(void)
{
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_TMR0);
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_PinCtrl);
    SYSCTRL_ClearClkGateMulti(1 << SYSCTRL_ClkGate_APB_UART0);

    PINCTRL_SetPadMux(GIO_GPIO_3, IO_SOURCE_GENERAL);
    PINCTRL_SetPadPwmSel(GIO_GPIO_3, 0);
    PINCTRL_SetPadMux(GIO_GPIO_2, IO_SOURCE_UART0_TXD);
    PINCTRL_Pull(GIO_GPIO_3, PINCTRL_PULL_UP);
    PINCTRL_SelUartRxdIn(UART_PORT_0, GIO_GPIO_3);

    config_uart(OSC_CLK_FREQ, 115200);
}

uint32_t on_deep_sleep_wakeup(void *dummy, void *user_data)
{
    (void)(dummy);
    (void)(user_data);
    setup_peripherals();
//    printf("wakeup.\n");
    return 0;
}

uint32_t query_deep_sleep_allowed(void *dummy, void *user_data)
{
    (void)(dummy);
    (void)(user_data);
    // TODO: return 0 if deep sleep is not allowed now; else deep sleep is allowed
//    printf("sleep.\n");
    return 0;
}

static void delay_ms(uint32_t t_ms)
{
    uint32_t tick = platform_get_us_time()/1000;
    while((platform_get_us_time()/1000) - tick < t_ms);
}

trace_rtt_t trace_ctx = {0};
int app_main()
{
    setup_peripherals();
    
    trace_rtt_init(&trace_ctx);
    platform_set_evt_callback(PLATFORM_CB_EVT_TRACE, (f_platform_evt_cb)cb_trace_rtt, &trace_ctx);
    platform_config(PLATFORM_CFG_TRACE_MASK, PLATFORM_CFG_DISABLE); // TODO: config trace mask
    
    platform_set_evt_callback(PLATFORM_CB_EVT_PUTC, (f_platform_evt_cb)cb_putc, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_HARD_FAULT, (f_platform_evt_cb)cb_hard_fault, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_ASSERTION, (f_platform_evt_cb)cb_assertion, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_HEAP_OOM, (f_platform_evt_cb)cb_heap_out_of_mem, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_PROFILE_INIT, setup_profile, NULL);

    // setup handlers
    platform_set_evt_callback(PLATFORM_CB_EVT_ON_DEEP_SLEEP_WAKEUP, on_deep_sleep_wakeup, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_QUERY_DEEP_SLEEP_ALLOWED, query_deep_sleep_allowed, NULL);
    
    // gpio register system init.
    GPIO_IRQ_Management_init();

    lin_stack_task();
    
//    delay_ms(1500);    
//    platform_config(PLATFORM_CFG_POWER_SAVING, PLATFORM_CFG_ENABLE);

    return 0;
}

