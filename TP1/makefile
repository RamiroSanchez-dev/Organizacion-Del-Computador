# Makefile inspirado en el makefile del Grupo 5 #

CC = gcc
CFLAGS = -g -std=c99 -Wall -Werror
CFLAGS += -Wbad-function-cast
CFLAGS += -Wtype-limits -Wshadow -Wno-unused-variable
CFLAGS += -Wpointer-arith -Wunreachable-code -Wformat=2
CFLAGS += -pedantic


UNAME = $(shell uname -m)

tp1:
ifeq ($(UNAME), x86_64)
	$(CC) $(CFLAGS) TP1.c common.c common.h -o tp1
else
	$(CC) $(CFLAGS) TP1.c mcd.S mcm.S -mips32 -o tp1
endif

.PHONY : clean

clean:
	rm -f tp1
	rm *.o