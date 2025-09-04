#include "common.h"
#include "bm.h"
#include "proc.h"

struct CamMoveProc {
	/* 00 */ PROC_HEADER;

	/* 2C */ struct Vec2i to;
	/* 30 */ struct Vec2i from;
	/* 34 */ struct Vec2i watchedCoord;
	/* 38 */ short calibration;
	/* 3A */ short distance;
	/* 3C */ int frame;
	/* 40 */ bool8 xCalibrated;
};

static void CamMove_OnInit(struct CamMoveProc * proc);
static void CamMove_OnLoop(struct CamMoveProc * proc);

static i8 EWRAM_DATA sCameraAnimTable[0x100];

const struct ProcScr ProcScr_CamMove[] = {
	PROC_NAME("CamMove"),
	PROC_YIELD,

	PROC_CALL(CamMove_OnInit),
	PROC_REPEAT(CamMove_OnLoop),

	PROC_END,
};

static void CamMove_OnInit(struct CamMoveProc * proc)
{
	i8 speed = 1;

	int xDiff = ABS(proc->to.x - proc->from.x);
	int yDiff = ABS(proc->to.y - proc->from.y);

	int dist, i;

	if (xDiff > yDiff) {
		proc->xCalibrated = TRUE;
		proc->calibration = xDiff;
	} else {
		proc->xCalibrated = FALSE;
		proc->calibration = yDiff;
	}

	dist = proc->calibration;
	i = 0;

	while (TRUE) {
		if (dist - (speed >> 1) < 0) {
			sCameraAnimTable[i] = dist;
			break;
		}

		dist -= (speed >> 1);
		sCameraAnimTable[i] = (speed >> 1);

		if (speed < 0x10)
			speed++;

		i++;
	}

	proc->frame = i;
	proc->distance = proc->calibration;
}

static void CamMove_OnLoop(struct CamMoveProc * proc)
{
	if (proc->frame == 0) {
		proc->to.x = gBmSt.camera.x;
		proc->to.y = gBmSt.camera.y;

		Proc_End(proc);

		return;
	}

	proc->distance -= sCameraAnimTable[proc->frame--];

	gBmSt.camera.x = Div(proc->to.x + (proc->from.x - proc->to.x) * proc->distance, proc->calibration);
	gBmSt.camera.y = Div(proc->to.y + (proc->from.y - proc->to.y) * proc->distance, proc->calibration);
}

bool CameraMoveWatchPosition(ProcPtr proc, int x, int y)
{
	struct CamMoveProc * cam;

	int x_target = GetCameraAdjustedX(x*16);
	int y_target = GetCameraAdjustedY(y*16);

	if ((x_target == gBmSt.camera.x && y_target == gBmSt.camera.y) || FindProc(ProcScr_CamMove) != NULL)
		return FALSE;

	if (proc)
		cam = SpawnProcLocking(ProcScr_CamMove, proc);
	else
		cam = SpawnProc(ProcScr_CamMove, PROC_TREE_3);

	cam->from.x = gBmSt.camera.x;
	cam->from.y = gBmSt.camera.y;

	cam->to.x = x_target;
	cam->to.y = y_target;

	cam->watchedCoord.x = x;
	cam->watchedCoord.y = y;

	return TRUE;
}

bool IsCameraNotWatchingPosition(int x, int y)
{
	int x_target = GetCameraAdjustedX(x*16);
	int y_target = GetCameraAdjustedY(y*16);

	if (x_target == gBmSt.camera.x && y_target == gBmSt.camera.y)
		return FALSE;

	return TRUE;
}

bool CameraMove_08016290(ProcPtr proc)
{
	struct CamMoveProc * cam;

	if ((gBmSt.camera.y <= gBmSt.camera_max.y) || FindProc(ProcScr_CamMove) != NULL)
		return FALSE;

	if (proc)
		cam = SpawnProcLocking(ProcScr_CamMove, proc);
	else
		cam = SpawnProc(ProcScr_CamMove, PROC_TREE_3);

	cam->from.x = gBmSt.camera.x;
	cam->from.y = gBmSt.camera.y;

	cam->to.x = gBmSt.camera.x;
	cam->to.y = gBmSt.camera_max.y;

	return TRUE;
}
