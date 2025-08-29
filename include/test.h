#pragma once

#include "common.h"
#include "proc.h"

#if CONFIG_USE_DEBUG
/**
 * printf
 */
void kprintf_test(void);

/**
 * BG disp
 */
void StartBgDispTest(ProcPtr proc);

/**
 * m4a
 */
void m4a_test(void);

#endif
