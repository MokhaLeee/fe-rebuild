#include "common.h"
#include "bm.h"
#include "proc.h"
#include "hardware.h"

#include "text.h"
#include "utf8.h"
#include "test.h"

#if CONFIG_DEBUG_TEST_TEXT

static void TextTest_Init(ProcPtr proc)
{}

static void TextTest_Loop(ProcPtr proc)
{}

static const struct ProcScr ProcScr_TextTest[] = {
	PROC_NAME("TextTest"),
	PROC_CALL(TextTest_Init),
	PROC_YIELD,
	PROC_REPEAT(TextTest_Loop),
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
