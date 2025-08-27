#include "common.h"
#include "hardware.h"
#include "bm.h"
#include "utils.h"

u16 EWRAM_DATA gBg0Tm[0x400] = { 0 };
u16 EWRAM_DATA gBg1Tm[0x400] = { 0 };
u16 EWRAM_DATA gBg2Tm[0x400] = { 0 };
u16 EWRAM_DATA gBg3Tm[0x400] = { 0 };

static u8 sBgSyncBits;

void *EWRAM_DATA gBgMapVramTable[4];

void EnableBgSync(int bits)
{
	sBgSyncBits |= bits;
}

void EnableBgSyncById(int bgid)
{
	sBgSyncBits |= (1 << bgid);
}

void DisableBgSync(int bits)
{
	sBgSyncBits &= ~bits;
}

struct BgCnt *GetBgCt(u16 bgid)
{
	switch (bgid) {
	case 0:
		return &gDispIo.bg0_ct;
	case 1:
		return &gDispIo.bg1_ct;
	case 2:
		return &gDispIo.bg2_ct;
	case 3:
		return &gDispIo.bg3_ct;

	default:
		return NULL;
	}
}

int GetBgChrOffset(int bg)
{
	struct BgCnt *bgCt = GetBgCt(bg);

	return bgCt->chr_block *0x4000;
}

int GetBgChrId(int bg, int offset)
{
	offset &= 0xFFFF;

	return (offset - GetBgChrOffset(bg)) / 0x20;
}

int GetBgTilemapOffset(int bg)
{
	struct BgCnt *bgCt = GetBgCt(bg);

	return bgCt->tm_block * 0x800;
}

void SetBgChrOffset(int bg, int offset)
{
	struct BgCnt *bgCt = GetBgCt(bg);
	bgCt->chr_block = offset >> 14;
}

void SetBgTilemapOffset(int bg, int offset)
{
	struct BgCnt *bgCt = GetBgCt(bg);

	if ((offset & 0x7FF) != 0)  // must be aligned
		return;

	bgCt->tm_block = offset >> 11;
	gBgMapVramTable[bg] = (void *) (VRAM | offset);
}

void SetBgScreenSize(int bg, int size)
{
	struct BgCnt *bgCt = GetBgCt(bg);
	bgCt->size = size;
}

void SetBgBpp(int bg, int bpp)
{
	struct BgCnt *bgCt = GetBgCt(bg);
	bgCt->color_depth = (bpp == 8) ? BG_COLORDEPTH_8BPP : BG_COLORDEPTH_4BPP;
}

void SetBgOffset(u16 bgid, u16 x_offset, u16 y_offset)
{
	switch (bgid) {
	case 0:
		gDispIo.bg_off[0].x = x_offset;
		gDispIo.bg_off[0].y = y_offset;
		break;

	case 1:
		gDispIo.bg_off[1].x = x_offset;
		gDispIo.bg_off[1].y = y_offset;
		break;

	case 2:
		gDispIo.bg_off[2].x = x_offset;
		gDispIo.bg_off[2].y = y_offset;
		break;

	case 3:
		gDispIo.bg_off[3].x = x_offset;
		gDispIo.bg_off[3].y = y_offset;
		break;

	}
}

void SyncBgsAndPal(void)
{
	if (sBgSyncBits & BG0_SYNC_BIT)
		CpuFastCopy(gBg0Tm, gBgMapVramTable[0], sizeof gBg0Tm);

	if (sBgSyncBits & BG1_SYNC_BIT)
		CpuFastCopy(gBg1Tm, gBgMapVramTable[1], sizeof gBg1Tm);

	if (sBgSyncBits & BG2_SYNC_BIT)
		CpuFastCopy(gBg2Tm, gBgMapVramTable[2], sizeof gBg2Tm);

	if (sBgSyncBits & BG3_SYNC_BIT)
		CpuFastCopy(gBg3Tm, gBgMapVramTable[3], sizeof gBg3Tm);

	sBgSyncBits = 0;

	if (CheckePalSync() == TRUE)
	{
		CpuFastCopy(gPal, (void *) PLTT, sizeof gPal);
		DisablePalSync();
	}
}

void TmFill(u16 *dest, int tileref)
{
	tileref = tileref + (tileref << 16);
	CpuFastFill(tileref, dest, sizeof gBg0Tm);
}

void SetBlankChr(int chr)
{
	RegisterDataFill(0, (void *)(VRAM + 0x20 * chr), 0x20);
}

void InitBgs(u16 const *config)
{
	static const u16 default_config[] = {
		// tile offset  map offset  size id
		0x0000,         0x6000,     BG_SIZE_256x256, // BG 0
		0x0000,         0x6800,     BG_SIZE_256x256, // BG 1
		0x0000,         0x7000,     BG_SIZE_256x256, // BG 2
		0x8000,         0x7800,     BG_SIZE_256x256, // BG 3
	};

	int i;

	if (config == NULL)
		config = default_config;

#if 1
	gDispIo.bg0_ct = (struct BgCnt){ 0 };
	gDispIo.bg1_ct = (struct BgCnt){ 0 };
	gDispIo.bg2_ct = (struct BgCnt){ 0 };
	gDispIo.bg3_ct = (struct BgCnt){ 0 };
#else
	*(u16 *) &gDispIo.bg0_ct = 0;
	*(u16 *) &gDispIo.bg1_ct = 0;
	*(u16 *) &gDispIo.bg2_ct = 0;
	*(u16 *) &gDispIo.bg3_ct = 0;
#endif

	gDispIo.disp_ct.forced_blank = FALSE;
	gDispIo.disp_ct.mode = 0;

	SetDispEnable(1, 1, 1, 1, 1);
	SetWinEnable(0, 0, 0);

	for (i = 0; i < 4; i++) {
		SetBgChrOffset(i, *config++);
		SetBgTilemapOffset(i, *config++);
		SetBgScreenSize(i, *config++);

		SetBgOffset(i, 0, 0);
		TmFill(GetBgTilemap(i), 0);
	}

	InitBmBgLayers();

	EnableBgSync(BG0_SYNC_BIT + BG1_SYNC_BIT + BG2_SYNC_BIT + BG3_SYNC_BIT);

	InitOam(0);

	PAL_COLOR(0, 0) = 0;
	EnablePalSync();
}

u16 *GetBgTilemap(int bg)
{
	static u16 *const lut[] = {
		gBg0Tm,
		gBg1Tm,
		gBg2Tm,
		gBg3Tm,
	};

	return lut[bg];
}
