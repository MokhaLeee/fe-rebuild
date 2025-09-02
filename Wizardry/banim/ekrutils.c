#include "common.h"
#include "proc.h"
#include "banim.h"

#include "efx.h"

EWRAM_OVERLAY_ANIM u16 gTmA_Banim[0xB58 / sizeof(u16)];
EWRAM_OVERLAY_ANIM u16 gTmB_Banim[0xB58 / sizeof(u16)];

void EfxTmFillA(u32 val)
{
	u16 * dst = gTmA_Banim;
	CpuFill32(val, dst, sizeof(gTmA_Banim));
}

void EfxTmFillB(u32 val)
{
	u16 * dst = gTmB_Banim;
	CpuFill32(val, dst, sizeof(gTmB_Banim));
}
