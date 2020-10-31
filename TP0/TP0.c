#include <string.h>
#include <unistd.h>
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "decode_encode.h"

#define MAXIMO_ARCHIVO 100


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
	FILE *fentrada, *fsalida;
	char nombre_archivo_entrada[MAXIMO_ARCHIVO] = "";
	char nombre_archivo_salida[MAXIMO_ARCHIVO] = "";
	bool decode = false;
	bool pidio_info = false;

	while((opt = getopt_long(argc, argv, "i:o:dvh",long_options,NULL)) != -1) {
		switch(opt){
			case 'i':
				strcpy(nombre_archivo_entrada, optarg);
			break;

			case 'o':
				strcpy(nombre_archivo_salida, optarg);
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
	
	if(pidio_info)
		return 0;

	if(strlen(nombre_archivo_entrada) == 0)
		fentrada = stdin;
	else 
		fentrada = fopen(nombre_archivo_entrada, "r");
	if(!fentrada){
		printf("No se logro abrir el archivo de entrada.\n");
		return -1;
	}
	if(strlen(nombre_archivo_salida) == 0)
		fsalida = stdout; 
	else
		fsalida = fopen(nombre_archivo_salida, "w");
	if(!fsalida){
		fclose(fentrada);
		printf("No se logro abrir el archivo de salida.\n");
		return -1;
	}


	if(decode)
		decodificar_archivo(fentrada, fsalida);		
	else
		codificar_archivo(fentrada, fsalida);	

	fclose(fentrada);
	fclose(fsalida);	
	return 0;
}
