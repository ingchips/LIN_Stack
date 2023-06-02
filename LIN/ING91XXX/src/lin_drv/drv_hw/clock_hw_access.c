#include "clock_hw_access.h"

/*FUNCTION**********************************************************************
 *
 * Function Name : CLOCK_SYS_GetFreq
 * Description   : 
 *
 *END**************************************************************************/
status_t CLOCK_SYS_GetFreq(clock_names_t clockName, uint32_t *frequency)
{
    status_t returnCode = STATUS_SUCCESS;
    *frequency = 0;
    switch(clockName)
    {
        case LPUART1_CLK:
            *frequency = (uint32_t)UART1_CLK;
            break;
        default:
            returnCode = STATUS_UNSUPPORTED;
            break;
    }
    return returnCode;
}

