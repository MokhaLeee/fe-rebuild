#include "common.h"

u32 k_udiv(u32 a, u32 b)
{
	u32 ret = 0;
	u32 tmp_a = a;
	u64 tmp_b = b;

	if (b == 0)
		return 0;

	while (tmp_b <= a)
		tmp_b = tmp_b << 1;

	while (tmp_b > b) {
		tmp_b = tmp_b >> 1;
		ret = ret << 1;

		if (tmp_a >= tmp_b) {
			tmp_a = tmp_a - tmp_b;
			ret = ret | 1;
		}
	}

	return ret;
}

u32 k_umod(u32 a, u32 b)
{
	u32 ret = 0;
	u32 tmp_a = a;
	u64 tmp_b = b;

	if (b == 0)
		return 0;

	while (tmp_b <= a)
		tmp_b = tmp_b << 1;

	while (tmp_b > b) {
		tmp_b = tmp_b >> 1;

		if (tmp_a >= tmp_b)
			tmp_a = tmp_a - tmp_b;
	}

	ret = tmp_a;

	return ret;
}

u64 k_u64div(u64 a, u64 b)
{
	u64 ret = 0;
	u64 tmp_a = a;
	u64 tmp_b = b;

	if (b == 0)
		return 0;

	while (tmp_b <= a)
		tmp_b = tmp_b << 1;

	while (tmp_b > b) {
		tmp_b = tmp_b >> 1;
		ret = ret << 1;

		if (tmp_a >= tmp_b) {
			tmp_a = tmp_a - tmp_b;
			ret = ret | 1;
		}
	}

	return ret;
}

u64 k_u64mod(u64 a, u64 b)
{
	u64 ret = 0;
	u64 tmp_a = a;
	u64 tmp_b = b;

	if (b == 0)
		return 0;

	while (tmp_b <= a)
		tmp_b = tmp_b << 1;

	while (tmp_b > b) {
		tmp_b = tmp_b >> 1;

		if (tmp_a >= tmp_b)
			tmp_a = tmp_a - tmp_b;
	}

	ret = tmp_a;
	return ret;
}

u32 k_udiv10(u32 n)
{
	// 0xCCCCCCCD = (2^35 + 2) / 10
	return ((u64)n * 0xCCCCCCCD) >> 35;
}

u32 k_umod10(u32 n)
{
	return n - k_udiv10(n) * 10;
}
