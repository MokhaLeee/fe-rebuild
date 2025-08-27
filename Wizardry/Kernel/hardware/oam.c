#include "common.h"
#include "hardware.h"
#include "armfunc.h"

struct OamSection {
	u16 *buf;
	void *oam;
	u16 offset;
	u16 count;
};

static struct OamSection sOamHi;
static struct OamSection sOamLo;

u16 gOam[0x200];
u16 *gOamHiPutIt;
u16 *gOamLoPutIt;
struct OamView *gOamAffinePutIt;
u16 gOamAffinePutId;

void InitOam(int loSz)
{
	sOamLo.buf = gOam;
	sOamLo.oam = (void *) OAM;
	sOamLo.offset = 0;
	sOamLo.count = loSz;

	sOamHi.buf = gOam + loSz*4;
	sOamHi.oam = (void *) OAM + loSz*8;
	sOamHi.offset = loSz*8;
	sOamHi.count = 0x80 - loSz;
}

void SyncHiOam(void)
{
	CpuFastCopy(sOamHi.buf, sOamHi.oam, sOamHi.count * 8);
	ClearOam(sOamHi.buf, sOamHi.count);

	gOamHiPutIt = sOamHi.buf;

	gOamAffinePutIt = (struct OamView *) gOam;
	gOamAffinePutId = 0;
}

void SyncLoOam(void)
{
	if (sOamLo.count == 0)
		return;

	CpuFastCopy(sOamLo.buf, sOamLo.oam, sOamLo.count * 8);
	ClearOam(sOamLo.buf, sOamLo.count);

	gOamLoPutIt = sOamLo.buf;
}
