#pragma once

#include "common.h"
#include "proc.h"

#if CONFIG_USE_DEBUG

void NewGameTester(void);

/**
 * printf
 */
void kprintf_test(void);

/**
 * BG disp
 */
void StartBgDispTest(ProcPtr proc);

void sprite_test(ProcPtr proc);

#endif
