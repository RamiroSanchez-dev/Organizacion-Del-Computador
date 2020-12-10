CC = gcc
CFLAGS = -g -std=c99 -Wall -Werror
CFLAGS += -Wbad-function-cast
CFLAGS += -Wtype-limits -Wno-unused-variable
CFLAGS += -pedantic

TEST = test_suite.h cache_test.c
CACHE = cache.h cache.c
LINKER = -lm

test:
	$(CC) $(CFLAGS) $(TEST) $(CACHE) $(LINKER) -o test

.PHONY : clean
	rm -f test