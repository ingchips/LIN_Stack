/*!
 * @file lin_cfg.h
 *
 * @page misra_violations MISRA-C:2012 violations
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 2.3, A project should not contain unused type declarations.
 * The type can be used by user application.
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 2.5, A project should not contain unused macro declarations.
 * The macro can be used by user application.
 *
 * @section [global]
 * Violates MISRA 2012 Required Rule 5.1, External identifiers shall be distinct.
 * The identifiers are generated from signal names. The signal name is defined by users and we can not control this.
 *
 * @section [global]
 * Violates MISRA 2012 Required Rule 5.2, Identifiers declared in the same scope and name
 * space shall be distinct.
 * The name of signal is defined by user and we can not control this.
 *
 * @section [global]
 * Violates MISRA 2012 Required Rule 5.4, Macro identifiers shall be distinct.
 * The name of signal is defined by user and we can not control this.
 *
 * @section [global]
 * Violates MISRA 2012 Required Rule 5.5, Identifier shall be distinct from macro names.
 * The name of signal is defined by user and we can not control this.
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Directive 4.9, A function should be used in preference
 * to a function-like macro where they are interchangeable.
 * The macro is used to define static or dynamic implementation of API functions.
 * This way is more efficient.
 *
 * @section [global]
 * Violates MISRA 2012 Advisory Rule 20.10, The #/ ## preprocessor operator should not be used.
 * The operator is used to define dynamic implementation of API functions of signal interaction.
 * This way is more efficient.
 */

#ifndef LIN_CFG_H
#define LIN_CFG_H

#include <stdint.h>
#include "lin_driver.h"

/* Implements    : SUPPORT_MASTER_MODE_Class */
#define SUPPORT_MASTER_MODE     0U /* Equal to 1 when have at least one master interface */
/* Implements    : SUPPORT_SLAVE_MODE_Class */
#define SUPPORT_SLAVE_MODE      1U /* Equal to 1 when have at least one slave interface */

/* Implements    : SUPPORT_PROTOCOL_21_Class */
#define SUPPORT_PROTOCOL_21     1U /* Equal to 1 when have at least one LIN2.1 or LIN2.2 interface */
/* Implements    : SUPPORT_PROTOCOL_20_Class */
#define SUPPORT_PROTOCOL_20     0U /* Equal to 1 when have at least one LIN2.0 interface */
/* Implements    : SUPPORT_PROTOCOL_13_Class */
#define SUPPORT_PROTOCOL_13     0U /* Equal to 1 when have at least one LIN1.3 interface */
/* Implements    : SUPPORT_PROTOCOL_J2602_Class */
#define SUPPORT_PROTOCOL_J2602  0U /* Equal to 1 when have at least one J2602 interface */

/* Implements    : SUPPORT_DIAG_CLASS_III_Class */
#define SUPPORT_DIAG_CLASS_III  0U /* Equal to 1 when have at least one ifc with diagnostic class III */
/* Implements    : SUPPORT_DIAG_CLASS_II_Class */
#define SUPPORT_DIAG_CLASS_II   0U /* Equal to 1 when have at least one ifc with diagnostic class II or III */

/* Implements    : SUPPORT_TRANSPORT_LAYER_Class */
#define SUPPORT_TRANSPORT_LAYER 1U /* Equal to 1 to use transport layer */
/* Implements    : SUPPORT_DIAG_SERVICE_Class */
#define SUPPORT_DIAG_SERVICE    1U /* Equal to 1 to use diagnostic service layer */
#define TIME_OUT_UNIT_US        500U

#define HARDWARE_INSTANCE_COUNT    1U

#define LIN_NUM_OF_IFCS  1U
#define LIN_NUM_OF_SLAVE_IFCS 1U
#define LIN_NUM_OF_MASTER_IFCS 0U

/* frame buffer size */
#define LIN_FRAME_BUF_SIZE          18U
#define LIN_FLAG_BUF_SIZE           4U

/**********************************************************************/
/***************               Interfaces           *******************/
/**********************************************************************/
typedef enum {
   LI0 = 0x00U,
   INVALID_IFC = 0xFFU
}l_ifc_handle;

typedef enum {
   LI0_Slave = 0x00U,
   INVALID_SLAVE_INDEX = 0xFFU
}l_ifc_slave_handle;
typedef enum {
   INVALID_MASTER_INDEX = 0xFFU
}l_ifc_master_handle;

