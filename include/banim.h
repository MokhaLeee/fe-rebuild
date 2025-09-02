#pragma once

#include "common.h"
#include "proc.h"

/* animdrv */
void BasUpdateAll(void);

/* banim data */
struct BattleAnim {
	char abbr[12];
	int * modes;
	void * script;
	void * oam_r;
	void * oam_l;
	void * pal;
};

extern struct BattleAnim gBanimTable[];

struct BanimScrFrame {
	// disassemble of ANIMSCR_FRAME
	u32 prefix;
	const u32 *img;
	u32 oam_offset;
};

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

void EkrMainMini_ChangeAnim(struct EkrMainMiniDesc *desc, int bid);
void EkrMainMini_SetAnimPosition(struct EkrMainMiniDesc *desc, u16 x, u16 y);
void EkrMainMini_SetAnimLayer(struct EkrMainMiniDesc *desc, u16 layer);
bool EkrMainMini_CheckBlocking(struct EkrMainMiniDesc *desc);
void EkrMainMini_EndBlock(struct EkrMainMiniDesc *desc);
bool EkrMainMini_CheckDone(struct EkrMainMiniDesc *desc);
