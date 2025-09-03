.SUFFIXES:
MAKEFLAGS += --no-print-directory

ifeq ($(OS),Windows_NT)
	$(error "need linux environment, abort)
endif

ifeq ($(strip $(DEVKITPRO)),)
	$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitpro)
endif

ifeq ($(strip $(DEVKITARM)),)
	$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM)
endif

# ==================
# = PROJECT CONFIG =
# ==================

BUILD_NAME := $(notdir $(CURDIR))

ROM := $(BUILD_NAME).gba
ELF := $(BUILD_NAME).elf
MAP := $(BUILD_NAME).map
SYM := $(BUILD_NAME).sym

all: $(ROM)

WIZARDRY_DIR := Wizardry
CONTENTS_DIR := Contents
GAMEDATA_DIR := Data Reloc
LIB_DIRS     := $(DEVKITPRO)/libgba

HACK_DIRS := $(WIZARDRY_DIR) $(CONTENTS_DIR) $(GAMEDATA_DIR)

CACHE_DIR := .cache_dir
$(shell mkdir -p $(CACHE_DIR) > /dev/null)

CLEAN_FILES :=
CLEAN_PNG_FILES :=

CLEAN_DIRS := $(CACHE_DIR) .release_dir $(shell find -name __pycache__)

# =========
# = Tools =
# =========

TOOLCHAIN ?= $(DEVKITARM)
ifneq (,$(TOOLCHAIN))
	export PATH := $(TOOLCHAIN)/bin:$(PATH)
endif

PREFIX  ?= arm-none-eabi-
CC      := $(PREFIX)gcc
AS      := $(PREFIX)as
OBJCOPY := $(PREFIX)objcopy
LD      := $(PREFIX)ld

GRIT := $(DEVKITPRO)/tools/bin/grit
LZSS := $(DEVKITPRO)/tools/bin/gbalzss

GRITLZ77ARGS      := -gu 16 -gzl -gB 4 -p! -m! -ft bin -fh!
GRIT4BPPARGS      := -gu 16 -gB 4 -p! -m! -ft bin -fh!
GRIT2BPPARGS      := -gu 16 -gb -gB 2 -p! -m! -ft bin -fh!
GRITPALETTEARGS	  := -g! -m! -p -ft bin -fh!
MAPPALETTEARGS    := -pn 160
BTLPALETTEARGS    := -pn 80

# ============
# = Wizardry =
# ============

INC_DIRS := include $(LIB_DIR)/include
INC_FLAG := $(foreach dir, $(INC_DIRS), -I$(dir)) \
			$(foreach dir, $(LIB_DIRS), -I$(dir)/include)

ARCH := -mcpu=arm7tdmi
CFLAGS := -g $(ARCH) -mtune=arm7tdmi \
		  $(INC_FLAG) \
		  -std=gnu99 -O2 -fno-builtin \
		  -Wall -Wextra -Werror -Wno-unused-parameter

CFLAGS += -fno-jump-tables
# CFLAGS += -fno-inline

ASFLAGS := -g $(ARCH) $(INC_FLAG)
LDFLAGS = -g $(ARCH) -Wl,-Map,$(notdir $*.map)

CDEPFLAGS = -MMD -MQ "$*.o" -MQ "$*.asm" -MF "$(CACHE_DIR)/$*.d" -MP
SDEPFLAGS = --MD "$(CACHE_DIR)/$(notdir $*).d"

%.o:   EXT_FLAGS := -mthumb -mthumb-interwork
%.asm: EXT_FLAGS := -mthumb -mthumb-interwork

%.arm.o   : EXT_FLAGS := -marm
%.arm.asm : EXT_FLAGS := -marm

%iwram.o   : EXT_FLAGS := -marm -mlong-calls
%iwram.asm : EXT_FLAGS := -marm -mlong-calls

%.o: %.c
	@echo "[CC ]	$@"
	@mkdir -p $(dir $@) $(dir $(CACHE_DIR)/$*.d)
	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -g -c $< -o $@

%.asm: %.c
	@echo "[CC ]	$@"
	@mkdir -p $(dir $@) $(dir $(CACHE_DIR)/$*.d)
	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -S $< -o $@ -fverbose-asm

