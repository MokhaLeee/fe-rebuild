#include "common.h"

__attribute__((section(".iwram_code")))

u32 Checksum32(const void *buf, int size)
{
	int i;
	u32 add_acc = 0;
	u32 xor_acc = 0;
	const u32 *data_u32 = buf;

	for (i = 0; i < size / 4; i++) {
		add_acc += data_u32[i];
		xor_acc ^= data_u32[i];
	}
	return (u16)add_acc + ((u16)xor_acc << 0x10);
}
