CC = gcc
CFLAGS = -g -std=c99 -Wall -Werror
CFLAGS += -Wbad-function-cast
CFLAGS += -Wtype-limits -Wno-unused-variable
CFLAGS += -pedantic

TEST = test_suite.h cache_test.c
CACHE = cache.h cache.c
LINKER = -lm
VALGRIND = valgrind --leak-check=full --track-origins=yes --show-reachable=yes
INTERPRETE = interprete.h interprete.c 
test:
	$(CC) $(CFLAGS) $(TEST) $(CACHE) $(LINKER) -o test

tp2:
	$(CC) $(CFLAGS) $(CACHE) $(INTERPRETE) $(LINKER) TP2.c -o tp2

valgrind_test:
	$(VALGRIND) ./test

.PHONY : clean
	rm -f test
