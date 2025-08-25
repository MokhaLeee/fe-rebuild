#pragma once

#include "common.h"

enum {
	FRAMES_PER_SECOND = 60,
	FRAMES_PER_MINUTE = 60 * FRAMES_PER_SECOND,
	FRAMES_PER_HOUR   = 60 * FRAMES_PER_MINUTE,
};

#ifndef CHR_SIZE
#define CHR_SIZE 0x20
#define CHR_LINE 0x20
#endif

#define IO_ALIGNED(n) ALIGNED(4)

struct IO_ALIGNED(2) DispCnt {
	/* bit  0 */ u16 mode : 3;
	/* bit  3 */ u16 : 1;
	/* bit  4 */ u16 bitmap_frame : 1;
	/* bit  5 */ u16 hblank_interval_free : 1;
	/* bit  6 */ u16 obj_mapping : 1;
	/* bit  7 */ u16 forced_blank : 1;
	/* bit  8 */ u16 bg0_enable : 1;
	/* bit  9 */ u16 bg1_enable : 1;
	/* bit 10 */ u16 bg2_enable : 1;
	/* bit 11 */ u16 bg3_enable : 1;
	/* bit 12 */ u16 obj_enable : 1;
	/* bit 13 */ u16 win0_enable : 1;
	/* bit 14 */ u16 win1_enable : 1;
	/* bit 15 */ u16 objwin_enable : 1;
};

struct IO_ALIGNED(2) DispStat {
	/* bit  0 */ u16 vblank : 1;
	/* bit  1 */ u16 hblank : 1;
	/* bit  2 */ u16 vcount : 1;
	/* bit  3 */ u16 vblank_int_enable : 1;
	/* bit  4 */ u16 hblank_int_enable : 1;
	/* bit  5 */ u16 vcount_int_enable : 1;
	/* bit  6 */ u16 : 2;
	/* bit  8 */ u16 vcount_compare : 8;
};

struct IO_ALIGNED(2) BgCnt {
	/* bit  0 */ u16 priority : 2;
	/* bit  2 */ u16 chr_block : 2;
	/* bit  4 */ u16 : 2;
	/* bit  6 */ u16 mosaic : 1;
	/* bit  7 */ u16 color_depth : 1;
	/* bit  8 */ u16 tm_block : 5;
	/* bit 13 */ u16 wrap : 1;
	/* bit 14 */ u16 size : 2;
};

struct IO_ALIGNED(4) WinCnt {
	u8 win0_enable_bg0 : 1;
	u8 win0_enable_bg1 : 1;
	u8 win0_enable_bg2 : 1;
	u8 win0_enable_bg3 : 1;
	u8 win0_enable_obj : 1;
	u8 win0_enable_blend : 1;
	u8 : 2;

	u8 win1_enable_bg0 : 1;
	u8 win1_enable_bg1 : 1;
	u8 win1_enable_bg2 : 1;
	u8 win1_enable_bg3 : 1;
	u8 win1_enable_obj : 1;
	u8 win1_enable_blend : 1;
	u8 : 2;

	u8 wout_enable_bg0 : 1;
	u8 wout_enable_bg1 : 1;
	u8 wout_enable_bg2 : 1;
	u8 wout_enable_bg3 : 1;
	u8 wout_enable_obj : 1;
	u8 wout_enable_blend : 1;
	u8 : 2;

	u8 wobj_enable_bg0 : 1;
	u8 wobj_enable_bg1 : 1;
	u8 wobj_enable_bg2 : 1;
	u8 wobj_enable_bg3 : 1;
	u8 wobj_enable_obj : 1;
	u8 wobj_enable_blend : 1;
	u8 : 2;
};

struct IO_ALIGNED(2) BlendCnt {
	u16 target1_enable_bg0 : 1;
	u16 target1_enable_bg1 : 1;
	u16 target1_enable_bg2 : 1;
	u16 target1_enable_bg3 : 1;
	u16 target1_enable_obj : 1;
	u16 target1_enable_bd : 1;
	u16 effect : 2;
	u16 target2_enable_bg0 : 1;
	u16 target2_enable_bg1 : 1;
	u16 target2_enable_bg2 : 1;
	u16 target2_enable_bg3 : 1;
	u16 target2_enable_obj : 1;
	u16 target2_enable_bd : 1;
};

struct DispIo {
	/* 00 */ struct DispCnt disp_ct;
	/* 04 */ struct DispStat disp_stat;
	/* 08 */ STRUCT_PAD(0x08, 0x0C);
	/* 0C */ struct BgCnt bg0_ct;
	/* 10 */ struct BgCnt bg1_ct;
	/* 14 */ struct BgCnt bg2_ct;
	/* 18 */ struct BgCnt bg3_ct;
	/* 1C */ struct Vec2u bg_off[4];
	/* 2C */ u8 win0_right, win0_left, win1_right, win1_left;
	/* 30 */ u8 win0_bottom, win0_top, win1_bottom, win1_top;
	/* 34 */ struct WinCnt win_ct;
	/* 38 */ u16 mosaic;
	/* 3A */ STRUCT_PAD(0x3A, 0x3C);
	/* 3C */ struct BlendCnt blend_ct;
	/* 40 */ STRUCT_PAD(0x40, 0x44);
	/* 44 */ u8 blend_coef_a;
	/* 45 */ u8 blend_coef_b;
	/* 46 */ u8 blend_y;
	/* 48 */ u16 bg2pa;
	/* 4A */ u16 bg2pb;
	/* 4C */ u16 bg2pc;
	/* 4E */ u16 bg2pd;
	/* 50 */ u32 bg2x;
	/* 54 */ u32 bg2y;
	/* 58 */ u16 bg3pa;
	/* 5A */ u16 bg3pb;
	/* 5C */ u16 bg3pc;
	/* 5E */ u16 bg3pd;
	/* 60 */ u32 bg3x;
	/* 64 */ u32 bg3y;
	/* 68 */ i8 color_addition;
};

extern struct DispIo gDispIo;

struct KeySt {
	/* 00 */ u8 repeat_delay;    // initial delay before generating auto-repeat presses
	/* 01 */ u8 repeat_interval; // time between auto-repeat presses
	/* 02 */ u8 repeat_clock;    // (decreased by one each frame, reset to repeat_delay when Presses change and repeat_interval when reaches 0)
	/* 04 */ u16 held;           // keys that are currently held down
	/* 06 */ u16 repeated;       // auto-repeated keys
	/* 08 */ u16 pressed;        // keys that went down this frame
	/* 0A */ u16 previous;       // keys that were held down last frame
	/* 0C */ u16 last;
	/* 0E */ u16 ablr_pressed; // 1 for Release (A B L R Only), 0 Otherwise
	/* 10 */ u16 pressed2;
	/* 12 */ u16 time_since_start_select; // Time since last Non-Start Non-Select Button was pressed
};

extern struct KeySt *const gKeySt;

enum {
	BG_0 = 0,
	BG_1,
	BG_2,
	BG_3,
};

enum {
	BG0_SYNC_BIT = (1 << 0),
	BG1_SYNC_BIT = (1 << 1),
	BG2_SYNC_BIT = (1 << 2),
	BG3_SYNC_BIT = (1 << 3),
};
