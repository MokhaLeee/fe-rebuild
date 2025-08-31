#pragma once

#include "common.h"
#include "irq.h"

enum {
	FRAMES_PER_SECOND = 60,
	FRAMES_PER_MINUTE = 60 *FRAMES_PER_SECOND,
	FRAMES_PER_HOUR   = 60 *FRAMES_PER_MINUTE,
};

#ifndef CHR_SIZE
#define CHR_SIZE 0x20
#define CHR_LINE 0x20
#endif

/**
 *Disp IO
 */
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

void SyncDispIo(void);
void SetOnVBlank(IrqFunc func);
void SetOnVMatch(IrqFunc func);
void SetNextVCount(int vcount);
void SetVCount(int vcount);

#define SetDispEnable(bg0, bg1, bg2, bg3, obj) \
    gDispIo.disp_ct.bg0_enable = (bg0); \
    gDispIo.disp_ct.bg1_enable = (bg1); \
    gDispIo.disp_ct.bg2_enable = (bg2); \
    gDispIo.disp_ct.bg3_enable = (bg3); \
    gDispIo.disp_ct.obj_enable = (obj)

#define SetWinEnable(win0, win1, objwin) \
    gDispIo.disp_ct.win0_enable = (win0); \
    gDispIo.disp_ct.win1_enable = (win1); \
    gDispIo.disp_ct.objwin_enable = (objwin)

#define SetWin0Box(left, top, right, bottom) \
    gDispIo.win0_left = (left); \
    gDispIo.win0_top = (top); \
    gDispIo.win0_right = (right); \
    gDispIo.win0_bottom = (bottom)

#define SetWin1Box(left, top, right, bottom) \
    gDispIo.win1_left = (left); \
    gDispIo.win1_top = (top); \
    gDispIo.win1_right = (right); \
    gDispIo.win1_bottom = (bottom)

#define SetWin0Layers(bg0, bg1, bg2, bg3, obj) \
    gDispIo.win_ct.win0_enable_bg0 = (bg0); \
    gDispIo.win_ct.win0_enable_bg1 = (bg1); \
    gDispIo.win_ct.win0_enable_bg2 = (bg2); \
    gDispIo.win_ct.win0_enable_bg3 = (bg3); \
    gDispIo.win_ct.win0_enable_obj = (obj)

#define SetWin1Layers(bg0, bg1, bg2, bg3, obj) \
    gDispIo.win_ct.win1_enable_bg0 = (bg0); \
    gDispIo.win_ct.win1_enable_bg1 = (bg1); \
    gDispIo.win_ct.win1_enable_bg2 = (bg2); \
    gDispIo.win_ct.win1_enable_bg3 = (bg3); \
    gDispIo.win_ct.win1_enable_obj = (obj)

#define SetWObjLayers(bg0, bg1, bg2, bg3, obj) \
    gDispIo.win_ct.wobj_enable_bg0 = (bg0); \
    gDispIo.win_ct.wobj_enable_bg1 = (bg1); \
    gDispIo.win_ct.wobj_enable_bg2 = (bg2); \
    gDispIo.win_ct.wobj_enable_bg3 = (bg3); \
    gDispIo.win_ct.wobj_enable_obj = (obj)

#define SetWOutLayers(bg0, bg1, bg2, bg3, obj) \
    gDispIo.win_ct.wout_enable_bg0 = (bg0); \
    gDispIo.win_ct.wout_enable_bg1 = (bg1); \
    gDispIo.win_ct.wout_enable_bg2 = (bg2); \
    gDispIo.win_ct.wout_enable_bg3 = (bg3); \
    gDispIo.win_ct.wout_enable_obj = (obj)

#define SetBlendConfig(eff, ca, cb, cy) \
    gDispIo.blend_ct.effect = (eff); \
    gDispIo.blend_coef_a = (ca); \
    gDispIo.blend_coef_b = (cb); \
    gDispIo.blend_y = (cy)

