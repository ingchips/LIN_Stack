#include "lpuart_hw_access.h"
#include "lin_lpuart_driver.h"


/*******************************************************************************
 * Code
 ******************************************************************************/

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_Reboot
 * Description   : Initializes the LPUART controller to default state.
 *END**************************************************************************/
void LPUART_Reboot(LPUART_Type * base)
{
    if (base == APB_UART0)
    {
        SYSCTRL_ResetBlock(SYSCTRL_Reset_APB_UART0);
        SYSCTRL_ReleaseBlock(SYSCTRL_Reset_APB_UART0);
    }
    else if (base == APB_UART1)
    {
        SYSCTRL_ResetBlock(SYSCTRL_Reset_APB_UART1);
        SYSCTRL_ReleaseBlock(SYSCTRL_Reset_APB_UART1);
    }
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_Init
 * Description   : Initializes the LPUART controller to known state, using
 *                 register reset values defined in the reference manual.
 *END**************************************************************************/
void LPUART_Init(LPUART_Type * base, uint32_t linSourceClockFreq, uint32_t baudRate)
{
    UART_sStateStruct config;

    config.word_length       = UART_WLEN_8_BITS;
    config.parity            = UART_PARITY_NOT_CHECK;
    config.fifo_enable       = 0;
    config.two_stop_bits     = 0;
    config.receive_en        = 1;
    config.transmit_en       = 1;
    config.UART_en           = 1;
    config.cts_en            = 0;
    config.rts_en            = 0;
    config.rxfifo_waterlevel = 1;
    config.txfifo_waterlevel = 0;
    config.ClockFrequency    = linSourceClockFreq;
    config.BaudRate          = baudRate;

    apUART_Initialize(base, &config, 0);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_SetIntMode
 * Description   : Configures the LPUART module interrupts to enable/disable
 * various interrupt sources.
 *END**************************************************************************/
void LPUART_SetIntMode(LPUART_Type * base, lpuart_interrupt_t intSrc, bool enable)
{
    switch(intSrc)
    {
        case LPUART_INT_LIN_BREAK_DETECT: // break detect
            base->IntMask = (base->IntMask & ~(1UL << bsUART_BREAK_INTENAB)) | ((enable ? 1U : 0U) << bsUART_BREAK_INTENAB);
            break;
        case LPUART_INT_RX_DATA_REG_FULL: // Recv one char.
            base->IntMask = (base->IntMask & ~(1UL << bsUART_RECEIVE_INTENAB)) | ((enable ? 1U : 0U) << bsUART_RECEIVE_INTENAB);
            break;
        case LPUART_INT_RX_ACTIVE_EDGE:
//            printf("SetInt: Rx edge interrupt has not impl\n");
            break;
        
        // error interrupt.
        case LPUART_INT_RX_OVERRUN: // overrun error
            base->IntMask = (base->IntMask & ~(1UL << bsUART_OVERRUN_INTENAB)) | ((enable ? 1U : 0U) << bsUART_OVERRUN_INTENAB);
            break;
        case LPUART_INT_PARITY_ERR_FLAG: // parity error
            base->IntMask = (base->IntMask & ~(1UL << bsUART_PARITY_INTENAB)) | ((enable ? 1U : 0U) << bsUART_PARITY_INTENAB);
            break;
        case LPUART_INT_FRAME_ERR_FLAG: // frame error
            base->IntMask = (base->IntMask & ~(1UL << bsUART_FRAME_INTENAB)) | ((enable ? 1U : 0U) << bsUART_FRAME_INTENAB);
            break;
        case LPUART_INT_NOISE_ERR_FLAG: // rx noise error == rx timeout error?
            base->IntMask = (base->IntMask & ~(1UL << bsUART_TIMEOUT_INTENAB)) | ((enable ? 1U : 0U) << bsUART_TIMEOUT_INTENAB);
            break;
        default:
            /* Invalid parameter: return */
            printf("SetInt: unknown intSrc.\n");
            break;
    }
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_GetIntMode
 * Description   : Returns whether LPUART module interrupt is enabled/disabled.
 *END**************************************************************************/
bool LPUART_GetIntMode(const LPUART_Type * base, lpuart_interrupt_t intSrc)
{
    bool retVal = false;
    
    switch(intSrc)
    {
        case LPUART_INT_LIN_BREAK_DETECT: // break detect
            retVal = (((base->IntMask >> (uint32_t)(bsUART_BREAK_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_INT_RX_DATA_REG_FULL: // Recv one char.
            retVal = (((base->IntMask >> (uint32_t)(bsUART_RECEIVE_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_INT_RX_ACTIVE_EDGE:
//            printf("GetInt: Rx edge interrupt has not impl\n");
            break;
        
        // error interrupt.
        case LPUART_INT_RX_OVERRUN: // overrun error
            retVal = (((base->IntMask >> (uint32_t)(bsUART_OVERRUN_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_INT_PARITY_ERR_FLAG: // parity error
            retVal = (((base->IntMask >> (uint32_t)(bsUART_PARITY_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_INT_FRAME_ERR_FLAG: // frame error
            retVal = (((base->IntMask >> (uint32_t)(bsUART_FRAME_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_INT_NOISE_ERR_FLAG: // rx noise error == rx timeout error?
            retVal = (((base->IntMask >> (uint32_t)(bsUART_TIMEOUT_INTENAB)) & 1U) > 0U);
            break;
        default:
            /* Invalid parameter: return */
            printf("GetInt: unknown intSrc.\n");
            break;
    }
    
    return retVal;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_GetStatusFlag
 * Description   : LPUART get status flag by passing flag enum.
 *END**************************************************************************/
bool LPUART_GetStatusFlag(const LPUART_Type * base, lpuart_status_flag_t statusFlag)
{
    bool retVal = false;
    
    switch(statusFlag)
    {
        case LPUART_LIN_BREAK_DETECT: // break detect
            retVal = (((base->Interrupt >> (uint32_t)(bsUART_BREAK_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_RX_DATA_REG_FULL: // Recv one char.
            retVal = (((base->Interrupt >> (uint32_t)(bsUART_RECEIVE_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_TX_DATA_REG_EMPTY: // send complete.
            retVal = (((base->Flag >> (uint32_t)(bsUART_TRANSMIT_EMPTY)) & 1U) > 0U);
            break;
        case LPUART_RX_ACTIVE_EDGE_DETECT:
//            printf("GetSta: Rx edge interrupt has not impl\n");
            break;
        
        // error interrupt.
        case LPUART_RX_OVERRUN: // overrun error
            retVal = (((base->Interrupt >> (uint32_t)(bsUART_OVERRUN_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_PARITY_ERR: // parity error
            retVal = (((base->Interrupt >> (uint32_t)(bsUART_PARITY_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_FRAME_ERR: // frame error
            retVal = (((base->Interrupt >> (uint32_t)(bsUART_FRAME_INTENAB)) & 1U) > 0U);
            break;
        case LPUART_NOISE_DETECT: // rx noise error == rx timeout error?
            retVal = (((base->Interrupt >> (uint32_t)(bsUART_TIMEOUT_INTENAB)) & 1U) > 0U);
            break;
        default:
            /* Invalid parameter: return */
            printf("GetSta: unknown statusFlag.\n");
            break;
    }
    
    return retVal;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_ClearStatusFlag
 * Description   : LPUART clears an individual status flag
 * (see lpuart_status_flag_t for list of status bits).
 *END**************************************************************************/
status_t LPUART_ClearStatusFlag(LPUART_Type * base,
                                    lpuart_status_flag_t statusFlag)
{
    status_t returnCode = STATUS_SUCCESS;
    
    switch(statusFlag)
    {
        case LPUART_LIN_BREAK_DETECT: // break detect
            base->IntClear |= (1<<bsUART_BREAK_INTENAB);
            break;
        case LPUART_RX_DATA_REG_FULL: // Recv one char.
            base->IntClear |= (1<<bsUART_RECEIVE_INTENAB);
            break;
        case LPUART_RX_ACTIVE_EDGE_DETECT:
            printf("ClearSta: Rx edge interrupt has not impl\n");
            returnCode = STATUS_ERROR;
            break;
        
        // error interrupt.
        case LPUART_RX_OVERRUN: // overrun error
            base->IntClear |= (1<<bsUART_OVERRUN_INTENAB);
            break;
        case LPUART_PARITY_ERR: // parity error
            base->IntClear |= (1<<bsUART_PARITY_INTENAB);
            break;
        case LPUART_FRAME_ERR: // frame error
            base->IntClear |= (1<<bsUART_FRAME_INTENAB);
            break;
        case LPUART_NOISE_DETECT: // rx noise error == rx timeout error?
            base->IntClear |= (1<<bsUART_TIMEOUT_INTENAB);
            break;
        default:
            /* Invalid parameter: return */
            printf("ClearSta: unknown statusFlag.\n");
            returnCode = STATUS_ERROR;
            break;
    }

    return (returnCode);
}

/*FUNCTION**********************************************************************
 *
 * Function Name : LPUART_DRV_SetBaudRate
 * Description   : Configures the LPUART baud rate.
 * In some LPUART instances the user must disable the transmitter/receiver
 * before calling this function.
 * Generally, this may be applied to all LPUARTs to ensure safe operation.
 *
 * Implements    : LPUART_DRV_SetBaudRate_Activity
 *END**************************************************************************/
status_t LPUART_DRV_SetBaudRate(uint32_t instance, uint32_t desiredBaudRate)
{
    /* Get base address of the LPUART instance. */
    LPUART_Type * base = g_linLpuartBase[instance];
    
    /* Get the current LIN state of this LPUART instance. */
    lin_state_t * linCurrentState = g_linStatePtr[instance];
    
    apUART_BaudRateSet(base, linCurrentState->linSourceClockFreq, desiredBaudRate);
    return 0;
}

/*******************************************************************************
 * EOF
 ******************************************************************************/
