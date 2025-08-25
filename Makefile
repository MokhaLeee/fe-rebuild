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
GAMEDATA_DIR := Data
LIB_DIRS     := $(DEVKITPRO)/libgba

HACK_DIRS := $(WIZARDRY_DIR) $(CONTENTS_DIR) $(GAMEDATA_DIR)

CACHE_DIR := .cache_dir
$(shell mkdir -p $(CACHE_DIR) > /dev/null)

CLEAN_FILES :=
CLEAN_DIRS  := $(CACHE_DIR) .release_dir $(shell find -name __pycache__)

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

# ============
# = Wizardry =
# ============

INC_DIRS := include $(LIB_DIR)/include
INC_FLAG := $(foreach dir, $(INC_DIRS), -I $(dir)) \
            $(foreach dir,$(LIB_DIRS),-I$(dir)/include)

ARCH := -mcpu=arm7tdmi
CFLAGS := -g $(ARCH) -mtune=arm7tdmi \
          $(INC_FLAG) \
		  -std=gnu99 -O2 -fno-builtin \
		  -Wall -Wextra -Werror -Wno-unused-parameter

ASFLAGS := -g $(ARCH) $(INC_FLAG)
LDFLAGS = -g $(ARCH) -Wl,-Map,$(notdir $*.map)

CDEPFLAGS = -MMD -MT "$*.o" -MT "$*.asm" -MF "$(CACHE_DIR)/$(notdir $*).d" -MP
SDEPFLAGS = --MD "$(CACHE_DIR)/$(notdir $*).d"

%.arm.o  : EXT_FLAGS := -marm
%iwram.o : EXT_FLAGS := -marm -mlong-calls

EXT_FLAGS := -mthumb -mthumb-interwork

%.o: %.c
	@echo "[CC ]	$@"
	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -g -c $< -o $@

%.asm: %.c
	@echo "[CC ]	$@"
	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -S $< -o $@ -fverbose-asm

%.o: %.S
	@echo "[AS ]	$@"
	@$(AS) $(ASFLAGS) $(SDEPFLAGS) -I $(dir $<) $< -o $@

.PRECIOUS: %.o;
-include $(wildcard $(CACHE_DIR)/*.d)

C_SRCS := $(shell find $(SRC_DIR) -name *.c)
C_OBJS := $(C_SRCS:%.c=%.o)

ASM_SRCS := $(shell find $(SRC_DIR) -name *.S)
ASM_OBJS := $(ASM_SRCS:%.S=%.o)

ALL_OBJS := $(C_OBJS) $(ASM_OBJS)
ALL_DEPS := $(ALL_OBJS:%.o=%.d)

CLEAN_FILES += $(ALL_OBJS) $(ALL_OBJS) $(ALL_DEPS)

CLEAN_FILES += $(C_SRCS:%.c=%.asm)

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

CLEAN_FILES += $(ELF) $(ROM) $(MAP)

clean:
	@rm -f $(CLEAN_FILES)
	@rm -rf $(CLEAN_DIRS)
	@echo "all cleaned..."
