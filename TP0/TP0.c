#include <string.h>
#include <unistd.h>
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "decode_encode.h"

#define MAXIMO_ARCHIVO 100

size_t obtener_tamanio_encode(size_t tamanio){
	switch(tamanio%3){
		case 0:
			return tamanio*4/3 + 1;
		break;
		case 1:
			return (tamanio+2)*4/3 + 1;
		break;
		case 2:
			return (tamanio+1)*4/3 + 1;
		break;
	}
	return 0;
}

size_t obtener_tamanio_decode(size_t tamanio){
	return tamanio*3/4 + 1;
}

void codificar(char nombre_fentrada[MAXIMO_ARCHIVO], char nombre_fsalida[MAXIMO_ARCHIVO]){
	FILE* fentrada = fopen(nombre_fentrada, "r");
	if(!fentrada){
		return;
	}
	FILE* fsalida = fopen(nombre_fsalida, "w");
	if(!fsalida){
		fclose(fentrada);
		return;
	}

	fseek(fentrada, 0, SEEK_END); 
	size_t size = (size_t) ftell(fentrada);
	fseek(fentrada, 0, SEEK_SET); 

	char* entrada = calloc(size + 1, sizeof(char));
	if(!entrada){
		fclose(fentrada);
		fclose(fsalida);
		return;
	}

	fread(entrada, 1, size, fentrada);

	char* salida = calloc(obtener_tamanio_encode(size), sizeof(char));

	codificador64((unsigned char*)entrada, salida);
	
	fwrite(salida, 1, obtener_tamanio_encode(size), fsalida);

	fclose(fentrada);
	fclose(fsalida);
	free(entrada);
}

void decodificar(char nombre_fentrada[MAXIMO_ARCHIVO], char nombre_fsalida[MAXIMO_ARCHIVO]){
	FILE* fentrada = fopen(nombre_fentrada, "r");
	if(!fentrada){
		return;
	}
	FILE* fsalida = fopen(nombre_fsalida, "w");
	if(!fsalida){
		fclose(fentrada);
		return;
	}

	fseek(fentrada, 0, SEEK_END); 
	size_t size = (size_t) ftell(fentrada);
	fseek(fentrada, 0, SEEK_SET); 

	char* entrada = calloc(size + 1, sizeof(char));
	if(!entrada){
		fclose(fentrada);
		fclose(fsalida);
		return;
	}

	fread(entrada, 1, size, fentrada);

	char* salida = calloc(obtener_tamanio_decode(size), sizeof(char));

	decodificador64((unsigned char*)entrada, salida);
	
	fwrite(salida, 1, obtener_tamanio_decode(size), fsalida);

	fclose(fentrada);
	fclose(fsalida);
	free(entrada);
}


void leer_stdin_encode(){
	int cant_leidos = 30;
	do{
		char array_aEnco[4] = "";
		char array_encodificado[5] = "";
		cant_leidos = scanf("%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
		if(cant_leidos == 1){
			array_aEnco[1] = '\0';
			array_aEnco[2] = '\0';
		}
		if(cant_leidos == 2){
			array_aEnco[2] = '\0';
		}
		codificador64((unsigned char*)array_aEnco, array_encodificado);
		printf("%s", array_encodificado);
	}while(cant_leidos == 3);
}

void leer_stdin_decode(){
	int cant_leidos = 30;
	do{
		char array_aDeco[5] = "";
		char array_decodificado[4] = "";
		cant_leidos = scanf("%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
		decodificador64((unsigned char*)array_aDeco, array_decodificado);
		printf("%s", array_decodificado);
	}while(cant_leidos == 4);
}


void mostrar_por_pantalla(char* argumento){
	size_t tamanio = strlen(argumento);
	size_t tamanio_encodificado = obtener_tamanio_encode(tamanio);
	char* encodificado = calloc(tamanio_encodificado, sizeof(char));
	codificador64((unsigned char*)argumento, encodificado);
	printf("%s", encodificado);
}

void mostrar_ayudas(){
	printf("No podés solo, necesitás ayudas.\n"); // :TODO
}

void mostrar_version(){
	printf("Pediste la versión.\n");
}

int main(int argc, char** argv){

	if(argc == 2){
		if(argv[1][0] == '-' && argv[1][1] == 'd'){
			leer_stdin_decode();
		}
	}else if(argc == 1){
		leer_stdin_encode();
	}else{
		int opt;

		char archivo_entrada[MAXIMO_ARCHIVO] = "";
		char archivo_salida[MAXIMO_ARCHIVO] = "";
		bool decode = false;

		while((opt = getopt(argc, argv, "hi:o:dv")) != -1) {
			switch(opt){
				case 'h':
					mostrar_ayudas();
				break;
				case 'v':
					mostrar_version();
				break;

				case 'i':
					strcpy(archivo_entrada, optarg);
				break;
				case 'o':
					strcpy(archivo_salida, optarg);
				break;
				case 'd':
					decode = true;
				break;
				default:
				break;
			}
		}

		if(strlen(archivo_entrada) == 0 || strlen(archivo_salida) == 0){
			printf("F\n");
		}

		if(decode){
			decodificar(archivo_entrada, archivo_salida);
		}else{
			codificar(archivo_entrada, archivo_salida);
		}
		return 0;
	}

	printf("\n");
	return 0;
}


/*STDIN Es la entrada por consola.

STDOUT es la salida por consola.*/