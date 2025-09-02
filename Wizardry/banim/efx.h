#pragma once

#include "common.h"
#include "banim.h"
#include "animdrv.h"

enum video_banim {
	BGPAL_EFX_0 = 0,
	BGPAL_EFX_SPELL_BG = 1,
	BGPAL_EFX_2 = 2,
	BGPAL_EFX_3 = 3,
	BGPAL_EFX_4 = 4,
	BGPAL_EFXDRAGON_L = 6,
	BGPAL_EFXDRAGON_R = 7,

	OBPAL_EFX_SYSTEM_OBJ = 0,
	OBPAL_EFX_SPELL_BG = 1,
	OBPAL_EFX_SPELL_OBJ = 2,
	OBPAL_EFX_FACE = 3,
	OBPAL_EFX_5 = 5,
	OBPAL_EFX_BG = 6,
	OBPAL_EFX_UNIT_L = 7,
	OBPAL_EFX_UNIT_BAK_L = 8,
	OBPAL_EFX_UNIT_R = 9,
	OBPAL_EFX_UNIT_BAK_R = 10,
	OBPAL_EFXHPBAR_L = 11,
	OBPAL_EFXHPBAR_R = 12,
	OBPAL_EFX_ITEM_L = 13,
	OBPAL_EFX_ITEM_R = 14,

	VRAMOFF_BANIM_SPELL_OBJ = 0x0800,
	VRAMOFF_BANIM_SPELL_BG  = 0x2000,
	VRAMOFF_BANIM_8000 = 0x8000,

	VRAMOFF_OBJ_EKRGAUGE_SUBFIX = 0x3800,
	VRAMOFF_OBJ_EKRGAUGE_NUM_L  = 0x3A00,
	VRAMOFF_OBJ_EKRGAUGE_ICON_L = 0x3B80,
	VRAMOFF_OBJ_EKRGAUGE_ICON_R = 0x3BC0,
	VRAMOFF_OBJ_EKRGAUGE_ARROW  = 0x3C00,
	VRAMOFF_OBJ_EKRGAUGE_NUM_R  = 0x3E00,
	VRAMOFF_OBJ_4000            = 0x4000,
	VRAMOFF_OBJ_6000            = 0x6000,

	VRAMOFF_BG_EKRLVUP_FONT = 0x2400,
};

enum ekr_hit {
	EKR_HITTED = 0,
	EKR_MISS
};

enum anim_round_type {
	ANIM_ROUND_BIT8 = 0x0100,
	ANIM_ROUND_PIERCE = 0x0200,
	ANIM_ROUND_GREAT_SHIELD = 0x0400,
	ANIM_ROUND_SURE_SHOT = 0x0800,
	ANIM_ROUND_SILENCER = 0x1000,
	ANIM_ROUND_POISON = 0x2000,
	ANIM_ROUND_BIT14 = 0x4000,
	ANIM_ROUND_DEVIL = 0x8000,    
};

enum banim_mode_index {
	BANIM_MODE_NORMAL_ATK,
	BANIM_MODE_NORMAL_ATK_PRIORITY_L,
	BANIM_MODE_CRIT_ATK,
	BANIM_MODE_CRIT_ATK_PRIORITY_L,
	BANIM_MODE_RANGED_ATK,
	BANIM_MODE_RANGED_CRIT_ATK,
	BANIM_MODE_CLOSE_DODGE,
	BANIM_MODE_RANGED_DODGE,
	BANIM_MODE_STANDING,
	BANIM_MODE_STANDING2,
	BANIM_MODE_RANGED_STANDING,
	BANIM_MODE_MISSED_ATK,

	BANIM_MODE_INVALID = -1,
};

#define ANIM_REF_OFFSET(off_ref_round, off_ref_pos) ((off_ref_round) * 2 + off_ref_pos)

extern EWRAM_DATA i16 gEkrDistanceType;

extern const u8 BanimDefaultModeConfig[ANIM_ROUND_MAX * 4];

int GetAnimLayer(struct Anim *anim);
int GetAnimPosition(struct Anim *anim);

/**
 * Ekrmain
 */
extern EWRAM_OVERLAY_ANIM u32 gEkrInitPosReal;

extern const AnimScr AnimScr_DefaultAnim[];

void NewEkrChienCHR(struct Anim *anim);
void SyncBanimImage(struct Anim *anim);

/**
 * EkrUtils
 */
extern EWRAM_OVERLAY_ANIM u16 gTmA_Banim[0xB58 / sizeof(u16)];
extern EWRAM_OVERLAY_ANIM u16 gTmB_Banim[0xB58 / sizeof(u16)];

void EfxTmFillA(u32 val);
void EfxTmFillB(u32 val);

/**
 * EfxUtils
 */
void func_fe6_0805B01C(u16 *tm, u16 width, u16 height, int pal, int chr);
void FillBGRect(u16 *tm, u16 width, u16 height, int pal, int chr);
void func_fe6_0805B0D4(u16 *tm, u16 width, u16 height, int pal, int chr);
void EfxTmModifyPal(u16 *tm, u16 width, u16 height);
void EfxTmCpyBG(const void *ptr1, void *ptr2, u16 width, u16 height, int pal, int chr);
void EfxTmCpyBgHFlip(const u16 *tsa, u16 *tm, u16 width, u16 height, int pal, int chr);
void EfxTmCpyExt(const u16 *src, i16 src_width, u16 *dst, i16 dst_width, u16 width, u16 hight, int pal, int chr);
void EfxTmCpyExtHFlip(const u16 *src, i16 src_width, u16 *dst, i16 dst_width, u16 width, u16 hight, int pal, int chr);
void func_fe6_0805B380(u16 *tm, int arg1, int arg2);

struct ProcEkrSubAnimeEmulator {
	PROC_HEADER;

	/* 29 */ u8 type;
	/* 2A */ u8 valid;
	/* 2C */ i16 timer;
	/* 2E */ i16 scr_cur;

	STRUCT_PAD(0x30, 0x32);

	/* 32 */ i16 x1;
	/* 34 */ i16 x2;

	STRUCT_PAD(0x36, 0x3A);

	/* 3A */ i16 y1;
	/* 3C */ i16 y2;

	STRUCT_PAD(0x3E, 0x44);

	/* 44 */ const u32 *anim_scr;
	/* 48 */ const void *sprite;
	/* 4C */ int oam2Base;
	/* 50 */ int oamBase;
};
struct ProcEkrSubAnimeEmulator *NewEkrsubAnimeEmulator(
	int x, int y, const u32 *anim_scr, int type, int oam2Base, int oamBase, ProcPtr parent);

/**
 * Efxmagic mini
 */
void StartClassReelSpellAnim(struct Anim *anim);