ASM_DEP := python3 Tools/asmtools/asmdep.py
$(CACHE_DIR)/%.d: %.S
	@mkdir -p $(dir $@)
	@echo "$(CACHE_DIR)/$*.o: \\" > $@
	@$(ASM_DEP) $(INC_FLAG) $< >> $@

SDEPFLAGS := -MD "$(CACHE_DIR)/$*.d"

%.o: %.S
	@echo "[AS ]	$@"
#	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -g -c $< -o $@
	@$(CC) $(CFLAGS) $(EXT_FLAGS) -g -c $< -o $@
#	@$(AS) $(ASFLAGS) $(SDEPFLAGS) -I $(dir $<) $< -o $@

C_SRCS := $(shell find $(HACK_DIRS) -name *.c)
C_OBJS := $(C_SRCS:%.c=%.o)

ASM_SRCS := $(shell find $(HACK_DIRS) -name *.S)
ASM_OBJS := $(ASM_SRCS:%.S=%.o)

ALL_OBJS := $(C_OBJS) $(ASM_OBJS)
ALL_DEPS := $(ALL_OBJS:%.o=$(CACHE_DIR)/%.d)

ifneq (clean,$(MAKECMDGOALS))
-include $(ALL_DEPS)
.PRECIOUS: $(BUILD_DIR)/%.d
endif

CLEAN_FILES += $(ALL_OBJS) $(ALL_OBJS) $(ALL_DEPS)
CLEAN_FILES += $(C_SRCS:%.c=%.asm)

# ============
# = Spritans =
# ============

PNG_FILES := $(shell find $(HACK_DIRS) -type f -name '*.png')
TSA_FILES := $(shell find $(HACK_DIRS) -type f -name '*.tsa')

%.4bpp: %.png
	@echo "[GEN]	$@"
	@cd $(dir $<) && $(GRIT) $(notdir $<) $(GRIT4BPPARGS)
	@mv $(basename $<).img.bin $@

%.gbapal: %.png
	@echo "[GEN]	$@"
	@cd $(dir $<) && $(GRIT) $(notdir $<) $(GRITPALETTEARGS)
	@mv $(basename $<).pal.bin $@

%.lz: %
	@echo "[LZ ]	$@"
	@$(LZSS) e $< $@

%.lz77: %.png
	@echo "[LZ ]	$@"
	@cd $(dir $<) && $(GRIT) $(notdir $<) $(GRITLZ77ARGS)
	@mv $(basename $<).img.bin $@

CLEAN_PNG_FILES += $(PNG_FILES:.png=.gbapal) $(PNG_FILES:.png=.4bpp) $(PNG_FILES:.png=.4bpp.lz)
CLEAN_PNG_FILES += $(PNG_FILES:.png=.lz77)
CLEAN_PNG_FILES += $(TSA_FILES:.tsa=.tsa.lz)

%.img.bin %.map.bin %.pal.bin: %.png
	@echo "[GEN]	$@"
	@$(GRIT) $< -gB 4 -gzl -m -mLf -mR4 -mzl -pn 16 -ftb -fh! -o $@

CLEAN_PNG_FILES += $(PNG_FILES:.png=.img.bin) $(PNG_FILES:.png=.map.bin) $(PNG_FILES:.png=.pal.bin)

# ===========
# = RECIPES =
# ===========
LDS := Wizardry/Kernel/lds/gba_cart.lds
LIBS := -lmm -lgba
LIB_PATHES := $(foreach dir,$(LIB_DIRS),-L$(dir)/lib)
LDFLAGS = -T $(LDS) -Map $(MAP) $(LIB_PATHES) $(LIBS)

$(ELF): $(ALL_OBJS) $(LDS)
	@echo "[LD ]	$@"
	@$(LD) $(LDFLAGS) $(ALL_OBJS)  -o $@

$(ROM): $(ELF)
	@echo "[GEN]	$@"
	@$(OBJCOPY) --strip-debug -O binary $< $@ || exit 1
	@python3 ./Tools/Scripts/elf2sym.py $< > $(SYM)
	@gbafix $@ -t$(BUILD_NAME) -c0000 -m00

CLEAN_FILES += $(ELF) $(ROM) $(MAP) $(SYM)

clean:
	@rm -f $(CLEAN_FILES)
	@rm -f $(CLEAN_PNG_FILES)
	@rm -rf $(CLEAN_DIRS)
	@echo "all cleaned..."
