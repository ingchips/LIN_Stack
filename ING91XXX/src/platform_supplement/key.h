#ifndef __KEY_H__
#define __KEY_H__

#include <stdio.h>
#include <string.h>
#include "profile.h"
#include "ingsoc.h"
#include "platform_api.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "trace.h"
#include "btstack_event.h"


#define USER_MSG_ID_KEY_PRESSED_EVENT          (0x40) // key pressed event.
#define USER_MSG_ID_KEY_RELEASED_EVENT         (0x41) // key released event.


typedef enum
{
    KEY_VALUE_BEGIN=0,
    KEY_VALUE_1,
    KEY_VALUE_2,
    KEY_VALUE_3,
    KEY_VALUE_4   
}key_value_t;
    
void button_msg_handler(btstack_user_msg_t * usrmsg);

void button_test_init(void);


#endif
