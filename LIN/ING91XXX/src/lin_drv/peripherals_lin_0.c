/*******************************************************************************
 * Included files 
 ******************************************************************************/
#include "peripherals_lin_0.h"
#include "lin_user_def.h"

/*******************************************************************************
 * lin_0 initialization code
 ******************************************************************************/

/**
 * @page misra_violations MISRA-C:2012 violations
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 8.7, External variable could be made static.
 * The external variables will be used in other source files in application code.
 *
 */

/*! @brief LIN State structure */
lin_state_t lin0_State;

/*! @brief LIN User Configurations structure */
/*! @brief LIN configuration lin0_InitConfig0 */
lin_user_config_t lin0_InitConfig0 = 
{
    .baudRate                     = LIN0_UART_BAUDRATE,                 /* LPUART baudRate */
    .nodeFunction                 = (bool)LIN0_ROLE,                    /* true - MASTER, false - SLAVE */
    .autobaudEnable               = LIN0_AUTO_BAUD_EN,                  /* Disable auto baudRate */
    .timerGetTimeIntervalCallback = lin0TimerGetTimeIntervalCallback0,
    .classicPID                   = NULL,                               /* ClassicPID */
    .numOfClassicPID              = 0U,     /*  Number of classicPID.
                                                = 0U        : all enhanced checksum except 0x3C/0x7D/0xFE/0xBF
                                                = 255U      : all classic checksum
                                                = N(others) : if classicPID=NULL : all enhanced checksum except 0x3C/0x7D/0xFE/0xBF
                                                              else               : all enhanced checksum except classicPID[0 ~ (N-1)]/0x3C/0x7D/0xFE/0xBF
                                            */
    .rx_io_index                  = LIN0_UART_IO_RX,                    /* Rx gpio index */
};

