CC = gcc

.PHONY: all clean

SRCS = gbafix.c

all: gbafix
	@:

gbafix: $(SRCS)
	$(CC) -O2 $(SRCS) -o $@ $(LDFLAGS)

clean:
	$(RM) gbafix gbafix.exe
