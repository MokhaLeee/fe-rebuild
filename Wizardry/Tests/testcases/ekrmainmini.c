#include "common.h"
#include "proc.h"
#include "test.h"
#include "banim.h"
#include "utils.h"
#include "hardware.h"

#if CONFIG_DEBUG_TEST_EKRMAINMINI

EWRAM_OVERLAY_TEST static struct EkrMainMiniDesc main_desc;
EWRAM_OVERLAY_TEST static struct EkrTerrainfxDesc terrain_desc;

EWRAM_OVERLAY_TEST static u16 img_buf[BAS_IMG_MAX_SIZE];
EWRAM_OVERLAY_TEST static u16 pal_buf[0x40];
EWRAM_OVERLAY_TEST static u8 scr_buf[BAS_SCR_MAX_SIZE];
EWRAM_OVERLAY_TEST static u16 oam_buf[BAS_OAM_MAX_SIZE];
EWRAM_OVERLAY_TEST static u8 terrain_img_buf[0x2000];

struct ProcEkrMainMiniTest {
	PROC_HEADER;

	struct EkrMainMiniDesc *main_desc;
	struct EkrTerrainfxDesc *terrain_desc;
	int timer;
	bool lock_en;
};

static void EkrMainMiniTest_Init(struct ProcEkrMainMiniTest *proc)
{
	proc->timer = 0;
	proc->lock_en = false;
}

static void EkrMainMiniTest_Start(struct ProcEkrMainMiniTest *proc)
{
	EkrMainMini_SetAnimPosition(proc->main_desc, 180, 88);
	proc->main_desc->round_type = ANIM_ROUND_HIT_CLOSE;
	EkrMainMini_UpdateAnim(proc->main_desc);
}

static void EkrMainMiniTest_Main(struct ProcEkrMainMiniTest *proc)
{
	if (EkrMainMini_CheckBlocking(proc->main_desc)) {
		if (proc->lock_en == true) {
			// timer triggered
			proc->lock_en = false;
			EkrMainMini_EndBlock(proc->main_desc);
			return;
		} else {
			// start a timer
			proc->lock_en = true;
			proc->timer = 100;
			return;
		}
	}

	if (EkrMainMini_CheckDone(proc->main_desc)) {
		if (proc->lock_en == true) {
			// timer triggered
			proc->lock_en = false;
			EkrMainMini_UpdateAnim(proc->main_desc);
			return;
		} else {
			// start a timer
			proc->lock_en = true;
			proc->timer = 200;
			return;
		}
	}
}

static void EkrMainMiniTest_WaitLock(struct ProcEkrMainMiniTest *proc)
{
	if (proc->lock_en == false) {
		Proc_Break(proc);
		return;
	}

	proc->timer--;
	if (proc->timer <= 0)
		Proc_Break(proc);
}

static void EkrMainMiniTest_OnEnd(struct ProcEkrMainMiniTest *proc)
{
	EndEkrMainMini(proc->main_desc);
	EndEkrTerrainfx(proc->terrain_desc);
}

static const struct ProcScr ProcScr_EkrMainMiniTest[] = {
	PROC_NAME("EkrMainMiniTest"),
	PROC_ONEND(EkrMainMiniTest_OnEnd),
	PROC_CALL(EkrMainMiniTest_Init),
	PROC_YIELD,
	PROC_CALL(EkrMainMiniTest_Start),

PROC_LABEL(0),
	PROC_YIELD,
	PROC_CALL(EkrMainMiniTest_Main),
	PROC_REPEAT(EkrMainMiniTest_WaitLock),
	PROC_GOTO(0),

PROC_LABEL(99),
	PROC_BLOCK,
	PROC_END
};

void ekrmainmini_test(ProcPtr parent)
{
	struct ProcEkrMainMiniTest *proc;

	proc = SpawnProc(ProcScr_EkrMainMiniTest, parent);

	proc->main_desc = &main_desc;
	proc->main_desc->faction_pal = BANIMPAL_BLUE;
	proc->main_desc->bid = 3;
	proc->main_desc->round_type = ANIM_ROUND_TAKING_HIT_CLOSE;
	proc->main_desc->pos = POS_R;
	proc->main_desc->oam2_chr = 0x180;
	proc->main_desc->oam2_pal = 2;
	proc->main_desc->img_buf = img_buf;
	proc->main_desc->pal_buf = pal_buf;
	proc->main_desc->oam_buf = oam_buf;
	proc->main_desc->scr_buf = scr_buf;
	proc->main_desc->magicfx_desc = NULL;

	NewEfxAnimeDrvProc();
	NewEkrUnitMainMini(proc->main_desc);

	proc->terrain_desc = &terrain_desc;
	proc->terrain_desc->terrain_l = 0x14;
	proc->terrain_desc->pal_l = 10;
	proc->terrain_desc->chr_l = 0x380;
	proc->terrain_desc->terrain_r = 0x14;
	proc->terrain_desc->pal_r = 11;
	proc->terrain_desc->chr_r = 0x3C0;
	proc->terrain_desc->distance = EKR_DISTANCE_CLOSE;
	proc->terrain_desc->bg_index = -1;
	proc->terrain_desc->vram_offset = (int)(OBJ_VRAM0);
	proc->terrain_desc->img_buf = terrain_img_buf;

	NewEkrTerrainfx(proc->terrain_desc);
	EkrTerrainfx_SetPosition(proc->terrain_desc, 0x10, 0x68, 0xD0, 0x68);
}

#endif /* EKRMAINMINI_TEST */
