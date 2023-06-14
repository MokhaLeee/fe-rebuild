AGBCC_HOME	?=	tools/agbcc
PREFIX		:=	arm-none-eabi-

export CC	:=	$(PREFIX)gcc
export CC1	:=	$(AGBCC_HOME)/bin/agbcc
export CPP	:=	$(PREFIX)cpp
export CXX	:=	$(PREFIX)g++
export AS	:=	$(PREFIX)as
export AR	:=	$(PREFIX)gcc-ar
export OBJCOPY	:=	$(PREFIX)objcopy
export STRIP	:=	$(PREFIX)strip
export NM	:=	$(PREFIX)gcc-nm
export RANLIB	:=	$(PREFIX)gcc-ranlib
export LD	:=	$(PREFIX)ld

ifeq ($(V),1)
    SILENTMSG := @true
    SILENTCMD :=
else
    SILENTMSG := @echo
    SILENTCMD := @
endif
