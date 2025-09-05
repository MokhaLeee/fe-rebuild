#pragma once

#include "common.h"
#include "proc.h"

extern u8 EWRAM_DATA gBuf[0x2000];

enum {
	INTERPOLATE_LINEAR,
	INTERPOLATE_SQUARE,
	INTERPOLATE_CUBIC,
	INTERPOLATE_POW4,
	INTERPOLATE_RSQUARE,
	INTERPOLATE_RCUBIC,
};

int Interpolate(int method, int lo, int hi, int x, int end);

/**
 * decomp
 */
int GetDataSize(void const *data);
void Decompress(void const *src, void *dst);

/**
 * tm
 */
void Register2dChrMove(u8 const *img, u8 *vram, int width, int height);
void Copy2dChr(void const *src, u8 *dst, int width, int height);
void ApplyBitmap(u8 const *src, void *dst, int width, int height);
void PutAppliedBitmap(u16 *tm, int tileref, int width, int height);
void PutDigits(u16 *tm, u8 const *src, int tileref, int len);

/* move data */
void RegisterDataMove(void const *src, void *dst, int size);
void RegisterDataFill(u32 value, void *dst, int size);
void ApplyDataMoves(void);

#define RegisterVramMove(src, offset, size) \
	RegisterDataMove( \
		(src), \
		(void *) VRAM + (0x1FFFF & (offset)), \
		(size))

#define RegisterVramFill(value, offset, size) \
	RegisterDataFill( \
		(value), \
		(void *) VRAM + (0x1FFFF & (offset)), \
		(size))

/**
 * Fade
 */
ProcPtr StartPalFade(u16 const *colors, int pal, int duration, ProcPtr parent);
void StartPalFadeToBlack(int palid, int duration, ProcPtr parent);
void StartPalFadeToWhite(int palid, int duration, ProcPtr parent);
void SetPalFadeStop(ProcPtr _proc, int val);

bool FadeExists(void);
void StartFadeToBlack(int q4_speed);
void StartFadeFromBlack(int q4_speed);
void StartLockingFadeToBlack(int q4_speed, ProcPtr parent);
void StartLockingFadeFromBlack(int q4_speed, ProcPtr parent);
void StartLockingFadeToWhite(int q4_speed, ProcPtr parent);
void StartLockingFadeFromWhite(int q4_speed, ProcPtr parent);
void StartMidFadeToBlack(void);
void StartSlowFadeToBlack(void);
void StartFastFadeToBlack(void);
void StartMidFadeFromBlack(void);
void StartSlowFadeFromBlack(void);
void StartFastFadeFromBlack(void);
void StartMidLockingFadeToBlack(ProcPtr parent);
void StartSlowLockingFadeToBlack(ProcPtr parent);
void StartFastLockingFadeToBlack(ProcPtr parent);
void StartMidLockingFadeFromBlack(ProcPtr parent);
void StartSlowLockingFadeFromBlack(ProcPtr parent);
void StartFastLockingFadeFromBlack(ProcPtr parent);
void StartSlowLockingFadeToWhite(ProcPtr parent);
void StartSlowLockingFadeFromWhite(ProcPtr parent);
void WhileFadeExists(ProcPtr proc);
void FadeInBlackWithCallBack_Speed04(ProcPtr parent);
void FadeInBlackWithCallBack_Speed08(ProcPtr parent);
void FadeInBlackWithCallBack_Speed10(ProcPtr parent);
void FadeInBlackWithCallBack_Speed20(ProcPtr parent);
void FadeInBlackWithCallBack_Speed40(ProcPtr parent);
void FadeInBlackSpeed04(ProcPtr parent);
void FadeInBlackSpeed08(ProcPtr parent);
void FadeInBlackSpeed10(ProcPtr parent);
void FadeInBlackSpeed20(ProcPtr parent);
void FadeInBlackSpeed40(ProcPtr parent);

extern const u16 Pal_AllBlack[];
extern const u16 Pal_AllWhite[];
extern const u16 Pal_AllRed[];
extern const u16 Pal_AllGreen[];
extern const u16 Pal_AllBlue[];

/**
 * ui utils
 */
enum {
	// window_theme (including PlaySt::config_window_theme)

	UI_WINDOW_THEME_BLUE,
	UI_WINDOW_THEME_RED,
	UI_WINDOW_THEME_GRAY,
	UI_WINDOW_THEME_GREEN,
};

enum {
	// PutUiWindowFrame param window_kind

	UI_WINDOW_REGULAR,
	UI_WINDOW_FILL,
	UI_WINDOW_SABLE,
};

void ApplyUiWindowFramePal(int palid);
void UnpackUiWindowFrameImg(void *vram);
void ApplyUiStatBarPal(int palid);
void UnpackUiWindowFrameGraphics2(int window_theme);
void PutUiWindowFrame(int x, int y, int width, int height, int window_kind);
void PutUiHand(int x, int y);
void PutFrozenUiHand(int x, int y);
int GetUiHandPrevX(void);
int GetUiHandPrevY(void);
void ClearUi(void);
void PutUiEntryHover(int x, int y, int width);
void RemoveUiEntryHover(int x, int y, int width);
void UnpackUiUnitNameFrameGraphics(void *vram, int palid, int palcount);
void UnpackUiWindowFrameGraphics(void);

extern u16 const Pal_UiWindowFrame_ThemeBlue[];
extern u16 const Pal_UiWindowFrame_ThemeRed[];
extern u16 const Pal_UiWindowFrame_ThemeGray[];
extern u16 const Pal_UiWindowFrame_ThemeGreen[];
extern u8 const Img_UiWindowFrame_ThemeBlue[];
extern u8 const Img_UiWindowFrame_ThemeRed[];
extern u8 const Img_UiWindowFrame_ThemeGray[];
extern u8 const Img_UiWindowFrame_ThemeGreen[];
extern u16 const Pal_UiStatBar_ThemeBlue[];
extern u16 const Pal_UiStatBar_ThemeRed[];
extern u16 const Pal_UiStatBar_ThemeGray[];
extern u16 const Pal_UiStatBar_ThemeGreen[];
extern u8 const Img_UiUnitNameFrame[];
extern u16 const Pal_UiUnitNameFrame[];

/**
 * bg slide
 */
extern u16 const Pal_LinkArenaMuralBackground[];
extern u16 const Pal_MuralBackground[];
extern u8 const Img_MuralBackground[];

ProcPtr StartMuralBackground(ProcPtr parent, void *vram, int pal);
void EndMuralBackground(void);

/**
 * Misc
 */
void StartTemporaryLock(ProcPtr proc, int duration);