/**********************************************************************/
/***************               Signals              *******************/
/**********************************************************************/
/* Number of signals */
#define LIN_NUM_OF_SIGS  8U
/* List of signals */
typedef enum {

   /* Interface_name = LI0 */

   LI0_Motor1ErrorCode

   , LI0_Motor1ErrorValue
  
   , LI0_Motor1LinError
  
   , LI0_Motor1Selection
  
   , LI0_Motor1Temp
  
   , LI0_MotorDirection
  
   , LI0_MotorSpeed
  
   , LI0_Motor1Position
  
} l_signal_handle;
/**********************************************************************/
/*****************               Frame             ********************/
/**********************************************************************/
/* Number of frames */
#define LIN_NUM_OF_FRMS  7U
/* List of frames */
typedef enum {
/* All frames for master node */

   /* Interface_name = LI0 */

   LI0_Motor1Control

   , LI0_Motor1State_Cycl
  
   , LI0_Motor1State_Event
  
   , LI0_MotorsControl
  
   , LI0_SporadicControlFrame
  
   , LI0_MasterReq
  
   , LI0_SlaveResp
  
} l_frame_handle;
/**********************************************************************/
/***************             Configuration          *******************/
/**********************************************************************/


/* Size of configuration in ROM and RAM used for interface: LI0 */
#define LI0_LIN_SIZE_OF_CFG  11U



/*********************************************************************
 * global macros
 *********************************************************************/
/*FUNCTION**********************************************************************
 *
 * Function Name : l_bool_rd
 * Description   : This function return value of bool signal
 *
 * Implements    : l_bool_rd_Class
 *END**************************************************************************/
#define l_bool_rd(SIGNAL) l_bool_rd_##SIGNAL()

/*FUNCTION**********************************************************************
 *
 * Function Name : l_bool_wr
 * Description   : This function write value A to bool signal
 *
 * Implements    : l_bool_wr_Class
 *END**************************************************************************/
#define l_bool_wr(SIGNAL, A) l_bool_wr_##SIGNAL(A)

/*FUNCTION**********************************************************************
 *
 * Function Name : l_u8_rd
 * Description   : This function read data from (1-8 bit)signal
 *
 * Implements    : l_u8_rd_Class
 *END**************************************************************************/
#define l_u8_rd(SIGNAL) l_u8_rd_##SIGNAL()

/*FUNCTION**********************************************************************
 *
 * Function Name : l_u8_wr
 * Description   : This this function write data to (1-8 bit)signal
 *
 * Implements    : l_u8_wr_Class
 *END**************************************************************************/
#define l_u8_wr(SIGNAL, A) l_u8_wr_##SIGNAL(A)

/*FUNCTION**********************************************************************
 *
 * Function Name : l_u16_rd
 * Description   : This function read data from (8-16 bit)signal
 *
 * Implements    : l_u16_rd_Class
 *END**************************************************************************/
#define l_u16_rd(SIGNAL) l_u16_rd_##SIGNAL()

/*FUNCTION**********************************************************************
 *
 * Function Name : l_u16_wr
 * Description   : This function write data to (8-16 bit) signal
 *
 * Implements    : l_u16_wr_Class
 *END**************************************************************************/
#define l_u16_wr(SIGNAL, A) l_u16_wr_##SIGNAL(A)

/*FUNCTION**********************************************************************
 *
 * Function Name : l_bytes_rd
 * Description   : This function read data from bytes signal
 *
 * Implements    : l_bytes_rd_Class
 *END**************************************************************************/
#define l_bytes_rd(SIGNAL, start, count, data)  l_bytes_rd_##SIGNAL(start, count, data)

/*FUNCTION**********************************************************************
 *
 * Function Name : l_bytes_wr
 * Description   : This function write data to bytes signal
 *
 * Implements    : l_bytes_wr_Class
 *END**************************************************************************/
#define l_bytes_wr(SIGNAL, start, count, data) l_bytes_wr_##SIGNAL(start, count, data)

/*FUNCTION**********************************************************************
 *
 * Function Name : l_flg_tst
 * Description   : This function return value of flag which related with signal
 *
 * Implements    : l_flg_tst_Class
 *END**************************************************************************/
#define l_flg_tst(FLAG) l_flg_tst_##FLAG()

