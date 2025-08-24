#include "common.h"

#define __DOUTBUFSIZE 256

/**
 * No$GBA print
 */
#define NOCASHGBAPRINTADDR 0x4FFFA18

void NoCashGBAPrint(const char *pBuf)
{
	*(volatile u32 *)NOCASHGBAPRINTADDR = (u32)pBuf;
}

#if 0
void NoCashGBAPrintf(const char *str, ...)
{
	va_list args;
	char __outstr[__DOUTBUFSIZE];

	va_start(args, str);
	vsnprintf(__outstr,__DOUTBUFSIZE, str, args);
	va_end(args);
	NoCashGBAPrint(__outstr);
}
#endif
