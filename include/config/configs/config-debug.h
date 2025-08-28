#ifndef CONFIG_DEBUG_H
#define CONFIG_DEBUG_H

#define CONFIG_USE_DEBUG 1

/* dprintf log level */
#define CONFIG_DEBUG_LEVEL 2

/* Tests */
#if CONFIG_USE_DEBUG
	#define CONFIG_DEBUG_PRINTF_TEST 0
	#define CONFIG_DEBUG_BGDISP_TEST 1
#endif /* USE_DEBUG */

#endif