/*FUNCTION**********************************************************************
 *
 * Function Name : l_flg_clr
 * Description   : This function clear flag which related with signal
 *
 * Implements    : l_flg_clr_Class
 *END**************************************************************************/
#define l_flg_clr(FLAG) l_flg_clr_##FLAG()

#define LIN_TEST_BIT(A,B) ((l_bool)((((A) & (1U << (B))) != 0U) ? 1U : 0U))
#define LIN_SET_BIT(A,B)                      ((A) |= (l_u8) (1U << (B)))
#define LIN_CLEAR_BIT(A,B)               ((A) &= ((l_u8) (~(1U << (B)))))
#define LIN_BYTE_MASK  ((l_u16)(((l_u16)((l_u16)1 << CHAR_BIT)) - (l_u16)1))


/* Returns the low byte of the 32-bit value    */
#define BYTE_0(n)                              ((l_u8)((n) & (l_u8)0xFF))
/* Returns the second byte of the 32-bit value */
#define BYTE_1(n)                        ((l_u8)(BYTE_0((n) >> (l_u8)8)))
/* Returns the third byte of the 32-bit value  */
#define BYTE_2(n)                       ((l_u8)(BYTE_0((n) >> (l_u8)16)))
/* Returns high byte of the 32-bit value       */
#define BYTE_3(n)                       ((l_u8)(BYTE_0((n) >> (l_u8)24)))

/*
 * defines for signal access
 */



#define LIN_LI0_Motor1ErrorCode_BYTE_OFFSET    8U
#define LIN_LI0_Motor1ErrorCode_BIT_OFFSET    0U
#define LIN_LI0_Motor1ErrorCode_SIGNAL_SIZE    8U
#define LIN_LI0_Motor1ErrorCode_FLAG_BYTE_OFFSET    2U
#define LIN_LI0_Motor1ErrorCode_FLAG_BIT_OFFSET    0U


#define LIN_LI0_Motor1ErrorValue_BYTE_OFFSET    9U
#define LIN_LI0_Motor1ErrorValue_BIT_OFFSET    0U
#define LIN_LI0_Motor1ErrorValue_SIGNAL_SIZE    8U
#define LIN_LI0_Motor1ErrorValue_FLAG_BYTE_OFFSET    2U
#define LIN_LI0_Motor1ErrorValue_FLAG_BIT_OFFSET    1U


#define LIN_LI0_Motor1LinError_BYTE_OFFSET    6U
#define LIN_LI0_Motor1LinError_BIT_OFFSET    0U
#define LIN_LI0_Motor1LinError_SIGNAL_SIZE    1U
#define LIN_LI0_Motor1LinError_FLAG_BYTE_OFFSET    1U
#define LIN_LI0_Motor1LinError_FLAG_BIT_OFFSET    2U


#define LIN_LI0_Motor1Selection_BYTE_OFFSET    0U
#define LIN_LI0_Motor1Selection_BIT_OFFSET    0U
#define LIN_LI0_Motor1Selection_SIGNAL_SIZE    2U
#define LIN_LI0_Motor1Selection_FLAG_BYTE_OFFSET    0U
#define LIN_LI0_Motor1Selection_FLAG_BIT_OFFSET    0U


#define LIN_LI0_Motor1Temp_BYTE_OFFSET    1U
#define LIN_LI0_Motor1Temp_BIT_OFFSET    0U
#define LIN_LI0_Motor1Temp_SIGNAL_SIZE    8U
#define LIN_LI0_Motor1Temp_FLAG_BYTE_OFFSET    1U
#define LIN_LI0_Motor1Temp_FLAG_BIT_OFFSET    0U


#define LIN_LI0_MotorDirection_BYTE_OFFSET    10U
#define LIN_LI0_MotorDirection_BIT_OFFSET    0U
#define LIN_LI0_MotorDirection_SIGNAL_SIZE    2U
#define LIN_LI0_MotorDirection_FLAG_BYTE_OFFSET    3U
#define LIN_LI0_MotorDirection_FLAG_BIT_OFFSET    0U


#define LIN_LI0_MotorSpeed_BYTE_OFFSET    10U
#define LIN_LI0_MotorSpeed_BIT_OFFSET    2U
#define LIN_LI0_MotorSpeed_SIGNAL_SIZE    10U
#define LIN_LI0_MotorSpeed_FLAG_BYTE_OFFSET    3U
#define LIN_LI0_MotorSpeed_FLAG_BIT_OFFSET    1U


