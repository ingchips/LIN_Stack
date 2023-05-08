#ifndef CLOCK_HW_ACCESS_H__
#define CLOCK_HW_ACCESS_H__

#include "ING91870CQ.h"
#include "status.h"

/*!
 * @brief Wrapper over CLOCK_DRV_GetFreq function. It's part of the old API.
 *
 * @param[in] clockName Clock names defined in clock_names_t
 * @param[out] frequency Returned clock frequency value in Hertz
 * @return status   Error code defined in status_t
 */
status_t CLOCK_SYS_GetFreq(clock_names_t clockName, uint32_t *frequency);



#endif /* CLOCK_HW_ACCESS_H__ */
/*******************************************************************************
 * EOF
 ******************************************************************************/