#define SetBlendAlpha(ca, cb) \
    SetBlendConfig(BLEND_EFFECT_ALPHA, (ca), (cb), 0)

#define SetBlendBrighten(cy) \
    SetBlendConfig(BLEND_EFFECT_BRIGHTEN, 0, 0, (cy))

#define SetBlendDarken(cy) \
    SetBlendConfig(BLEND_EFFECT_DARKEN, 0, 0, (cy))

#define SetBlendNone() \
    SetBlendConfig(BLEND_EFFECT_NONE, 0x10, 0, 0)

/**
 *Key
 */
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

void RefreshKeyStFromKeys(struct KeySt *keySt, short keys);
void RefreshKeySt(struct KeySt *keySt);
void ClearKeySt(struct KeySt *keySt);
void InitKeySt(struct KeySt *keySt);

/**
 *BG
 */
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

#define TM_OFFSET(x, y) (((y) << 5) + (x))

#define TILE_CHR_SAFE(chr) ((chr) & 0x3FF)
#define TILE_PAL_SAFE(pal) (((pal) & 0xF) << 12)
#define TILEREF(chr, pal) ((chr) + ((pal) << 12))
#define TILE_HFLIP 0x0400
#define TILE_VFLIP 0x0800

extern u16 EWRAM_DATA gBg0Tm[0x400];
extern u16 EWRAM_DATA gBg1Tm[0x400];
extern u16 EWRAM_DATA gBg2Tm[0x400];
extern u16 EWRAM_DATA gBg3Tm[0x400];

struct BgCnt *GetBgCt(u16 bgid);
int GetBgChrOffset(int bg);
int GetBgChrId(int bg, int offset);
int GetBgTilemapOffset(int bg);
void SetBgChrOffset(int bg, int offset);
void SetBgTilemapOffset(int bg, int offset);
void SetBgScreenSize(int bg, int size);
void SetBgBpp(int bg, int bpp);
void SetBgOffset(u16 bgid, u16 x_offset, u16 y_offset);
void SyncBgsAndPal(void);
void TmFill(u16 *dest, int tileref);
void SetBlankChr(int chr);
void InitBgs(u16 const *config);
u16 *GetBgTilemap(int bg);

void EnableBgSync(int bits);
void EnableBgSyncById(int bgid);
void DisableBgSync(int bits);

/**
 *Pal
 */
extern u16 EWRAM_DATA gPal[0x200];

void ApplyPaletteExt(void const *data, int startOffset, int size);

#define PAL_COLOR_OFFSET(palid, colornum) (palid) *0x10 + (colornum)
#define PAL_OFFSET(palid) PAL_COLOR_OFFSET((palid), 0)
#define BGPAL_OFFSET(bgpal) PAL_OFFSET(0x00 + (bgpal))
#define OBPAL_OFFSET(obpal) PAL_OFFSET(0x10 + (obpal))

#define PAL_COLOR(palid, colornum) gPal[(palid) *0x10 + (colornum)]
#define PAL_BG_COLOR(palid, colornum) PAL_COLOR(palid, colornum)
#define PAL_OBJ_COLOR(palid, colornum) PAL_COLOR((palid) + 0x10, colornum)

#define PAL_BG(palid) (&PAL_BG_COLOR(palid, 0))
#define PAL_OBJ(palid) (&PAL_OBJ_COLOR(palid, 0))

#define ApplyPalettes(src, num, count) ApplyPaletteExt((src), 0x20 *(num), 0x20 *(count))
#define ApplyPalette(src, num) ApplyPalettes((src), (num), 1)

#define ApplyBgPalettes ApplyPalettes
#define ApplyBgPalette ApplyPalette
#define ApplyObPalettes(src, num, count) ApplyPalettes((src), 0x10 + (num), (count))
#define ApplyObPalette(src, num) ApplyPalette((src), 0x10 + (num))

