#include "common.h"
#include "proc.h"
#include "banim.h"
#include "hardware.h"

#include "efx.h"

/**
 * TM
 */
void FillBGRect(u16 *tm, u16 width, u16 height, int pal, int chr)
{
	int i, j;
	u16 *_tm = tm;
	for (i = height; i != 0; i--)
	{
		u16 len = 0x20 - width;

		for (j = width; j != 0; j--)
			*(_tm++) = TILEREF(chr, pal);

		_tm += len;
	}
}

void EfxTmCpyBG(const void *ptr1, void *ptr2, u16 width, u16 height, int pal, int chr)
{
	EfxTmCpyExt(ptr1, -1, ptr2, 32, width, height, pal, chr);
}

void EfxTmCpyBgHFlip(const u16 *tsa, u16 *tm, u16 width, u16 height, int pal, int chr)
{
	EfxTmCpyExtHFlip(tsa, -1, tm, 32, width, height, pal, chr);
}

void EfxTmCpyExt(const u16 *src, i16 src_width, u16 *dst, i16 dst_width,
		u16 width, u16 hight, int pal, int chr)
{
	int i, j;

	for (i = hight; i != 0; i--) {
		u16 len1 = 0;
		u16 len2 = 0;

		for (j = width; j != 0; j--) {
			u16 val = *src;
			if (pal != -1)
				val = val + (pal << 0xC);

			if (chr != -1)
				val = val + chr;

			*dst = val;

			src++;
			dst++;
		}

		if (src_width != -1) {
			len1 = src_width - width;
			src = src + len1;
		}

		if (dst_width != -1) {
			len2 = dst_width - width;
			dst = dst + len2;
		}
	}
}

void EfxTmCpyExtHFlip(const u16 *src, i16 src_width, u16 *dst, i16 dst_width,
	u16 width, u16 hight, int pal, int chr)
{
	int i, j;

	dst += width - 1;

	for (i = hight; i != 0; i--) {
		u16 len1 = 0;
		u16 len2 = 0;

		for (j = width; j != 0; j--) {
			u16 val = *src;
			if (pal != -1)
				val = val + (pal << 0xC);

			if (chr != -1)
				val = val + chr;

			*dst = val ^ TILE_HFLIP;

			src++;
			dst--;
		}

		if (src_width != -1) {
			len1 = src_width - width;
			src = src + len1;
		}

		if (dst_width != -1) {
			len2 = width + dst_width;
			dst = dst + len2;
		}
	}
}

/**
 * sub anim emu
 */
static void EkrsubAnimeEmulator_Loop(struct ProcEkrSubAnimeEmulator *proc)
{
	if (proc->timer == 0) {
		const u32 *anim_scr = proc->anim_scr;
		u32 inst = anim_scr[proc->scr_cur];

		if (ANIM_INS_TYPE_STOP == ANINS_GET_TYPE(inst)) {
			switch (proc->type) {
			case 0:
				Proc_Break(proc);
				return;

			case 1:
				proc->timer = 1;
				proc->scr_cur = 0;
				break;

			case 2:
				proc->timer = 1;
				proc->scr_cur--;
				break;

			default:
				break;
			}
		} else if (ANIM_INS_TYPE_WAIT == ANINS_GET_TYPE(inst)) {
			proc->timer = inst;
			proc->scr_cur++;
		} else {
			proc->sprite = ANINS_FORCESPRITE_GET_ADDRESS(inst);
			proc->timer = ANINS_FORCESPRITE_GET_DELAY(inst);
			proc->scr_cur++;
		}
	}

	proc->timer--;

	if (proc->valid == 0 && proc->sprite != NULL) {
		struct Anim _anim;

		_anim.sprData = proc->sprite;
		_anim.oam2 = proc->oam2Base;
		_anim.oam01 = proc->oamBase;
		_anim.xPosition = proc->x1 + proc->x2;
		_anim.yPosition = proc->y1 + proc->y2;
		_anim.flags2 = 0;
		BasPutOam(&_anim);
	}
}

static const struct ProcScr ProcScr_ekrsubAnimeEmulator[] = {
	PROC_NAME("ekrsubAnimeEmulator"),
	PROC_REPEAT(EkrsubAnimeEmulator_Loop),
	PROC_END
};

struct ProcEkrSubAnimeEmulator *NewEkrsubAnimeEmulator(
	int x, int y, const u32 *anim_scr, int type, int oam2Base, int oamBase, ProcPtr parent)
{
	struct ProcEkrSubAnimeEmulator *proc =
		SpawnProc(ProcScr_ekrsubAnimeEmulator, parent);

	proc->timer = 0;
	proc->scr_cur = 0;
	proc->type = type;
	proc->valid = 0;
	proc->x1 = x;
	proc->y1 = y;
	proc->x2 = 0;
	proc->y2 = 0;
	proc->anim_scr = anim_scr;
	proc->sprite = NULL;
	proc->oam2Base = oam2Base;
	proc->oamBase = oamBase;
	return proc;
}
