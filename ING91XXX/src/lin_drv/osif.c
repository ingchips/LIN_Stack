#include "osif.h"
#include <stddef.h>
#include "devassert.h"



/*FUNCTION**********************************************************************
 *
 * Function Name : OSIF_SemaWait
 * Description   : This function performs the 'wait' (decrement) operation on a semaphore.
 *      When timeout value is 0, it's the equivalent of TryWait - try to decrement but return
 *      immediately if it fails (counter is 0).
 *
 * Implements : OSIF_SemaWait_baremetal_Activity
 *END**************************************************************************/
status_t OSIF_SemaWait(semaphore_t * const pSem,
                       const uint32_t timeout)
{
    DEV_ASSERT(pSem != NULL);

    status_t osif_ret_code = STATUS_SUCCESS;

    // osif_UpdateTickConfig();
    // if ((timeout == 0u))
    // {
    //     /* when the timeout is 0 the wait operation is the equivalent of try_wait,
    //         meaning that if the semaphore is 0 return immediately with an error code
    //     */
    //     if (*pSem == 0u)
    //     {
    //         osif_ret_code = STATUS_TIMEOUT;
    //     }
    // }
    // else
    // {
    //     /* timeout is not 0 */
    //     uint32_t timeoutTicks;
    //     if (timeout == OSIF_WAIT_FOREVER)
    //     {
    //         timeoutTicks = OSIF_WAIT_FOREVER;
    //     }
    //     else
    //     {
    //         /* Convert timeout from milliseconds to ticks. */
    //         timeoutTicks = MSEC_TO_TICK(timeout);
    //     }
    //     uint32_t start = osif_GetCurrentTickCount();
    //     uint32_t end = (uint32_t)(start + timeoutTicks);
    //     uint32_t max = end - start;
    //     while (*pSem == 0u)
    //     {
    //         uint32_t crt_ticks = osif_GetCurrentTickCount();
    //         uint32_t delta = crt_ticks - start;
    //         if ((timeoutTicks != OSIF_WAIT_FOREVER) && (delta > max))
    //         {
    //             /* Timeout occured, stop waiting and return fail code */
    //             osif_ret_code = STATUS_TIMEOUT;
    //             break;
    //         }
    //     }
    // }

    // if (osif_ret_code == STATUS_SUCCESS)
    // {
    //     osif_DisableIrqGlobal();
    //     --(*pSem);
    //     osif_EnableIrqGlobal();
    // }

    return osif_ret_code;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : OSIF_SemaPost
 * Description   : This function performs the 'post' (increment) operation on a semaphore.
 *
 * Implements : OSIF_SemaPost_baremetal_Activity
 *END**************************************************************************/
status_t OSIF_SemaPost(semaphore_t * const pSem)
{
    DEV_ASSERT(pSem != NULL);

    status_t osif_ret_code = STATUS_SUCCESS;
    // osif_DisableIrqGlobal();
    // if (*pSem != 255u)
    // {
    //     ++(*pSem);
    // }
    // else
    // {
    //     osif_ret_code = STATUS_ERROR;
    // }

    // osif_EnableIrqGlobal();

    return osif_ret_code;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : OSIF_SemaCreate
 * Description   : This function creates (initializes) a semaphore.
 *
 * Implements : OSIF_SemaCreate_baremetal_Activity
 *END**************************************************************************/
status_t OSIF_SemaCreate(semaphore_t * const pSem,
                         const uint8_t initValue)
{
    DEV_ASSERT(pSem != NULL);
    // osif_DisableIrqGlobal();
    // *pSem = initValue;
    // osif_EnableIrqGlobal();

    return STATUS_SUCCESS;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : OSIF_SemaDestroy
 * Description   : This function destroys a semaphore object (mock operation in baremetal case).
 *
 * Implements : OSIF_SemaDestroy_baremetal_Activity
 *END**************************************************************************/
status_t OSIF_SemaDestroy(const semaphore_t * const pSem)
{
    DEV_ASSERT(pSem != NULL);

    (void)pSem;

    return STATUS_SUCCESS;
}

/*******************************************************************************
 * EOF
 ******************************************************************************/


