#ifndef _DECODE_ENCODE_H__
#define _DECODE_ENCODE_H__

#include <unistd.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
/*
void codificador64(unsigned char* palabra, char* palabra_nueva);

void decodificador64(unsigned char* palabra, char* palabra_nueva);
*/
void decodificar_archivo(FILE* fentrada, FILE* fsalida);

void codificar_archivo(FILE* fentrada, FILE* fsalida);

#endif /* DECODE_ENCODE_H */