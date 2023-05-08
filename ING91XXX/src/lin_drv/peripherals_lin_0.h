#ifndef lin_0_H
#define lin_0_H

/**
 * @page misra_violations MISRA-C:2012 violations
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 2.5, Global macro not referenced.
 * The global macro will be used in function call of the module.
 *
 */
/*******************************************************************************
 * Included files 
 ******************************************************************************/
#include "stddef.h"
#include "lin_driver.h"

/*******************************************************************************
 * Definitions 
 ******************************************************************************/

/*! @brief Device instance number */
#define INST_LIN0  (0U)

/*******************************************************************************
 * Global variables 
 ******************************************************************************/

/*! @brief LIN State structure */
extern lin_state_t lin0_State;

/*! @brief Extern LIN user configuration structure */
/*! @brief Extern LIN configuration lin0_InitConfig0 */
extern lin_user_config_t lin0_InitConfig0;
/*! @brief Extern Timer get time interval callback function0 */
extern uint32_t  lin0TimerGetTimeIntervalCallback0(uint32_t *ns);



#endif /* lin_0_H */
