#include "common.h"
#include "test.h"

void kprintf_test(void)
{
	uint32_t sp[2] = { 0x08090A0B, 0x03040201 };

	printf("helloworld");
	printf("helloworld %09d %s", 2, "hello");
	printf("local sp:%p, 0x%08lX, %#lX", sp, sp[0], sp[1]);
	printf("%% i: %i", 0x090807);
	printf("%% -: %08d", -980);
}
