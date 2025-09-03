#pragma once

#include "common.h"
#include "printf.h"

/**
 * Always print to STDOUT regardless on debug config
 */
#if !defined(CONFIG_DEBUG_LEVEL)
#define CONFIG_DEBUG_LEVEL 0
#endif

/* debug levels */
#define CRITICAL 0
#define ALWAYS 0
#define INFO 1
#define SPEW 2

#define dprintf(level, x...) \
do { \
	if ((level) <= CONFIG_DEBUG_LEVEL) { \
		printf(x); \
	} \
} while (0)

#define fmt_printf(level, format, ...) \
	dprintf(level, "(%s): "format, __func__, ##__VA_ARGS__)

#define LTRACEF(format, ...) \
do { \
	if (LOCAL_TRACE) { \
		fmt_printf(SPEW, format, ##__VA_ARGS__); \
	} \
} while (0)

#define Errorf(format, ...) \
	fmt_printf(CRITICAL, format, ##__VA_ARGS__)

#define Assert(condition) \
do { \
	if (!(condition)) { \
		fmt_printf(CRITICAL, "Assertion failed: " #condition); \
		hang(); \
	} \
} while (0)
