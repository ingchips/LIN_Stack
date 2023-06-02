

#ifndef __MAIN_H__
#define __MAIN_H__

#include <stdint.h>
#include <stdio.h>

#include "eflash.h"
#include "platform_api.h"

#if defined __cplusplus
    extern "C" {
#endif

// release DEBUG=0 RELEASE_VER=1
#define DEBUG 1
#define RELEASE_VER 0

#ifndef DEBUG
    #warning DEBUG should be defined 0 or 1
    #define DEBUG 0
#endif

#ifndef RELEASE_VER
    #warning RELEASE_VER should be defined 0 or 1
    #define RELEASE_VER 1
#endif

#if (DEBUG == 0)
    #define dbg_printf(...)
    #define temp_printf(...)
#else
    #define temp_printf(...) platform_printf(__VA_ARGS__)
    #define dbg_printf(...) platform_printf(__VA_ARGS__)
#endif

#if (RELEASE_VER == 1)
    #define log_printf(...)
#else
    #define log_printf(...) platform_printf(__VA_ARGS__)
#endif

#if defined __cplusplus
    }
#endif


#endif


