#pragma once

#include "common.h"
#include "proc.h"

typedef u32 AnimScr;
typedef u32 AnimSpriteScr;

enum EkrDistanceType_idx {
	EKR_DISTANCE_CLOSE,
	EKR_DISTANCE_FAR,
	EKR_DISTANCE_FARFAR,
	EKR_DISTANCE_MONOCOMBAT,
	EKR_DISTANCE_PROMOTION,

	EKR_DISTANCE_MAX
};

/* animdrv */
enum {
	// For use with Anim::currentRoundType

	ANIM_ROUND_HIT_CLOSE,
	ANIM_ROUND_CRIT_CLOSE,
	ANIM_ROUND_NONCRIT_FAR,
	ANIM_ROUND_CRIT_FAR,
	ANIM_ROUND_TAKING_MISS_CLOSE,
	ANIM_ROUND_TAKING_MISS_FAR,
	ANIM_ROUND_TAKING_HIT_CLOSE,
	ANIM_ROUND_STANDING,
	ANIM_ROUND_TAKING_HIT_FAR,
	ANIM_ROUND_MISS_CLOSE,
	ANIM_ROUND_MAX,

	ANIM_ROUND_INVALID = -1,
};

void BasUpdateAll(void);

/* banim data */
struct BattleAnim {
	char abbr[12];
	int *modes;
	void *script;
	void *oam_r;
	void *oam_l;
	void *pal;
};

extern struct BattleAnim gBanimTable[];

struct BattleAnimTerrain {
	char abbr[12];
	char * tileset;
	short * palette;
	int null_1; // useless, always 00
};

extern const struct BattleAnimTerrain gBanimTerrainTable[];

struct BanimScrFrame {
	// disassemble of ANIMSCR_FRAME
	u32 prefix;
	const u32 *img;
	u32 oam_offset;
};

/* banim info */
enum banim_faction_palette_idx {
	BANIMPAL_BLUE = 0,
	BANIMPAL_RED = 1,
	BANIMPAL_GREEN = 2,
	BANIMPAL_PURPLE = 3,
};

int GetBanimFactionPalette(u32 faction);

enum banim_sprites_size {
	BAS_SCR_MAX_SIZE = 0x2A00,
	BAS_OAM_MAX_SIZE = 0x5800,
	BAS_IMG_MAX_SIZE = 0x1000,

	BAS_OAM_REF_MAX_SIZE = BAS_OAM_MAX_SIZE - 0x10,
};

extern u8 gBanimScrs[2 * BAS_SCR_MAX_SIZE];
extern u8 gBanimOamBufs[2 * BAS_OAM_MAX_SIZE];
extern u8 gBanimImgSheetBufs[2 * BAS_IMG_MAX_SIZE];

/* EkrMain mini */
struct EkrMainMiniDesc {
	/* 00 */ u8 valid;
	/* 01 */ u8 faction_pal;
	/* 02 */ u16 x, y;
	/* 06 */ u16 bid;

	// i16 chara_pal;

	/* 08 */ u16 round_type;
	/* 0A */ u16 pos;
	/* 0C */ u16 oam2_chr;
	/* 0E */ u16 oam2_pal;
	/* 10 */ struct Anim *anim1, *anim2;
	/* 18 */ u16 *img_buf;
	/* 1C */ u16 *pal_buf;
	/* 20 */ u16 *oam_buf;
	/* 24 */ u8  *scr_buf;
	/* 28 */ const u16 *img_sheet;
	/* 2C */ void *magicfx_desc;
	/* 30 */ ProcPtr proc;
};

void NewEkrUnitMainMini(struct EkrMainMiniDesc *desc);
void EndEkrMainMini(struct EkrMainMiniDesc *desc);

void NewEfxAnimeDrvProc(void);
void EndEfxAnimeDrvProc(void);

void EkrMainMini_UpdateAnim(struct EkrMainMiniDesc *desc);
void EkrMainMini_ChangeAnim(struct EkrMainMiniDesc *desc, int bid);
void EkrMainMini_SetAnimPosition(struct EkrMainMiniDesc *desc, u16 x, u16 y);
void EkrMainMini_SetAnimLayer(struct EkrMainMiniDesc *desc, u16 layer);
bool EkrMainMini_CheckBlocking(struct EkrMainMiniDesc *desc);
void EkrMainMini_EndBlock(struct EkrMainMiniDesc *desc);
bool EkrMainMini_CheckDone(struct EkrMainMiniDesc *desc);

/**
 * EkrTerrainfx
 */
struct EkrTerrainfxDesc {
	/* 00 */ i16 terrain_l;
	/* 02 */ i16 pal_l;
	/* 04 */ i16 chr_l;
	/* 06 */ i16 terrain_r;
	/* 0A */ i16 pal_r;
	/* 08 */ i16 chr_r;
	/* 0C */ i16 distance;
	/* 0E */ i16 bg_index;

	/* 10 */ u16 _pad_10;

	/* 14 */ struct ProcEkrSubAnimeEmulator *proc1;
	/* 18 */ struct ProcEkrSubAnimeEmulator *proc2;
	/* 1C */ int vram_offset;
	/* 20 */ u8 *img_buf;

	/* 24 */ int _pad_24;
};

extern EWRAM_OVERLAY_ANIM struct EkrTerrainfxDesc gEkrTerrainfxDesc;
extern EWRAM_OVERLAY_ANIM struct EkrTerrainfxDesc gEkrLvupTerrainfxDesc;

void NewEkrTerrainfx(struct EkrTerrainfxDesc *desc); // FE8: sub_805AA68
void EndEkrTerrainfx(struct EkrTerrainfxDesc *desc);
void EkrTerrainfx_SetPosition(struct EkrTerrainfxDesc *desc, i16 x1, i16 y1, i16 x2, i16 y2);
void EkrTerrainfx_PutTiles(struct EkrTerrainfxDesc *desc);
void BanimCopyBgTM(i16 distance, i16 pos);
