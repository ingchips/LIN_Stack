#ifndef LPUART_HW_ACCESS_H__
#define LPUART_HW_ACCESS_H__

#include "ING91870CQ.h"
#include "status.h"
#include "devassert.h"
#include "peripheral_uart.h"


/*******************************************************************************
 * API
 ******************************************************************************/

#if defined(__cplusplus)
extern "C" {
#endif

/*!
 * @name LPUART Common Configurations
 * @{
 */

/*!
 * @brief Reboot uart module.
 *
 * This function reset uart registers to default value.
 *
 *
 * @param instance LPUART instance number.
 */
void LPUART_Reboot(LPUART_Type * uart_num);

/*!
 * @brief Initializes the LPUART controller.
 *
 * This function Initializes the LPUART controller to known state.
 *
 *
 * @param base LPUART base pointer.
 */
void LPUART_Init(LPUART_Type * base, uint32_t linSourceClockFreq, uint32_t baudRate);

/*!
 * @brief Enable/Disable the LPUART transmitter.
 *
 * This function enables or disables the LPUART transmitter, based on the
 * parameter received.
 *
 *
 * @param base LPUART base pointer.
 * @param enable Enable(true) or disable(false) transmitter.
 */
static inline void LPUART_SetTransmitterCmd(LPUART_Type * base, bool enable)
{
    /* Wait for the register write operation to write the correct value */
    while((bool)((base->Control & (1UL<<bsUART_TRANSMIT_ENABLE)) != 0U) != enable)
    {
        base->Control = (base->Control & ~(1UL<<bsUART_TRANSMIT_ENABLE)) | ((enable ? 1UL : 0UL) << bsUART_TRANSMIT_ENABLE);
    }
}

/*!
 * @brief Enable/Disable the LPUART receiver.
 *
 * This function enables or disables the LPUART receiver, based on the
 * parameter received.
 *
 *
 * @param base LPUART base pointer
 * @param enable Enable(true) or disable(false) receiver.
 */
static inline void LPUART_SetReceiverCmd(LPUART_Type * base, bool enable)
{
    /* Wait for the register write operation to write the correct value */
    while((bool)((base->Control & (1UL<<bsUART_RECEIVE_ENABLE)) != 0U) != enable)
    {
        base->Control = (base->Control & ~(1UL<<bsUART_RECEIVE_ENABLE)) | ((enable ? 1UL : 0UL) << bsUART_RECEIVE_ENABLE);
    }
}

/*!
 * @brief Enable/Disable the LPUART.
 *
 * This function enables or disables the LPUART, based on the
 * parameter received.
 *
 *
 * @param base LPUART base pointer
 * @param enable Enable(true) or disable(false) UART.
 */
static inline void LPUART_SetUartEn(LPUART_Type * base, bool enable)
{
    if (enable)
        base->Control |= (1<<bsUART_ENABLE); // uart enable.
    else
        base->Control &= (~(1<<bsUART_ENABLE)); // uart disable.
}

/*@}*/

/*!
* @name LPUART Interrupts and DMA
* @{
*/

/*!
 * @brief Configures the LPUART module interrupts.
 *
 * This function configures the LPUART module interrupts to enable/disable various interrupt sources.
 *
 *
 * @param   base LPUART module base pointer.
 * @param   intSrc LPUART interrupt configuration data.
 * @param   enable   true: enable, false: disable.
 */
void LPUART_SetIntMode(LPUART_Type * base, lpuart_interrupt_t intSrc, bool enable);

/*!
 * @brief Returns LPUART module interrupts state.
 *
 * This function returns whether a certain LPUART module interrupt is enabled or disabled.
 *
 *
 * @param   base LPUART module base pointer.
 * @param   intSrc LPUART interrupt configuration data.
 * @return  true: enable, false: disable.
 */
bool LPUART_GetIntMode(const LPUART_Type * base, lpuart_interrupt_t intSrc);

/*@}*/

/*!
 * @name LPUART Transfer Functions
 * @{
 */

/*!
 * @brief Sends the LPUART 8-bit character.
 *
 * This functions sends an 8-bit character.
 *
 *
 * @param base LPUART Instance
 * @param data     data to send (8-bit)
 */
static inline void LPUART_Putchar(LPUART_Type * base, uint8_t data)
{
    volatile uint8_t * dataRegBytes = (volatile uint8_t *)(&(base->DataRead));
    dataRegBytes[0] = data;
}

/*!
 * @brief Gets the LPUART 8-bit character.
 *
 * This functions receives an 8-bit character.
 *
 *
 * @param base LPUART base pointer
 * @param readData Data read from receive (8-bit)
 */
static inline void LPUART_Getchar(const LPUART_Type * base, uint8_t *readData)
{
    DEV_ASSERT(readData != NULL);

    *readData = (uint8_t)base->DataRead;
}

/*@}*/

/*!
 * @name LPUART Status Flags
 * @{
 */

/*!
 * @brief  LPUART get status flag
 *
 * This function returns the state of a status flag.
 *
 *
 * @param base LPUART base pointer
 * @param statusFlag  The status flag to query
 * @return Whether the current status flag is set(true) or not(false).
 */
bool LPUART_GetStatusFlag(const LPUART_Type * base, lpuart_status_flag_t statusFlag);

/*!
 * @brief LPUART clears an individual status flag.
 *
 * This function clears an individual status flag (see lpuart_status_flag_t for list of status bits).
 *
 *
 * @param base LPUART base pointer
 * @param statusFlag  Desired LPUART status flag to clear
 * @return STATUS_SUCCESS if successful or STATUS_ERROR if an error occured
 */
status_t LPUART_ClearStatusFlag(LPUART_Type * base, lpuart_status_flag_t statusFlag);

/* Clear all uart interrupt status flag. */
static inline void LPUART_ClearAllStatusFlag(LPUART_Type * base)
{
    uint8_t tmpData;
    base->IntClear = 0x7FF;
    LPUART_Getchar(base, &tmpData);
}

/*!
 * @brief Configures the LPUART baud rate.
 *
 * This function configures the LPUART baud rate.
 * In some LPUART instances the user must disable the transmitter/receiver
 * before calling this function.
 * Generally, this may be applied to all LPUARTs to ensure safe operation.
 *
 * @param instance  LPUART instance number.
 * @param desiredBaudRate LPUART desired baud rate.
 * @return STATUS_BUSY if called during an on-going transfer, STATUS_SUCCESS otherwise
 */
status_t LPUART_DRV_SetBaudRate(uint32_t instance, uint32_t desiredBaudRate);

/*@}*/

#if defined(__cplusplus)
}
#endif

#endif /* LPUART_HW_ACCESS_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/
