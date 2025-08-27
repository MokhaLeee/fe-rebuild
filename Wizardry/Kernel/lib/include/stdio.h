#pragma once

#include "common.h"

struct io_handle;

struct io_handle {
	size_t (*write)(FILE *fp, const char *buf, size_t len);
	size_t (*read)(FILE *fp, char *buf, size_t len);
};

extern FILE __stdio_FILEs[3];

#define stdin  (&__stdio_FILEs[0])
#define stdout (&__stdio_FILEs[1])
#define stderr (&__stdio_FILEs[2])
