#pragma once

#include "../common/types.h"

// a / b
u32 k_udiv(u32 a, u32 b);
u64 k_u64div(u64 a, u64 b);

// a % b
u32 k_umod(u32 a, u32 b);
u64 k_u64mod(u64 a, u64 b);

// n / 10
u32 k_udiv10(u32 n);

// n % 10
u32 k_umod10(u32 n);
