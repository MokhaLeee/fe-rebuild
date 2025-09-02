#include "common.h"
#include "hardware.h"
#include "proc.h"
#include "banim.h"

#include "banimdrv.h"
#include "ekrmain.h"
#include "banim_info.h"
#include "efxmagicmini.h"

static void EkrMainMini_C01_Blocking(struct Anim * anim)
{
	anim->nextRoundId = -2;

	if (anim->flags3 & ANIM_BIT3_C01_BLOCK_END_INBATTLE) {
		anim->flags3 &= ANIM_BIT3_C01_BLOCK_END_INBATTLE;
		anim->nextRoundId = 0;
		anim->scrCur++;
	}
}

static void EkrMainMini_C0D_ExecNextRoundAfterAttack(struct Anim * anim)
{
	const void *tmp_ptr;
	struct BanimScrFrame *scr_start;
	struct EkrMainMiniDesc *desc = anim->priv;

	if (GetAnimLayer(anim) == 0) {
		int scr_offset;
		const u8 *mode_conf = BanimDefaultModeConfig;
		struct BattleAnim *banim_data = desc->bid + gBanimTable;
		const int *banim_mode = banim_data->modes;

		struct Anim *anim1 = desc->anim1;
		struct Anim *anim2 = desc->anim2;

		const u8 *scr_buf = tmp_ptr = desc->scr_buf;
		int frame_idx = mode_conf[ANIM_ROUND_TAKING_HIT_CLOSE * 4 + 0];

		scr_offset = banim_mode[frame_idx];
		scr_start = (void *)(scr_buf + scr_offset);

		anim1->imgSheet = scr_start->img;
		anim1->sprData = (u8 *)anim1->sprDataPool + scr_start->oam_offset;
		anim2->sprData = (u8 *)anim2->sprDataPool + BAS_OAM_REF_MAX_SIZE;

		if (desc->img_sheet != anim->imgSheet) {
			NewEkrChienCHR(anim);
			desc->img_sheet = anim->imgSheet;
		}
	}
}

static void EkrMainMini_ExecCommands(struct EkrMainMiniDesc *desc, struct Anim *anim)
{
	int type;

	if (anim == NULL)
		return;

	type = anim->flags2 & ANIM_BIT2_CMD_MASK;
	if (type == 0)
		return;

	if (type & ANIM_BIT2_COMMAND) {
		while (1) {
			if (anim->cqSize == 0)
				goto L_cmd_loop_end;

			switch (anim->cq[anim->cqSize - 1]) {
			case 0:
				break;

			case BAS_CMD(0x01):
			case BAS_CMD(0x02):
				EkrMainMini_C01_Blocking(anim);
				break;

			case BAS_CMD(0x05):
				if (GetAnimLayer(anim) == 0)
					StartClassReelSpellAnim(anim);

				/* fall through */

			case BAS_CMD(0x03):
			case BAS_CMD(0x04):
				anim->scrCur++;
				break;

			case BAS_CMD(0x0D):
				EkrMainMini_C0D_ExecNextRoundAfterAttack(anim);
				break;

			case BAS_CMD(0x18):
				EkrMainMini_C01_Blocking(anim);
				break;

			case BAS_CMD(0x30):
			case BAS_CMD(0x31):
			case BAS_CMD(0x32):
			default:
				break;
			}
			anim->cqSize--;
		}

		L_cmd_loop_end:
			anim->flags2 &= ~(ANIM_BIT2_COMMAND |
							  ANIM_BIT2_0800 |
							  ANIM_BIT2_0080 |
							  ANIM_BIT2_0040 |
							  ANIM_BIT2_0020 |
							  ANIM_BIT2_0010 |
							  ANIM_BIT2_0008 |
							  ANIM_BIT2_0004 |
							  ANIM_BIT2_0002 |
							  ANIM_BIT2_0001);
	}

	if (type & ANIM_BIT2_FRAME) {
		if (GetAnimLayer(anim) == 0 && desc->img_sheet != anim->imgSheet) {
			SyncBanimImage(anim);
			desc->img_sheet = anim->imgSheet;
		}

		anim->flags2 &= ~(ANIM_BIT2_FRAME |
						  ANIM_BIT2_0800 |
						  ANIM_BIT2_0080 |
						  ANIM_BIT2_0040 |
						  ANIM_BIT2_0020 |
						  ANIM_BIT2_0010 |
						  ANIM_BIT2_0008 |
						  ANIM_BIT2_0004 |
						  ANIM_BIT2_0002 |
						  ANIM_BIT2_0001);
	}

	if (type & ANIM_BIT2_STOP)
		anim->nextRoundId = -1;
}

static void EkrMainMini_InitAnim(struct EkrMainMiniDesc *desc)
{
}

/**
 * AnimDrv
 */
static ProcPtr gpProcEfxAnimeDrv;

static const struct ProcScr ProcScr_EfxAnimeDrv[] = {
	PROC_NAME_DEBUG("ekrAnimeDrvProc"),
	PROC_CALL(BasInit),
	PROC_REPEAT(BasUpdateAll),
	PROC_END,
};

void NewEfxAnimeDrvProc(void)
{
	gpProcEfxAnimeDrv = SpawnProc(ProcScr_EfxAnimeDrv, PROC_TREE_4);
}

void EndEfxAnimeDrvProc(void)
{
	Proc_End(gpProcEfxAnimeDrv);
}

/**
 * Ekrmain mini
 */
struct ProcEkrUnitMainMini {
	PROC_HEADER;

	struct EkrMainMiniDesc *desc;
};

static void EkrMainMini_Loop(struct ProcEkrUnitMainMini * proc)
{
	struct EkrMainMiniDesc *desc = proc->desc;

	EkrMainMini_ExecCommands(desc, desc->anim1);
	EkrMainMini_ExecCommands(desc, desc->anim2);
}

static const struct ProcScr ProcScr_EkrUnitMainMini[] = {
	PROC_NAME_DEBUG("ekrUnitMainMini"),
	PROC_REPEAT(EkrMainMini_Loop),
	PROC_END,
};

void NewEkrUnitMainMini(struct EkrMainMiniDesc *desc)
{
	struct ProcEkrUnitMainMini * proc = SpawnProc(ProcScr_EkrUnitMainMini, PROC_TREE_4);

	EkrMainMini_InitAnim(desc);

	proc->desc = desc;
	desc->proc = proc;
	desc->valid = true;
}

void EndEkrMainMini(struct EkrMainMiniDesc *desc)
{
	BasRemove(desc->anim1);
	BasRemove(desc->anim2);

	desc->anim1 = 0;
	desc->anim2 = 0;

	Proc_End(desc->proc);
}
