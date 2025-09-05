#include "common.h"
#include "hardware.h"
#include "utils.h"
#include "text.h"
#include "face.h"
#include "icon.h"
#include "map.h"
#include "unitsprite.h"
#include "constants/videoalloc_global.h"

#include "bm.h"

extern u8 const Img_SystemObjects[];
extern u16 const Pal_SystemObjects[];

void ApplySystemObjectsGraphics(void)
{
	Decompress(Img_SystemObjects, gBuf);
	Copy2dChr(gBuf, OBJ_VRAM0 + CHR_SIZE * OBCHR_SYSTEM_OBJECTS, 18, 4);

	ApplyPalettes(Pal_SystemObjects, 0x10 + OBPAL_SYSTEM_OBJECTS, 2);
}

void ApplySystemGraphics(void)
{
	ResetText();
	UnpackUiWindowFrameGraphics();
	InitFaces();
	InitIcons();
	ApplyIconPalettes(BGPAL_ICONS);
	ApplySystemObjectsGraphics();
}

void InitBmDisplay(void)
{
	InitBgs(NULL);
	ApplySystemGraphics();
	ApplyChapterMapGraphics(gPlaySt.chapter);
	AllocWeatherParticles(gPlaySt.weather);
	RenderMap();
	RefreshUnitSprites();
	ApplyUnitSpritePalettes();
	ForceSyncUnitSpriteSheet();
	InitSystemTextFont();
}