#define LIN_LI0_Motor1Position_BYTE_OFFSET    2U
#define LIN_LI0_Motor1Position_BIT_OFFSET    0U
#define LIN_LI0_Motor1Position_SIGNAL_SIZE    32U
#define LIN_LI0_Motor1Position_FLAG_BYTE_OFFSET    1U
#define LIN_LI0_Motor1Position_FLAG_BIT_OFFSET    1U



/**********************************************************************/
/***************        Static API Functions        *******************/
/**********************************************************************/
/*
 * the static signal access macros
 */


 
/* static access macros for signal LI0_Motor1ErrorCode */
 
#define l_u8_rd_LI0_Motor1ErrorCode() \
    ((l_u8)  (((g_lin_frame_data_buffer[LIN_LI0_Motor1ErrorCode_BYTE_OFFSET]) >> 0U) & 0xffU))


#define l_u8_wr_LI0_Motor1ErrorCode(A) \
    { \
    g_lin_frame_data_buffer[LIN_LI0_Motor1ErrorCode_BYTE_OFFSET] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_Motor1ErrorCode_BYTE_OFFSET] & 0x00U) | \
    (((A) << 0U) & 0xffU)); \
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1ErrorCode_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1ErrorCode_FLAG_BIT_OFFSET); \
    }


 
/* static access macros for signal LI0_Motor1ErrorValue */
 
#define l_u8_rd_LI0_Motor1ErrorValue() \
    ((l_u8)  (((g_lin_frame_data_buffer[LIN_LI0_Motor1ErrorValue_BYTE_OFFSET]) >> 0U) & 0xffU))


#define l_u8_wr_LI0_Motor1ErrorValue(A) \
    { \
    g_lin_frame_data_buffer[LIN_LI0_Motor1ErrorValue_BYTE_OFFSET] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_Motor1ErrorValue_BYTE_OFFSET] & 0x00U) | \
    (((A) << 0U) & 0xffU)); \
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1ErrorValue_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1ErrorValue_FLAG_BIT_OFFSET); \
    }


/* static access macros for signal LI0_Motor1LinError */

 
#define l_bool_rd_LI0_Motor1LinError() \
    (LIN_TEST_BIT(g_lin_frame_data_buffer[LIN_LI0_Motor1LinError_BYTE_OFFSET], \
    LIN_LI0_Motor1LinError_BIT_OFFSET))

#define l_bool_wr_LI0_Motor1LinError(A) \
    {(A) ? \
    (LIN_SET_BIT(g_lin_frame_data_buffer[LIN_LI0_Motor1LinError_BYTE_OFFSET], \
    LIN_LI0_Motor1LinError_BIT_OFFSET)):\
    (LIN_CLEAR_BIT(g_lin_frame_data_buffer[LIN_LI0_Motor1LinError_BYTE_OFFSET], \
    LIN_LI0_Motor1LinError_BIT_OFFSET));\
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1LinError_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1LinError_FLAG_BIT_OFFSET);}
 
/* static access macros for signal LI0_Motor1Selection */
 
#define l_u8_rd_LI0_Motor1Selection() \
    ((l_u8)  (((g_lin_frame_data_buffer[LIN_LI0_Motor1Selection_BYTE_OFFSET]) >> 0U) & 0x03U))


#define l_u8_wr_LI0_Motor1Selection(A) \
    { \
    g_lin_frame_data_buffer[LIN_LI0_Motor1Selection_BYTE_OFFSET] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_Motor1Selection_BYTE_OFFSET] & 0xfcU) | \
    (((A) << 0U) & 0x03U)); \
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Selection_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Selection_FLAG_BIT_OFFSET); \
    }


 
/* static access macros for signal LI0_Motor1Temp */
 
#define l_u8_rd_LI0_Motor1Temp() \
    ((l_u8)  (((g_lin_frame_data_buffer[LIN_LI0_Motor1Temp_BYTE_OFFSET]) >> 0U) & 0xffU))


#define l_u8_wr_LI0_Motor1Temp(A) \
    { \
    g_lin_frame_data_buffer[LIN_LI0_Motor1Temp_BYTE_OFFSET] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_Motor1Temp_BYTE_OFFSET] & 0x00U) | \
    (((A) << 0U) & 0xffU)); \
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Temp_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Temp_FLAG_BIT_OFFSET); \
    }


 
