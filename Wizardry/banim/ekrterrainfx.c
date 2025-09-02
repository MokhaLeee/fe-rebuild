#include "common.h"
#include "hardware.h"
#include "proc.h"
#include "utils.h"
#include "banim.h"

#include "efx.h"

extern const AnimScr AnimScr_EkrTerrainfx_R_Far[];
extern const AnimScr AnimScr_EkrTerrainfx_L_Far[];
extern const AnimScr AnimScr_EkrTerrainfx_R_Close[];
extern const AnimScr AnimScr_EkrTerrainfx_L_Close[];

extern const u16 TsaConf_BanimTmA_08112380[];
extern const u16 TsaConf_BanimTmA_08112418[];
extern const u16 TsaConf_BanimTmA_081124B0[];
extern const u16 TsaConf_BanimTmA_08112548[];
extern const u16 Tsa_EkrTerrainfx_081122DA[];

void NewEkrTerrainfx(struct EkrTerrainfxDesc *desc)
{
	const struct BattleAnimTerrain *terrain1;
	const struct BattleAnimTerrain *terrain2;
	u8 *img_buf1, *img_buf2;
	u16 *pal1, *pal2;
	i16 oam2_pal;
	u16 oam2;
	u8 *vram;
	_UNUSED int tmp1;

	terrain1 = &gBanimTerrainTable[desc->terrain_l];
	terrain2 = &gBanimTerrainTable[desc->terrain_r];

	if (desc->terrain_l != -1)
		LZ77UnCompWram(terrain1->tileset, desc->img_buf);

	if (desc->terrain_r != -1)
		LZ77UnCompWram(terrain2->tileset, desc->img_buf + 0x1000);

	switch (desc->distance) {
	case EKR_DISTANCE_CLOSE:
	case EKR_DISTANCE_PROMOTION:
		img_buf1 = desc->img_buf;
		img_buf2 = desc->img_buf + 0x1000;
		break;

	case EKR_DISTANCE_FAR:
	case EKR_DISTANCE_FARFAR:
	case EKR_DISTANCE_MONOCOMBAT:
	default:
		img_buf1 = desc->img_buf + 0x800;
		img_buf2 = desc->img_buf + 0x1800;
		break;
	}

	pal1 = (u16 *)terrain1->palette;
	pal2 = (u16 *)terrain2->palette;

	switch (desc->bg_index) {
	case BG_0:
	case BG_1:
	case BG_2:
	case BG_3:
#if NONMATCHING
		vram = (void *)((desc->chr_l + 0x40) * CHR_SIZE + BG_VRAM);
		RegisterDataMove(img_buf1, desc->vram_offset + vram, 0x800);

		vram = (void *)((desc->chr_r) * CHR_SIZE + BG_VRAM);
		RegisterDataMove(img_buf2, desc->vram_offset + vram, 0x800);
#else
		vram = (void *)((desc->chr_l + 0x40) * CHR_SIZE + BG_VRAM);
		tmp1 = desc->vram_offset;
		RegisterDataMove(img_buf1, (void *)(tmp1 = tmp1 + (int)vram), 0x800);

		vram = (void *)((desc->chr_r) * CHR_SIZE + BG_VRAM);
		tmp1 = desc->vram_offset;
		RegisterDataMove(img_buf2, (void *)(tmp1 = tmp1 + (int)vram), 0x800);
#endif

		CpuFastCopy(pal1, gPal + PAL_OFFSET(desc->pal_l), 0x20);
		CpuFastCopy(pal2, gPal + PAL_OFFSET(desc->pal_r), 0x20);

		EnablePalSync();
		EkrTerrainfx_PutTiles(desc);
		break;

	case -1:
		if (desc->terrain_l != -1) {
			RegisterDataMove(img_buf1, (void *)(desc->vram_offset + desc->chr_l * CHR_SIZE), 0x800);
			CpuFastCopy(pal1, gPal + 0x100 + PAL_OFFSET(desc->pal_l), 0x20);
		}

		if (desc->terrain_r != -1) {
			RegisterDataMove(img_buf2, (void *)(desc->vram_offset + desc->chr_r * CHR_SIZE), 0x800);
			CpuFastCopy(pal2, gPal + 0x100 + PAL_OFFSET(desc->pal_r), 0x20);
		}

		EnablePalSync();
		break;

	default:
		break;
	}

	switch (desc->bg_index) {
	case BG_0:
		EnableBgSync(BG0_SYNC_BIT);
		break;

	case BG_1:
		EnableBgSync(BG1_SYNC_BIT);
		break;

	case BG_2:
		EnableBgSync(BG2_SYNC_BIT);
		break;

	case BG_3:
		EnableBgSync(BG3_SYNC_BIT);
		break;

	case -1:
		desc->proc1 = NULL;
		desc->proc2 = NULL;

		if (desc->terrain_l != -1) {
			switch (desc->distance) {
			case EKR_DISTANCE_CLOSE:
			case EKR_DISTANCE_PROMOTION:
				oam2_pal = desc->pal_l;
				oam2 = (oam2_pal * 0x1000) | desc->chr_l | OAM2_LAYER(3);
				desc->proc1 = NewEkrsubAnimeEmulator(0x48, 0x68, AnimScr_EkrTerrainfx_L_Close, 2, oam2, 0, PROC_TREE_4);
				break;

			case EKR_DISTANCE_FAR:
				oam2_pal = desc->pal_l;
				oam2 = (oam2_pal * 0x1000) | desc->chr_l | OAM2_LAYER(3);
				desc->proc1 = NewEkrsubAnimeEmulator(0x20, 0x68, AnimScr_EkrTerrainfx_L_Far, 2, oam2, 0, PROC_TREE_4);
				break;

			case EKR_DISTANCE_FARFAR:
				oam2_pal = desc->pal_l;
				oam2 = (oam2_pal * 0x1000) | desc->chr_l | OAM2_LAYER(3);
				desc->proc1 = NewEkrsubAnimeEmulator(0x40, 0x68, AnimScr_EkrTerrainfx_L_Far, 2, oam2, 0, PROC_TREE_4);
				break;

			case EKR_DISTANCE_MONOCOMBAT:
				oam2_pal = desc->pal_l;
				oam2 = (oam2_pal * 0x1000) | desc->chr_l | OAM2_LAYER(3);
				desc->proc1 = NewEkrsubAnimeEmulator(0x78, 0x68, AnimScr_EkrTerrainfx_L_Close, 2, oam2, 0, PROC_TREE_4);
				break;

			default:
				break;
			}
		}

		if (desc->terrain_r != -1) {
			switch (desc->distance) {
			case EKR_DISTANCE_CLOSE:
			case EKR_DISTANCE_PROMOTION:
				oam2_pal = desc->pal_r;
				oam2 = (oam2_pal * 0x1000) | desc->chr_r | OAM2_LAYER(3);
				desc->proc2 = NewEkrsubAnimeEmulator(0xA8, 0x68, AnimScr_EkrTerrainfx_R_Close, 2, oam2, 0, PROC_TREE_4);
				break;

			case EKR_DISTANCE_FAR:
				oam2_pal = desc->pal_r;
				oam2 = (oam2_pal * 0x1000) | desc->chr_r | OAM2_LAYER(3);
				desc->proc2 = NewEkrsubAnimeEmulator(0xB0, 0x68, AnimScr_EkrTerrainfx_R_Far, 2, oam2, 0, PROC_TREE_4);
				break;

			case EKR_DISTANCE_FARFAR:
				oam2_pal = desc->pal_r;
				oam2 = (oam2_pal * 0x1000) | desc->chr_r | OAM2_LAYER(3);
				desc->proc2 = NewEkrsubAnimeEmulator(0xB0, 0x68, AnimScr_EkrTerrainfx_R_Far, 2, oam2, 0, PROC_TREE_4);
				break;

			case EKR_DISTANCE_MONOCOMBAT:
				oam2_pal = desc->pal_r;
				oam2 = (oam2_pal * 0x1000) | desc->chr_r | OAM2_LAYER(3);
				desc->proc2 = NewEkrsubAnimeEmulator(0x80, 0x68, AnimScr_EkrTerrainfx_R_Far, 2, oam2, 0, PROC_TREE_4);
				break;

			default:
				break;
			}
		}
		break;

	default:
		break;
	}
}

