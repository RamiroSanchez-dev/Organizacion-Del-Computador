FLAGS = -Wall -Werror -Wconversion -std=c99 -g -O0

test:
	gcc $(FLAGS) decode_encode.h decode_encode.c TP0_test.c -o pruebas

	./pruebas
tp0:
	gcc $(FLAGS) TP0.c decode_encode.c decode_encode.h -o TP0