/* static access macros for signal LI0_MotorDirection */
 
#define l_u8_rd_LI0_MotorDirection() \
    ((l_u8)  (((g_lin_frame_data_buffer[LIN_LI0_MotorDirection_BYTE_OFFSET]) >> 0U) & 0x03U))


#define l_u8_wr_LI0_MotorDirection(A) \
    { \
    g_lin_frame_data_buffer[LIN_LI0_MotorDirection_BYTE_OFFSET] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_MotorDirection_BYTE_OFFSET] & 0xfcU) | \
    (((A) << 0U) & 0x03U)); \
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_MotorDirection_FLAG_BYTE_OFFSET],\
         LIN_LI0_MotorDirection_FLAG_BIT_OFFSET); \
    }


 
/* static access macros for signal LI0_MotorSpeed */
 
#define l_u16_rd_LI0_MotorSpeed() \
    ((l_u16)  (((g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET] + (g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET + 1U] << 8U)) >> 2U) & 0x3ffU))


#define l_u16_wr_LI0_MotorSpeed(A) \
    { \
    g_buffer_backup_data[0U] =  g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET]; \
    g_lin_frame_updating_flag_tbl[LI0_MotorsControl] |= (1U << 0); \
    g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET] & 0x03U) | \
    (((A) << 2U) & 0xfcU)); \
    g_buffer_backup_data[0U + 1U] =  g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET + 1U]; \
    g_lin_frame_updating_flag_tbl[LI0_MotorsControl] |= (1U << (0 + 1U)); \
    g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET + 1U] = \
    (l_u8)((g_lin_frame_data_buffer[LIN_LI0_MotorSpeed_BYTE_OFFSET + 1U] & 0xf0U) | \
    (((A) >> 6U) & 0x0fU)); \
    g_lin_frame_updating_flag_tbl[LI0_MotorsControl] &= (~(0x03 << 0)); \
    LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_MotorSpeed_FLAG_BYTE_OFFSET],\
         LIN_LI0_MotorSpeed_FLAG_BIT_OFFSET); \
    }


/* static access macros for signal LI0_Motor1Position */
 
#define l_bytes_rd_LI0_Motor1Position(start, count, data) \
    {l_u8       i; \
     for (i = 0; i < (count); ++i)  (data)[i] = g_lin_frame_data_buffer[LIN_LI0_Motor1Position_BYTE_OFFSET + i + (start)];}

#define l_bytes_wr_LI0_Motor1Position(start, count, data) \
    {l_u8       i; \
     for (i = 0; i < (count); ++i) \
     { \
        g_buffer_backup_data[i + (start) + 1] =  g_lin_frame_data_buffer[LIN_LI0_Motor1Position_BYTE_OFFSET + i + (start)]; \
        g_lin_frame_updating_flag_tbl[LI0_Motor1State_Cycl] |= (1 << (i + (start) + 1)); \
        g_lin_frame_data_buffer[LIN_LI0_Motor1Position_BYTE_OFFSET + i + (start)]  = (data)[i]; \
     } \
     g_lin_frame_updating_flag_tbl[LI0_Motor1State_Cycl] &= (~(((1 << count) -1) << (start + 1))); \
     LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Position_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Position_FLAG_BIT_OFFSET);}


/* Signal flag APIs */

#define l_flg_tst_LI0_Motor1ErrorCode_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1ErrorCode_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1ErrorCode_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_Motor1ErrorCode_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1ErrorCode_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1ErrorCode_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_Motor1ErrorValue_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1ErrorValue_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1ErrorValue_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_Motor1ErrorValue_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1ErrorValue_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1ErrorValue_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_Motor1LinError_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1LinError_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1LinError_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_Motor1LinError_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1LinError_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1LinError_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_Motor1Selection_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Selection_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Selection_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_Motor1Selection_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Selection_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Selection_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_Motor1Temp_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Temp_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Temp_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_Motor1Temp_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Temp_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Temp_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_MotorDirection_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_MotorDirection_FLAG_BYTE_OFFSET],\
         LIN_LI0_MotorDirection_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_MotorDirection_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_MotorDirection_FLAG_BYTE_OFFSET],\
         LIN_LI0_MotorDirection_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_MotorSpeed_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_MotorSpeed_FLAG_BYTE_OFFSET],\
         LIN_LI0_MotorSpeed_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_MotorSpeed_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_MotorSpeed_FLAG_BYTE_OFFSET],\
         LIN_LI0_MotorSpeed_FLAG_BIT_OFFSET)