void EndEkrTerrainfx(struct EkrTerrainfxDesc *desc)
{
	if (desc->bg_index == -1) {
		if (desc->proc1)
			Proc_End(desc->proc1);

		if (desc->proc2)
			Proc_End(desc->proc2);
	}
}

void EkrTerrainfx_SetPosition(struct EkrTerrainfxDesc *desc, i16 x1, i16 y1, i16 x2, i16 y2)
{
	struct ProcEkrSubAnimeEmulator *proc;

	proc = desc->proc1;
	proc->x1 = x1;
	proc->y1 = y1;

	proc = desc->proc2;
	proc->x1 = x2;
	proc->y1 = y2;
}

void EkrTerrainfx_PutTiles(struct EkrTerrainfxDesc *desc)
{
	static u16 const *const tsa_confs[] = {
		TsaConf_BanimTmA_08112380,
		TsaConf_BanimTmA_08112418,
		TsaConf_BanimTmA_081124B0,
		TsaConf_BanimTmA_08112548,
		TsaConf_BanimTmA_081124B0,
		TsaConf_BanimTmA_08112548,
		TsaConf_BanimTmA_081124B0,
		TsaConf_BanimTmA_08112548,
		TsaConf_BanimTmA_08112380,
		TsaConf_BanimTmA_08112418,
	};

	int offset;
	int offset1 = 0;
	int offset2 = 0;

	const u16 *tm1 = tsa_confs[desc->distance * 2 + POS_L];
	const u16 *tm2 = tsa_confs[desc->distance * 2 + POS_R];

	EfxTmFillA(0);

	switch (desc->distance) {
	case EKR_DISTANCE_CLOSE:
	case EKR_DISTANCE_PROMOTION:
		offset1 = 0x21;
		offset2 = 0x30;
		offset  = 0;
		break;

	case EKR_DISTANCE_FAR:
		offset1 = 0x1D;
		offset2 = 0x30;

		if (gEkrInitPosReal == POS_R)
			offset = 0;
		else
			offset = -4;
		break;

	case EKR_DISTANCE_FARFAR:
		offset1 = 0x03;
		offset2 = 0x30;

		if (gEkrInitPosReal == POS_R)
			offset = 0;
		else
			offset = -0x1E;
		break;

	case EKR_DISTANCE_MONOCOMBAT:
	default:
		if (desc->terrain_l != -1) {
			offset1 = 0x27;
			offset2 = 0x03;
		}

		if (desc->terrain_r != -1) {
			offset1 = 0x03;
			offset2 = 0x2A;
		}

		offset = 0;
		break;
	}

	EfxTmCpyExt(tm1, -1, gTmA_Banim + TM_OFFSET(0x1A, 0x1A) + offset1, 0x42, 0xF, 5, desc->pal_l, desc->chr_l);
	EfxTmCpyExt(tm2, -1, gTmA_Banim + TM_OFFSET(0x1A, 0x1A) + offset2, 0x42, 0xF, 5, desc->pal_r, desc->chr_r);

#if NONMATCHING
	EfxTmCpyExt(gTmA_Banim + TM_OFFSET(5, 5) + offset, 0x42, gBg2Tm, 0x20, 0x20, 0x14, -1, -1);
#else
	EfxTmCpyExt(({gTmA_Banim + offset;}) + TM_OFFSET(5, 5), 0x42, gBg2Tm, 0x20, 0x20, 0x14, -1, -1);
#endif

	EnableBgSync(BG2_SYNC_BIT);
}

void BanimCopyBgTM(i16 distance, i16 position)
{
	int offset;

	switch (distance) {
	case EKR_DISTANCE_CLOSE:
	case EKR_DISTANCE_PROMOTION:
		offset = 48;

		if (position == 0)
			offset = 33;

		break;

	case EKR_DISTANCE_FAR:
		offset = 48;

		if (position == 0)
			offset = 29;

		break;

	case EKR_DISTANCE_FARFAR:
	case EKR_DISTANCE_MONOCOMBAT:
	default:
		offset = 48;

		if (position == 0)
			offset = 3;

		break;
	}

	EfxTmCpyExt(Tsa_EkrTerrainfx_081122DA, -1, gTmA_Banim + TM_OFFSET(0x1A, 0x1A) + offset, 0x42, 0xf, 5, -1, -1);
}
