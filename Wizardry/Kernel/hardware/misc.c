#include "common.h"
#include "proc.h"
#include "hardware.h"

void SoftResetIfKeyCombo(void)
{
	if (gKeySt->held == (KEY_BUTTON_A + KEY_BUTTON_B + KEY_BUTTON_SELECT + KEY_BUTTON_START))
		SoftReset(GBA_RESET_ALL);
}

/**
 * Lock
 */
static void TemporaryLock_OnLoop(struct Proc *proc)
{
	if (proc->unk58 == 0) {
		Proc_Break(proc);
		return;
	}

	proc->unk58--;
}

static const struct ProcScr ProcScr_TemporaryLock[] = {
	PROC_YIELD,

	PROC_REPEAT(TemporaryLock_OnLoop),
	PROC_END,
};

void StartTemporaryLock(ProcPtr proc, int duration)
{
	struct Proc * gproc;

	gproc = SpawnProcLocking(ProcScr_TemporaryLock, proc);
	gproc->unk58 = duration;
}
