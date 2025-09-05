#include "common.h"
#include "proc.h"
#include "bm.h"
#include "hardware.h"
#include "constants/videoalloc_global.h"

#include "utils.h"

struct MuralBackgroundProc {
	/* 00 */ PROC_HEADER;
	/* 29 */ u8 pad_29[0x4C - 0x29];
	/* 4C */ i16 offset;
};

static void BackgroundSlide_Init(struct MuralBackgroundProc * proc)
{
	proc->offset = 0;
}

static void BackgroundSlide_Loop(struct MuralBackgroundProc * proc)
{
	proc->offset++;

	SetBgOffset(3, proc->offset / 4, 0);
	REG_BG3HOFS = proc->offset / 4;
}

static const struct ProcScr ProcScr_BackgroundSlide[] = {
	PROC_CALL(BackgroundSlide_Init),
	PROC_REPEAT(BackgroundSlide_Loop),
	PROC_END,
};

ProcPtr StartMuralBackground(ProcPtr parent, void *vram, int pal)
{
	int i, tileref;
	u16 *tm = gBg3Tm;

	if (vram == NULL)
		vram = ((u8*) VRAM) + GetBgChrOffset(3);

	if (pal < 0)
		pal = BGPAL_MURALBACKGROUND;

	if (gBmSt.flags & BM_FLAG_LINKARENA)
		ApplyPalettes(Pal_LinkArenaMuralBackground, pal, 2);
	else
		ApplyPalettes(Pal_MuralBackground, pal, 2);

	Decompress(Img_MuralBackground, vram);

	tileref = ((((uptr) (vram - GetBgChrOffset(3))) / CHR_SIZE) & 0xFFF) + TILE_PAL_SAFE(pal);

	for (i = 0; i < 0x280; i++)
		*tm++ = i + tileref;

	return SpawnProc(ProcScr_BackgroundSlide, parent);
}

void EndMuralBackground(void)
{
	Proc_EndEach(ProcScr_BackgroundSlide);
}
