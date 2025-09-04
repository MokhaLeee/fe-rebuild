#include "common.h"
#include "bm.h"
#include "proc.h"
#include "hardware.h"

#include "text.h"
#include "utf8.h"
#include "test.h"

#if CONFIG_DEBUG_TEST_TEXT

EWRAM_OVERLAY_TEST struct Text test_texts[3];

static void TextTest_Init(ProcPtr proc)
{
	struct Text texts[3], *text;

	ResetText();
	StartGreenText(NULL);

	// InitTalkTextFont();
	InitSystemTextFont();

	text = &texts[0];
	InitText(text, 0x10);
	Text_SetColor(text, TEXT_COLOR_SYSTEM_WHITE);
	Text_DrawString(text, "helloworld mokha");
	PutText(text, gBg0Tm + TM_OFFSET(4, 6));

	text = &texts[1];
	InitText(text, 0x10);
	Text_SetColor(text, TEXT_COLOR_SYSTEM_GOLD);
	Text_DrawString(text, "This is system text font test");
	PutText(text, gBg0Tm + TM_OFFSET(4, 8));

	text = &texts[2];
	InitText(text, 0x10);
	Text_SetColor(text, TEXT_COLOR_SYSTEM_GREEN);
	Text_DrawString(text, "This is green text test");
	PutText(text, gBg0Tm + TM_OFFSET(4, 10));

	EnableBgSync(BG0_SYNC_BIT);
}

static void TextTest_Loop(ProcPtr proc) {}


static void TextTest_OnEnd(ProcPtr proc)
{
	EndGreenText();
}

static const struct ProcScr ProcScr_TextTest[] = {
	PROC_NAME("TextTest"),
	PROC_ONEND(TextTest_OnEnd),
	PROC_CALL(TextTest_Init),
	PROC_YIELD,
	PROC_REPEAT(TextTest_Loop),
	PROC_YIELD,
	PROC_BLOCK,
	PROC_END
};

void text_test(ProcPtr proc)
{
	if (proc)
		SpawnProc(ProcScr_TextTest, proc);
	else
		SpawnProc(ProcScr_TextTest, PROC_TREE_3);
}

#endif
