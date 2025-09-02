#include "common.h"
#include "proc.h"
#include "utils.h"
#include "hardware.h"

#if CONFIG_DEBUG_TEST_BGDISP

enum video_allocs_bgdisptest {
	BGCHR_BGDISP_TEST_MURALBG = 0,
	BGPAL_BGDISP_TEST_MURALBG = 14,
};

extern const u16 Img_MuralBackground[];
extern const u16 Pal_MuralBackground[];

static void BgDispTest_InitDisp(ProcPtr proc)
{
	InitBgs(NULL);

	gDispIo.bg0_ct.priority = 0;
	gDispIo.bg2_ct.priority = 1;
	gDispIo.bg1_ct.priority = 2;
	gDispIo.bg3_ct.priority = 3;

	SetBgOffset(0, 0, 0);
	SetBgOffset(1, 0, 0);
	SetBgOffset(2, 0, 0);
	SetBgOffset(3, 0, 0);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	TmFill(gBg3Tm, 0);

	// SetDispEnable(0, 0, 0, 1, 0);
}

static void BgDispTest_PutBG(ProcPtr proc)
{
	int i;
	u8 *vram_dst = (u8 *)BG_VRAM + GetBgChrOffset(BG_3) + BGCHR_BGDISP_TEST_MURALBG * CHR_SIZE;
	int tile_ref = OAM2_CHR(BGCHR_BGDISP_TEST_MURALBG) + OAM2_PAL(BGPAL_BGDISP_TEST_MURALBG) + OAM2_LAYER(0);

	Decompress(Img_MuralBackground, vram_dst);
	ApplyPalettes(Pal_MuralBackground, BGPAL_BGDISP_TEST_MURALBG, 2);

	for (i = 0; i < 0x280; i++)
		gBg3Tm[i] = i + tile_ref;

	EnableBgSync(BG3_SYNC_BIT);
}

static const struct ProcScr ProcScr_BgDispTest[] = {
	PROC_NAME("BgDispTest"),
	PROC_CALL(BgDispTest_InitDisp),
	PROC_CALL(BgDispTest_PutBG),
	PROC_CALL(StartMidFadeFromBlack),
	PROC_REPEAT(WhileFadeExists),

	PROC_END
};

void StartBgDispTest(ProcPtr proc)
{
	SpawnProc(ProcScr_BgDispTest, proc);
}

#endif
