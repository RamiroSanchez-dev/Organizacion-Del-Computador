#include <string.h>
#include <unistd.h>
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "decode_encode.h"

#define MAXIMO_ARCHIVO 100

/* DECODE */
size_t obtener_tamanio_decode(size_t tamanio){
	return tamanio*3/4 + 1;
}

void decodificar_archivo_archivo(char nombre_fentrada[MAXIMO_ARCHIVO], char nombre_fsalida[MAXIMO_ARCHIVO]){
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

void decodificar_archivo_stdout(char nombre_fentrada[MAXIMO_ARCHIVO]){
	FILE* fentrada = fopen(nombre_fentrada, "r");
	if(!fentrada){
		return;
	}
	fseek(fentrada, 0, SEEK_END);
	size_t size = (size_t) ftell(fentrada);
	fseek(fentrada, 0, SEEK_SET);

	char* entrada = calloc(size + 1, sizeof(char));
	if(!entrada){
		fclose(fentrada);
		return;
	}

	fread(entrada, 1, size, fentrada);

	char* salida = calloc(obtener_tamanio_decode(size), sizeof(char));

	decodificador64((unsigned char*)entrada, salida);

	printf("%s",salida);

	fclose(fentrada);
	free(entrada);
}

void decodificar_stdin_archivo(char nombre_fsalida[MAXIMO_ARCHIVO]){
	FILE* fsalida = fopen(nombre_fsalida, "w");
	if(!fsalida){
		// TODO: ESCRIBIR ALGO.
		return;
	}

	bool sigo_leyendo = true;
	do{
		char array_aDeco[5] = "";
		char array_decodificado[4] = "";
		scanf("%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
		if(strlen(array_aDeco) == 0){
			sigo_leyendo = false;
		}else if(strlen(array_aDeco) < 4){
			printf("Entrada invalida. La entrada deberia ser multiplo de 4\n");
			sigo_leyendo = false;
		}else{
			decodificador64((unsigned char*)array_aDeco, array_decodificado);
			fwrite(array_decodificado, 1, obtener_tamanio_decode(strlen(array_decodificado)), fsalida);
		}
	}while(sigo_leyendo);
}

void decodificar_stdin_stdout(){
	bool sigo_leyendo = true;
	do{
		char array_aDeco[5] = "";
		char array_decodificado[4] = "";
		scanf("%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
		if(strlen(array_aDeco) == 0 || (strlen(array_aDeco) == 1 && array_aDeco[0] == '\n')){
			sigo_leyendo = false;
		}else if(strlen(array_aDeco) < 4){
			printf("Entrada invalida. La entrada deberia ser multiplo de 4\n");
			sigo_leyendo = false;
		}else{
			decodificador64((unsigned char*)array_aDeco, array_decodificado);
			printf("%s", array_decodificado);
		}
	}while(sigo_leyendo);
}


/* ENCODE */
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

void codificar_archivo_archivo(char nombre_fentrada[MAXIMO_ARCHIVO], char nombre_fsalida[MAXIMO_ARCHIVO]){
	FILE* fentrada = fopen(nombre_fentrada, "r");
	if(!fentrada){
		printf("No se pudo abrir al archivo de entrada.\n");
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

void codificar_archivo_stdout(char nombre_fentrada[MAXIMO_ARCHIVO]){
	FILE* fentrada = fopen(nombre_fentrada, "r");
	if(!fentrada){
		printf("No se pudo abrir al archivo de entrada.\n");
		return;
	}

	fseek(fentrada, 0, SEEK_END); 
	size_t size = (size_t) ftell(fentrada);
	fseek(fentrada, 0, SEEK_SET); 

	char* entrada = calloc(size + 1, sizeof(char));
	if(!entrada){
		fclose(fentrada);
		return;
	}

	fread(entrada, 1, size, fentrada);

	char* salida = calloc(obtener_tamanio_encode(size), sizeof(char));

	codificador64((unsigned char*)entrada, salida);
	
	printf("%s", salida);

	fclose(fentrada);
	free(entrada);
}

void codificar_stdin_archivo(char nombre_fsalida[MAXIMO_ARCHIVO]){
	FILE* fsalida = fopen(nombre_fsalida, "w");
	if(!fsalida){
		// TODO: ESCRIBIR ALGO.
		return;
	}
	bool sigo_leyendo = true;
	do{
		char array_aEnco[4] = "";
		char array_encodificado[5] = "";
		scanf("%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
		if(strlen(array_aEnco) == 3){
			codificador64((unsigned char*)array_aEnco, array_encodificado);
		}else if(strlen(array_aEnco) == 2){
			codificador64((unsigned char*)array_aEnco, array_encodificado);
			sigo_leyendo = false;
		}else if(strlen(array_aEnco) == 1){
			array_aEnco[2] = '\0';
			codificador64((unsigned char*)array_aEnco, array_encodificado);
			sigo_leyendo = false;
		}else{
			sigo_leyendo = false;
		}
		fwrite(array_encodificado, 1, obtener_tamanio_decode(strlen(array_encodificado)), fsalida);
	}while(sigo_leyendo);
}

void codificar_stdin_stdout(){
	bool sigo_leyendo = true;
	do{
		char array_aEnco[4] = "";
		char array_encodificado[5] = "";
		scanf("%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
		if(strlen(array_aEnco) == 3){
			codificador64((unsigned char*)array_aEnco, array_encodificado);
		}else if(strlen(array_aEnco) == 2){
			codificador64((unsigned char*)array_aEnco, array_encodificado);
			sigo_leyendo = false;
		}else if(strlen(array_aEnco) == 1){
			array_aEnco[2] = '\0';
			codificador64((unsigned char*)array_aEnco, array_encodificado);
			sigo_leyendo = false;
		}else{
			sigo_leyendo = false;
		}
		printf("%s", array_encodificado);
	}while(sigo_leyendo);
}


void mostrar_ayudas(){
	printf("\n");
	printf("-h, --help: Muestra la interfaz de ayudas.\n");
	printf("-v, --version: Indica la version del programa.\n");
	printf("-i, --input: Indica la direccion donde esta el archivo a leer.\n");
	printf("-o, --output: Indica la direccion donde esta el archivo a escribir.\n");
	printf("-d, --decode: Si se utiliza este flag se decodificara la entrada. De forma estandar la entrada es codificada.\n");
	
	printf("\n");
	printf("Ejemplos:\n");
	printf("\n");
	printf("\n");

	printf("> ./TP0 -i input.txt -o output.txt\n");
	printf("\n");
	
	printf("> ./TP0 -i input.txt -o output.txt -d\n");
	printf("\n");
	
	printf("> echo \"Eres debil Sasuke te falta odio.\" | ./TP0\n");
	printf("> RXJlcyBkZWJpbCBTYXN1a2UgdGUgZmFsdGEgb2Rpby4K\n");
	printf("\n");
	
	printf("> echo \"RXJlcyBkZWJpbCBTYXN1a2UgdGUgZmFsdGEgb2Rpby4K\" | ./TP0\n");
	printf("> Eres debil Sasuke te falta odio.\n");
	printf("\n");
}

void mostrar_version(){
	printf("Version 1.0.0\n");
}


int main(int argc, char** argv){
	
	static struct option long_options[] = {
                   {"version", no_argument, 0, 'v'},
                   {"help",no_argument, 0, 'h'},
                   {"input",required_argument, 0, 'i'},
                   {"output",required_argument, 0, 'o'},
                   {"decode", no_argument, 0, 'd'},
                   {0,0,0,0}
               };

	int opt;
	char archivo_entrada[MAXIMO_ARCHIVO] = "";
	char archivo_salida[MAXIMO_ARCHIVO] = "";
	bool decode = false;
	bool pidio_info = false;

	while((opt = getopt_long(argc, argv, "i:o:dvh",long_options,NULL)) != -1) {
		switch(opt){
			case 'i':
				strcpy(archivo_entrada, optarg);
			break;

			case 'o':
				strcpy(archivo_salida, optarg);
			break;

			case 'd':
				decode = true;
			break;

			case 'h':
				if(!pidio_info){
					mostrar_ayudas();
					pidio_info = true;
				}
			break;

			case 'v':
				if(!pidio_info){
					pidio_info = true;
					mostrar_version();
				}
			break;

			default:
			break;
		}
	}
	
	if(pidio_info){
		return 0;
	}
	if(decode){
		if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) == 0){
			decodificar_stdin_stdout();
		}else if(strlen(archivo_entrada) != 0 && strlen(archivo_salida) == 0){
			decodificar_archivo_stdout(archivo_entrada);
		}else if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) != 0){
			decodificar_stdin_archivo(archivo_salida);
		}else{
			decodificar_archivo_archivo(archivo_entrada, archivo_salida);
		}
	}else{
		if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) == 0){
			codificar_stdin_stdout();
		}else if(strlen(archivo_entrada) != 0 && strlen(archivo_salida) == 0){
			codificar_archivo_stdout(archivo_entrada);
		}else if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) != 0){
			codificar_stdin_archivo(archivo_salida);
		}else{
			codificar_archivo_archivo(archivo_entrada, archivo_salida);
		}
	}		
	return 0;
}
