.SUFFIXES:

# ==================
# = PROJECT CONFIG =
# ==================

BUILD_NAME := $(notdir $(CURDIR))

SRC_DIR = sources
BUILD_DIR = build

# ====================
# = TOOL DEFINITIONS =
# ====================
include scripts/Kbuild/base_tools.mk
export GBAGFX := tools/gbafix/gbafix

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -fhex-asm -ffix-debug-line -g
CPPFLAGS := -I $(AGBCC_HOME)/include -iquote include -iquote . -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I include

LDS := $(SRC_DIR)/arch/gba-cart.lds
ROM := $(BUILD_NAME).gba
ELF := $(BUILD_NAME).elf
MAP := $(BUILD_NAME).map

C_SRCS := $(shell find $(SRC_DIR) -name *.c)
C_OBJS := $(C_SRCS:%.c=$(BUILD_DIR)/%.o)

ASM_SRCS := $(shell find $(SRC_DIR) -name *.S)
ASM_OBJS := $(ASM_SRCS:%.S=$(BUILD_DIR)/%.o)

ALL_OBJS := $(C_OBJS) $(ASM_OBJS)
ALL_DEPS := $(ALL_OBJS:%.o=%.d)

SUBDIRS := $(sort $(dir $(ALL_OBJS)))
$(shell mkdir -p $(SUBDIRS))

# ===========
# = RECIPES =
# ===========

$(ROM): $(ELF)
	$(SILENTMSG) "[GEN]	$@"
	$(SILENTCMD) $(OBJCOPY) --strip-debug -O binary $< $@
	$(SILENTMSG) "[FIX]	$@"
	$(SILENTCMD) $(GBAGFX) $@ --silent

$(ELF): $(ALL_OBJS) $(LDS)
	$(SILENTMSG) "[LD ]	$@"
	$(SILENTCMD) cd $(BUILD_DIR) && $(LD) -T ../$(LDS) -Map ../$(MAP) -L../tools/agbcc/lib $(ALL_OBJS:$(BUILD_DIR)/%=%) -lc -lgcc -o ../$@

$(SYM): $(ELF)
	$(SILENTMSG) "[GEN]	$@"
	$(SILENTCMD) $(OBJDUMP) -t $< | sort -u | grep -E "^0[2389]" | $(PERL) -p -e 's/^(\w{8}) (\w).{6} \S+\t(\w{8}) (\S+)$$/\1 \2 \3 \4/g' > $@

# C dependency file
$(BUILD_DIR)/%.d: %.c
	$(SILENTCMD) $(CPP) $(CPPFLAGS) $< -o $@ -MM -MG -MT $@ -MT $(BUILD_DIR)/$*.o

-include $(shell find $(BUILD_DIR) -name *.d)

$(C_OBJS): $(BUILD_DIR)/%.o: %.c $(BUILD_DIR)/%.d
	$(SILENTMSG) "[CC ]	$<"
	$(SILENTCMD) $(CPP) $(CPPFLAGS) $< | iconv -f UTF-8 -t CP932 | $(CC1) $(CFLAGS) -o $(BUILD_DIR)/$*.s
	$(SILENTCMD) echo ".ALIGN 2, 0" >> $(BUILD_DIR)/$*.s
	$(SILENTCMD) $(AS) $(ASFLAGS) $(BUILD_DIR)/$*.s -o $@

$(BUILD_DIR)/%.d: $(BUILD_DIR)/%.o
	@touch $@

# ASM object
$(ASM_OBJS): $(BUILD_DIR)/%.o: %.S
	$(SILENTMSG) "[AS ]	$<"
	$(SILENTCMD) $(AS) $(ASFLAGS) $< -o $@ --MD $(BUILD_DIR)/$*.d

clean:
	$(SILENTMSG) "[RM ]	$(ROM) $(ELF) $(MAP) $(BUILD_DIR)/"
	$(SILENTCMD) rm -f $(ROM) $(ELF) $(MAP)
	$(SILENTCMD) rm -fr $(BUILD_DIR)/

.PHONY: clean

ifneq (clean,$(MAKECMDGOALS))
	-include $(ALL_DEPS)
	.PRECIOUS: $(BUILD_DIR)/%.d
endif
