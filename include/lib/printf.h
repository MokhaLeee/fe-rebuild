#pragma once

#include "../common/types.h"
#include <string.h>
#include <stdarg.h>

#ifndef __PRINTFLIKE
#define __PRINTFLIKE(__fmt,__varargs) __attribute__((__format__ (__printf__, __fmt, __varargs)))
#endif

/**
 * stdio
 */
void io_init(void);

/**
 * console
 */
int sprintf(char *str, const char *fmt, ...) __PRINTFLIKE(2, 3);
int snprintf(char *str, size_t len, const char *fmt, ...) __PRINTFLIKE(3, 4);
int fprintf(FILE *fp, const char *fmt, ...) __PRINTFLIKE(2, 3);
int printf(const char *fmt, ...) __PRINTFLIKE(1, 2);
