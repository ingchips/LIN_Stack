#ifndef LIN_TYPES_H
#define LIN_TYPES_H

#include <stdbool.h>
/*******************************************************************************
 * Definitions
 ******************************************************************************/
/*!
 * @brief Unsigned 8 bit integer
 * Implements : l_u8_Class
 */
typedef unsigned char l_u8;

/*!
 * @brief Unsigned 16 bit integer
 * Implements : l_u16_Class
 */
typedef unsigned short int l_u16;

/*!
 * @brief Unsigned 32 bit integer
 * Implements : l_u32_Class
 */
typedef unsigned long l_u32;

/*!
 * @brief 0 is false, and non-zero (>0) is true
 * Implements : l_bool_Class
 */
typedef bool l_bool;

/*******************************************************************************
 * General
 ******************************************************************************/
/*!
 * @brief Product id structure
 * Implements : lin_product_id_t_Class
 */
typedef struct
{
    l_u16   supplier_id;        /*!< Supplier ID */
    l_u16   function_id;        /*!< Function ID */
    l_u8    variant;            /*!< Variant value */
} lin_product_id_t;

#endif /* LIN_TYPES_H */


/******************************************************************************/
/* EOF */
/******************************************************************************/