#define l_flg_tst_LI0_Motor1Position_flag() \
         LIN_TEST_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Position_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Position_FLAG_BIT_OFFSET)
#define l_flg_clr_LI0_Motor1Position_flag() \
         LIN_CLEAR_BIT(g_lin_flag_handle_tbl[LIN_LI0_Motor1Position_FLAG_BYTE_OFFSET],\
         LIN_LI0_Motor1Position_FLAG_BIT_OFFSET)



/* Frame flag APIs */

   /* Interface_name = LI0 */

 #define l_flg_tst_LI0_Motor1Control_flag() \
          g_lin_frame_flag_handle_tbl[LI0_Motor1Control]
 #define l_flg_clr_LI0_Motor1Control_flag() \
          g_lin_frame_flag_handle_tbl[LI0_Motor1Control] = 0

 #define l_flg_tst_LI0_Motor1State_Cycl_flag() \
          g_lin_frame_flag_handle_tbl[LI0_Motor1State_Cycl]
 #define l_flg_clr_LI0_Motor1State_Cycl_flag() \
          g_lin_frame_flag_handle_tbl[LI0_Motor1State_Cycl] = 0

 #define l_flg_tst_LI0_Motor1State_Event_flag() \
          g_lin_frame_flag_handle_tbl[LI0_Motor1State_Event]
 #define l_flg_clr_LI0_Motor1State_Event_flag() \
          g_lin_frame_flag_handle_tbl[LI0_Motor1State_Event] = 0

 #define l_flg_tst_LI0_MotorsControl_flag() \
          g_lin_frame_flag_handle_tbl[LI0_MotorsControl]
 #define l_flg_clr_LI0_MotorsControl_flag() \
          g_lin_frame_flag_handle_tbl[LI0_MotorsControl] = 0

 #define l_flg_tst_LI0_SporadicControlFrame_flag() \
          g_lin_frame_flag_handle_tbl[LI0_SporadicControlFrame]
 #define l_flg_clr_LI0_SporadicControlFrame_flag() \
          g_lin_frame_flag_handle_tbl[LI0_SporadicControlFrame] = 0

 #define l_flg_tst_LI0_MasterReq_flag() \
          g_lin_frame_flag_handle_tbl[LI0_MasterReq]
 #define l_flg_clr_LI0_MasterReq_flag() \
          g_lin_frame_flag_handle_tbl[LI0_MasterReq] = 0

 #define l_flg_tst_LI0_SlaveResp_flag() \
          g_lin_frame_flag_handle_tbl[LI0_SlaveResp]
 #define l_flg_clr_LI0_SlaveResp_flag() \
          g_lin_frame_flag_handle_tbl[LI0_SlaveResp] = 0


/* INTERFACE MANAGEMENT */

/*FUNCTION**********************************************************************
 *
 * Function Name : l_ifc_init_interface
 * Description   : This static function call to dynamic function l_ifc_init()
 *
 * Implements    : l_ifc_init_interface_Class
 *END**************************************************************************/

#define l_ifc_init_LI0() l_ifc_init(LI0)


/*FUNCTION**********************************************************************
 *
 * Function Name : l_ifc_wake_up_interface
 * Description   : This static function call to dynamic function l_ifc_wake_up()
 *
 * Implements    : l_ifc_wake_up_interface_Class
 *END**************************************************************************/

#define l_ifc_wake_up_LI0() l_ifc_wake_up(LI0)


/*FUNCTION**********************************************************************
 *
 * Function Name : l_ifc_read_status_interface
 * Description   : This static function call to dynamic function l_ifc_read_status()
 *
 * Implements    : l_ifc_read_status_interface_Class
 *END**************************************************************************/

#define l_ifc_read_status_LI0() l_ifc_read_status(LI0)



#define LI0_DIAGSRV_READ_BY_IDENTIFIER_ORDER       0U
#define LI0_DIAGSRV_ASSIGN_FRAME_ID_RANGE_ORDER       1U

#define LI0_DIAG_NUMBER_OF_SERVICES        2U

#define MAX_LENGTH_SERVICE     6U


#endif /* LIN_CFG_H_ */
