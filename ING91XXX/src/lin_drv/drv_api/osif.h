#ifndef OSIF_H
#define OSIF_H

#include <stdint.h>

/**
 * @page misra_violations MISRA-C:2012 violations
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 2.5, Global macro not referenced.
 * The macro defines a value that will be interpreted as an infinite timeout.
 *
 */

/*! @file */

/*!
 * @addtogroup osif
 * @{
 */

/*******************************************************************************
 * Definitions
 ******************************************************************************/

/*! @cond DRIVER_INTERNAL_USE_ONLY */

#ifdef USING_OS_FREERTOS
/* FreeRTOS implementation */
#include "FreeRTOS.h"
#include "semphr.h"

#if configSUPPORT_STATIC_ALLOCATION == 1
    typedef struct {
        SemaphoreHandle_t handle;
        StaticSemaphore_t buffer;
    } semaphore_t;

    typedef semaphore_t mutex_t;
#else /* configSUPPORT_STATIC_ALLOCATION == 0, it's dynamic allocation */
    /*! @brief Type for a mutex. */
    typedef SemaphoreHandle_t mutex_t;
    /*! @brief Type for a semaphore. */
    typedef SemaphoreHandle_t semaphore_t;
#endif /* configSUPPORT_STATIC_ALLOCATION == 1 */
#else
/* Bare-metal implementation */
/*! @brief Type for a mutex. */
typedef uint8_t mutex_t;
/*! @brief Type for a semaphore. */
typedef volatile uint8_t semaphore_t;
#endif /* ifdef USING_OS_FREERTOS */

/*! @endcond */

#define OSIF_WAIT_FOREVER 0xFFFFFFFFu

#include "status.h"

/*******************************************************************************
 * API
 ******************************************************************************/

#if defined (__cplusplus)
extern "C" {
#endif


/*!
 * @brief Decrement a semaphore with timeout.
 *
 * @param[in] pSem reference to the semaphore object
 * @param[in] timeout time-out value in milliseconds
 * @return  One of the possible status codes:
 * - STATUS_SUCCESS: semaphore wait operation success
 * - STATUS_TIMEOUT: semaphore wait timed out
 */
status_t OSIF_SemaWait(semaphore_t * const pSem,
                       const uint32_t timeout);


/*!
 * @brief Increment a semaphore
 *
 * @param[in] pSem reference to the semaphore object
 * @return  One of the possible status codes:
 * - STATUS_SUCCESS: semaphore post operation success
 * - STATUS_ERROR: semaphore could not be incremented
 */
status_t OSIF_SemaPost(semaphore_t * const pSem);


/*!
 * @brief Creates a semaphore with a given value.
 *
 * @param[in] pSem reference to the semaphore object
 * @param[in] initValue initial value of the semaphore
 * @return  One of the possible status codes:
 * - STATUS_SUCCESS: semaphore created
 * - STATUS_ERROR: semaphore could not be created
 */
status_t OSIF_SemaCreate(semaphore_t * const pSem,
                         const uint8_t initValue);


/*!
 * @brief Destroys a previously created semaphore.
 *
 * @param[in] pSem reference to the semaphore object
 * @return  One of the possible status codes:
 * - STATUS_SUCCESS: semaphore destroyed
 */
status_t OSIF_SemaDestroy(const semaphore_t * const pSem);

/*! @}*/
#if defined (__cplusplus)
}
#endif

/*! @}*/

#endif /* OSIF_H */
/*******************************************************************************
 * EOF
 ******************************************************************************/
