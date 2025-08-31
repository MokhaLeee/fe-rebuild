#include "common.h"
#include "bm.h"
#include "proc.h"
#include "hardware.h"

#include "sprite.h"
#include "test.h"

static const u16 Sprite_MapCursorA[] = {
	4,
	OAM0_Y(-4) | OAM0_SHAPE_8x8, OAM1_X(-2)  | OAM1_SIZE_8x8,                           0,
	OAM0_Y(-4) | OAM0_SHAPE_8x8, OAM1_X(+10) | OAM1_SIZE_8x8 | OAM1_HFLIP,              0,
	OAM0_Y(+9) | OAM0_SHAPE_8x8, OAM1_X(-2)  | OAM1_SIZE_8x8 | OAM1_VFLIP,              0,
	OAM0_Y(+9) | OAM0_SHAPE_8x8, OAM1_X(+10) | OAM1_SIZE_8x8 | OAM1_HFLIP | OAM1_VFLIP, 0,
};

static void SpriteTest_Init(ProcPtr proc)
{
	gDispIo.disp_ct.obj_enable = true;

	ApplySystemObjectsGraphics();
}

static void SpriteTest_Loop(ProcPtr proc)
{
	PutSprite(4, 0x10, 0x10,
		Sprite_MapCursorA,
		OAM2_CHR(OBCHR_SYSTEM_OBJECTS + 0x02) + OAM2_PAL(OBPAL_SYSTEM_OBJECTS));
}

static const struct ProcScr ProcScr_SpriteTest[] = {
	PROC_NAME("SpriteTest"),
	PROC_CALL(SpriteTest_Init),
	PROC_YIELD,
	PROC_REPEAT(SpriteTest_Loop),
	PROC_END
};

void sprite_test(ProcPtr proc)
{
	if (proc)
		SpawnProc(ProcScr_SpriteTest, proc);
	else
		SpawnProc(ProcScr_SpriteTest, PROC_TREE_3);
}
