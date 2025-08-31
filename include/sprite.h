#pragma once

#include "common.h"
#include "proc.h"

struct SpriteProc {
	/* 00 */ PROC_HEADER;

	/* 2C */ int x;
	/* 30 */ int y;

	/* 34 */ u8 pad_34[0x50 - 0x34];

	/* 50 */ i16 layer;
	/* 52 */ u16 tileref;
	/* 54 */ const u16 *object;
};

extern const u16 Sprite_8x8[];
extern const u16 Sprite_16x16[];
extern const u16 Sprite_32x32[];
extern const u16 Sprite_64x64[];
extern const u16 Sprite_8x16[];
extern const u16 Sprite_16x32[];
extern const u16 Sprite_32x64[];
extern const u16 Sprite_16x8[];
extern const u16 Sprite_32x16[];
extern const u16 Sprite_64x32[];
extern const u16 Sprite_32x8[];
extern const u16 Sprite_8x32[];
extern const u16 Sprite_32x8_VFlipped[];
extern const u16 Sprite_8x16_HFlipped[];
extern const u16 Sprite_8x8_HFlipped[];
extern const u16 Sprite_8x8_VFlipped[];
extern const u16 Sprite_8x8_HFlipped_VFlipped[];
extern const u16 Sprite_16x16_VFlipped[];

void PutSpriteAffine(int id, short pa, short pb, short pc, short pd);
void ClearSprites(void);
void PutSprite(int layer, int x, int y, const u16 *object, int oam2);
void PutSpriteExt(int layer, int x_oam1, int y_oam0, const u16 *object, int oam2);
void PutSpriteLayerOam(int layer);

struct SpriteProc *StartSpriteRefresher(ProcPtr parent, int layer, int x, int y, const u16 *object, int tileref);
void MoveSpriteRefresher(struct SpriteProc *proc, int x, int y);
