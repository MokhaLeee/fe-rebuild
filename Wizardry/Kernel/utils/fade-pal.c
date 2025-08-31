#include "common.h"
#include "proc.h"
#include "utils.h"
#include "armfunc.h"
#include "hardware.h"

struct PalFadeSt {
	/* 00 */ u16 from_colors[0x10];
	/* 20 */ const u16 *to_colors;
	/* 24 */ u16 *pal;
	/* 28 */ u16 clock;
	/* 2A */ u16 clock_end;
	/* 2C */ u16 clock_stop;
};

static EWRAM_DATA struct PalFadeSt sPalFadeSt[0x20];

#define RGB_16TIMES(r, g, b) \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \
	RGB(r, g, b), \

const u16 Pal_AllBlack[] = { RGB_16TIMES(0,  0,  0)  };
const u16 Pal_AllWhite[] = { RGB_16TIMES(31, 31, 31) };
const u16 Pal_AllRed[]   = { RGB_16TIMES(31, 0,  0)  };
const u16 Pal_AllGreen[] = { RGB_16TIMES(0,  31, 0)  };
const u16 Pal_AllBlue[]  = { RGB_16TIMES(0,  0,  31) };
const u16 Pal_085C4F2C[] = { RGB_16TIMES(30, 31, 1)  };

#undef RGB_16TIMES

struct PalFadeProc {
	/* 00 */ PROC_HEADER;
	/* 2C */ struct PalFadeSt *st;
};

static void PalFade_OnLoop(struct PalFadeProc *proc)
{
	int i;

	u16 const *from_colors = proc->st->from_colors;
	u16 const *to_colors = proc->st->to_colors;

	u16 *pal = proc->st->pal;

	if (proc->st->clock == proc->st->clock_stop || proc->st->clock > proc->st->clock_end) {
		Proc_End(proc);
		return;
	}

	for (i = 0; i < 0x10; ++i) {
		int red_a   = from_colors[i] & 0x001F;
		int green_a = from_colors[i] & 0x03E0;
		int blue_a  = from_colors[i] & 0x7C00;

		int red_b   = to_colors[i] & 0x001F;
		int green_b = to_colors[i] & 0x03E0;
		int blue_b  = to_colors[i] & 0x7C00;

		int red   = Interpolate(INTERPOLATE_LINEAR, red_a,   red_b,   proc->st->clock, proc->st->clock_end);
		int green = Interpolate(INTERPOLATE_LINEAR, green_a, green_b, proc->st->clock, proc->st->clock_end);
		int blue  = Interpolate(INTERPOLATE_LINEAR, blue_a,  blue_b,  proc->st->clock, proc->st->clock_end);

		pal[i] = (blue & 0x7C00) | (green & 0x03E0) | (red & 0x001F);
	}

	EnablePalSync();
	proc->st->clock++;
}

static const struct ProcScr ProcScr_PalFade[] =
{
	PROC_MARK(PROC_MARK_PAL_CHG),
	PROC_REPEAT(PalFade_OnLoop),

	PROC_END,
};

ProcPtr StartPalFade(u16 const *colors, int pal, int duration, ProcPtr parent)
{
	struct PalFadeSt *st = sPalFadeSt + pal;
	struct PalFadeProc *proc = SpawnProc(ProcScr_PalFade, parent);

	CpuCopy16(gPal + pal *0x10, st->from_colors, sizeof(st->from_colors));

	st->pal = gPal + pal *0x10;
	st->to_colors = colors;
	st->clock = 0;
	st->clock_end = duration;
	st->clock_stop = duration + 1;

	proc->st = st;
	return proc;
}

void StartPalFadeToBlack(int palid, int duration, ProcPtr parent)
{
	StartPalFade(Pal_AllBlack, palid, duration, parent);
}

void StartPalFadeToWhite(int palid, int duration, ProcPtr parent)
{
	StartPalFade(Pal_AllWhite, palid, duration, parent);
}

void EndPalFade(void)
{
	Proc_EndEach(ProcScr_PalFade);
}

void SetPalFadeStop(ProcPtr _proc, int val)
{
	struct PalFadeProc *proc = _proc;

	proc->st->clock_stop = val;
}

void SetBlackPal(int palid)
{
	CpuCopy16(Pal_AllBlack, gPal + palid * 0x10, 0x20);
}

void SetWhitePal(int palid)
{
	CpuCopy16(Pal_AllWhite, gPal + palid * 0x10, 0x20);
}

void SetAllBlackPals(void)
{
	int i;

	for (i = 0; i < 0x20; ++i)
		SetBlackPal(i);
}

void SetAllWhitePals(void)
{
	int i;

	for (i = 0; i < 0x20; ++i)
		SetBlackPal(i);
}