void EnablePalSync(void);
void DisablePalSync(void);
bool CheckePalSync(void);

/**
 *oam
 */
struct OamView { u16 oam0, oam1, oam2, aff; };

extern u16 gOam[0x200];
extern u16 *gOamHiPutIt;
extern u16 *gOamLoPutIt;
extern struct OamView *gOamAffinePutIt;
extern u16 gOamAffinePutId;

void InitOam(int loSz);
int GetOamSplice(void);
void SyncHiOam(void);
void SyncLoOam(void);
void SetObjAffine(int id, fi16 pa, fi16 pb, fi16 pc, fi16 pd);

#define OAM0_Y(ay)          ((ay) & 0x00FF)
#define OAM0_Y_MASK         0x00FF
#define OAM0_AFFINE_ENABLE  0x0100
#define OAM0_DOUBLESIZE     0x0200
#define OAM0_DISABLE        0x0200
#define OAM0_BLEND          0x0400
#define OAM0_WINDOW         0x0800
#define OAM0_MOSAIC         0x1000
#define OAM0_256COLORS      0x2000
#define OAM0_SHAPE_8x8      0x0000
#define OAM0_SHAPE_16x16    0x0000
#define OAM0_SHAPE_32x32    0x0000
#define OAM0_SHAPE_64x64    0x0000
#define OAM0_SHAPE_16x8     0x4000
#define OAM0_SHAPE_32x8     0x4000
#define OAM0_SHAPE_32x16    0x4000
#define OAM0_SHAPE_64x32    0x4000
#define OAM0_SHAPE_8x16     0x8000
#define OAM0_SHAPE_8x32     0x8000
#define OAM0_SHAPE_16x32    0x8000
#define OAM0_SHAPE_32x64    0x8000

#define OAM1_X(ax)          ((ax) & 0x01FF)
#define OAM1_X_MASK         0x01FF
#define OAM1_AFFINE_ID(ai)  (((ai) << 9) & 0x3E00)
#define OAM1_AFFINE_ID_MASK 0x3E00
#define OAM1_HFLIP          0x1000
#define OAM1_VFLIP          0x2000
#define OAM1_SIZE_8x8       0x0000
#define OAM1_SIZE_16x8      0x0000
#define OAM1_SIZE_8x16      0x0000
#define OAM1_SIZE_16x16     0x4000
#define OAM1_SIZE_32x8      0x4000
#define OAM1_SIZE_8x32      0x4000
#define OAM1_SIZE_32x32     0x8000
#define OAM1_SIZE_32x16     0x8000
#define OAM1_SIZE_16x32     0x8000
#define OAM1_SIZE_64x64     0xC000
#define OAM1_SIZE_64x32     0xC000
#define OAM1_SIZE_32x64     0xC000

#define OAM2_CHR(ac)        ((ac) & 0x03FF)
#define OAM2_CHR_MASK       0x03FF
#define OAM2_LAYER(al)      (((al) & 0x3) *0x0400)
#define OAM2_LAYER_MASK     0x0C00
#define OAM2_PAL(ap)        (((ap) & 0xF) *0x1000)
#define OAM2_PAL_MASK       0xF000

#define SetObjAffineAuto(id, angle, x_scale, y_scale) \
    SetObjAffine((id), \
        Div(+COS_Q12((angle)) << 4, (x_scale)), \
        Div(-SIN_Q12((angle)) << 4, (y_scale)), \
        Div(+SIN_Q12((angle)) << 4, (x_scale)), \
        Div(+COS_Q12((angle)) << 4, (y_scale)))

/**
 *time
 */
u32 GetGameTime(void);
void SetGameTime(u32 time);
void IncGameTime(void);
bool FormatTime(u32 time, u16 *hours, u16 *minutes, u16 *seconds);

/**
 *misc
 */
void SoftResetIfKeyCombo(void);
