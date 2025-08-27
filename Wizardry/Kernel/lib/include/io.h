#pragma once

#include "common.h"

#define MGBA_LOG_FATAL 0
#define MGBA_LOG_ERROR 1
#define MGBA_LOG_WARN 2
#define MGBA_LOG_INFO 3
#define MGBA_LOG_DEBUG 4

extern int mgba_print_level;

void mgba_print(const char *buf);
bool mgba_open(void);
void mgba_close(void);

void nocashgba_print(const char *buf);
