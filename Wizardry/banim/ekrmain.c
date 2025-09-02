#include "common.h"
#include "banim.h"
#include "utils.h"
#include "hardware.h"

#include "ekrmain.h"

const u8 BanimDefaultModeConfig[ANIM_ROUND_MAX * 4] = {
	/**
	 * 00: front mode
	 * 01: front priority
	 * 02: back mode
	 * 03: back priority
	*/

	/* ANIM_ROUND_HIT_CLOSE */
	BANIM_MODE_NORMAL_ATK, 0x64, BANIM_MODE_NORMAL_ATK_PRIORITY_L, 0x3C,

	/* ANIM_ROUND_CRIT_CLOSE */
	BANIM_MODE_CRIT_ATK, 0x64, BANIM_MODE_CRIT_ATK_PRIORITY_L, 0x3C,

	/* ANIM_ROUND_NONCRIT_FAR */
	BANIM_MODE_RANGED_ATK, 0x64, BANIM_MODE_INVALID, 0x3C,

	/* ANIM_ROUND_CRIT_FAR */
	BANIM_MODE_RANGED_CRIT_ATK, 0x64, BANIM_MODE_INVALID, 0x3C,

	/* ANIM_ROUND_TAKING_MISS_CLOSE */
	BANIM_MODE_CLOSE_DODGE, 0x28, BANIM_MODE_INVALID, 0x28,

	/* ANIM_ROUND_TAKING_MISS_FAR */
	BANIM_MODE_RANGED_DODGE, 0x28, BANIM_MODE_INVALID, 0x28,

	/* ANIM_ROUND_TAKING_HIT_CLOSE */
	BANIM_MODE_STANDING, 0x50, BANIM_MODE_INVALID, 0x28,

	/* ANIM_ROUND_STANDING */
	BANIM_MODE_STANDING2, 0x50, BANIM_MODE_INVALID, 0x28,

	/* ANIM_ROUND_TAKING_HIT_FAR */
	BANIM_MODE_RANGED_STANDING, 0x50, BANIM_MODE_INVALID, 0x28,

	/* ANIM_ROUND_MISS_CLOSE */
	BANIM_MODE_MISSED_ATK, 0x64, BANIM_MODE_INVALID, 0x28,
};

void SyncBanimImage(struct Anim * anim)
{
	void *mmap;

	mmap = OBJ_VRAM0 + OAM2_CHR(anim->oam2) * CHR_SIZE;

	LZ77UnCompWram(anim->imgSheet, anim->imgBuf);
	RegisterDataMove(anim->imgBuf, mmap, 0x2000);
}

struct ProcEkrChienCHR {
	PROC_HEADER;

	struct Anim *anim;
};

static void EkrChienCHR_Loop(struct ProcEkrChienCHR *proc)
{
	SyncBanimImage(proc->anim);
	Proc_Break(proc);
}

static const struct ProcScr ProcScr_EkrChienCHR[] = {
	PROC_NAME_DEBUG("ekrChienCHR"),
	PROC_REPEAT(EkrChienCHR_Loop),
	PROC_END,
};

void NewEkrChienCHR(struct Anim *anim)
{
	struct ProcEkrChienCHR *proc;

	proc = SpawnProc(ProcScr_EkrChienCHR, PROC_TREE_3);
	proc->anim = anim;
}
