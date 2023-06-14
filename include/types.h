#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <limits.h>

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t   s8;
typedef int16_t  s16;
typedef int32_t  s32;
typedef int64_t  i64;

typedef float  f32;
typedef double f64;

#if defined(MODERN) && MODERN

typedef s32 fs8;
typedef s32 fs16;
typedef u32 fu8;
typedef u32 fu16;

#else

typedef s8  fs8;
typedef s16 fs16;
typedef u8  fu8;
typedef u16 fu16;

#endif

typedef u8  volatile vu8;
typedef u16 volatile vu16;
typedef u32 volatile vu32;
typedef u64 volatile vu64;
typedef s8  volatile vs8;
typedef s16 volatile vs16;
typedef s32 volatile vs32;
typedef i64 volatile vi64;

typedef intptr_t  iptr;
typedef uintptr_t uptr;

// TODO: move types below

typedef void (* Func)(void);

struct Vec2i {
    s16 x, y;
};

struct Vec2u {
    u16 x, y;
};
