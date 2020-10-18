FLAGS = -Wall -Werror -Wconversion -std=c99 -g

test:
	gcc $(FLAGS) decode_encode.h decode_encode.c TP0_test.c mystrlen.S -o pruebas

	./pruebas
prog:
	gcc $(FLAGS) TP0.c decode_encode.c mystrlen.S -o TP0