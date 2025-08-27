#pragma once

#include "common.h"

int vsnprintf(char *str, size_t len, const char *fmt, va_list ap);
int vsprintf(char *str, const char *fmt, va_list ap);
int vfprintf(FILE *fp, const char *fmt, va_list ap);
