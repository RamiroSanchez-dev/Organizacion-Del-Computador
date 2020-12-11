#define ERROR_LECTURA -1
#define LECTURA_EXITOSA 0
#define PIDIO_AYUDA 1
#define PIDIO_VERSION 1

#include "cache.h"
#include "interprete.h"
#include <stdlib.h>
#include <getopt.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>
#include <limits.h>

bool es_potencia_de_dos(int numero){
	if (numero < 1)
		return false;

	while(numero % 2 == 0){
		numero = numero / 2;
	}

	return (numero == 1);
}

int verificar_parametros(){
	if(tamanio_cache <= 0 || tamanio_bloque <= 0 || cantidad_vias <= 0){
		fprintf(stderr, "Error -- Es necesario que ingrese todos los siguientes valores y que sean mayores a cero: cachesize(%i) blocksize(%i) ways(%i)\n",tamanio_cache,tamanio_bloque,cantidad_vias);
		return ERROR_LECTURA;
	}
	if(!es_potencia_de_dos(tamanio_cache) || !es_potencia_de_dos(tamanio_bloque) || !es_potencia_de_dos(cantidad_vias)){
		fprintf(stderr, "Error -- Todos los siguientes valores deben ser potencias de dos: cachesize(%i) blocksize(%i) cantidad_vias(%i)\n",tamanio_cache,tamanio_bloque,cantidad_vias);
		return ERROR_LECTURA;
	}

	return LECTURA_EXITOSA;
}

unsigned int leer_uint(char* string){
	long resultado = strtol(string, NULL, 10);
	if(resultado > UINT_MAX || errno == ERANGE){
		fprintf(stderr, "Error -- El numero (%s) esta fuera del rango representable.\n",string);
		return ERROR_LECTURA;
	}
	return (int) resultado;
}

void mostrar_ayuda(){

}

void mostrar_version(){

}

int leer_entrada(int argc, char** argv, FILE* archivo_entrada, FILE* archivo_salida){
	bool pidio_ayuda=false,pidio_version=false,error_lectura=false;

	if(argc == 1 ){
		
		fprintf(stderr,"Insuficiente información: Ingrese los argumentos. Consulta las ayudas con ./tp2 -h\n");
		return ERROR_LECTURA;
	}

	int opt;
	static struct option long_options[] = {
		{"version", no_argument, 0, 'v'},
		{"help",no_argument, 0, 'h'},
		{"cachesize",no_argument, 0, 'c'},
		{"blocksize",no_argument, 0, 'b'},
		{"ways", no_argument, 0, 'w'},
		{"output",required_argument, 0, 'o'},
		{0,0,0,0}
	}; 

	while((opt = getopt_long(argc, argv, "o:c:b:w:vh",long_options,NULL)) != -1 ) {
		switch(opt){

			case 'o':
				archivo_salida=fopen(optarg,"w");
				if(!archivo_salida){
					fprintf(stderr, "Error al leer el archivo de salida ( %s ).\n",optarg);
					error_lectura = true;
				}
				break;

			case 'c':
					tamanio_cache = leer_uint(optarg);
				break;

			case 'w':
					cantidad_vias = leer_uint(optarg);
				break;

			case 'b':
					tamanio_bloque = leer_uint(optarg);
				break;

			case 'h':
				mostrar_ayuda();
				pidio_ayuda = true;
				break;

			case 'v':
				mostrar_version();
				pidio_version = true;
				break;
		}
	}
	archivo_entrada = fopen(argv[argc - 1],"r");


	/*  ======    ERROR HANDLING    ======   */
	if(!archivo_entrada){
		fprintf(stderr, "Error al abrir el archivo ( %s )\n",argv[argc - 1]);
		if(archivo_salida != NULL && archivo_salida != stdout)
			fclose(archivo_salida);
		error_lectura = true;
	}

	if(pidio_version) return PIDIO_VERSION;
	if(pidio_ayuda) return PIDIO_AYUDA;
	if(error_lectura) return ERROR_LECTURA;

	return LECTURA_EXITOSA;
}

int main(int argc, char *argv[]){
	FILE* archivo_entrada = NULL;
	FILE* archivo_salida = stdout;
	int resultado_lectura;

	resultado_lectura = leer_entrada(argc, argv, archivo_entrada, archivo_salida);
	
	/*  ======    ERROR HANDLING    ======   */
	if(resultado_lectura == ERROR_LECTURA || verificar_parametros() == ERROR_LECTURA){
		fprintf(stderr, "Finalizando ejecución del programa.\n");
		fprintf(stderr, "Consulta las ayudas con ./tp2 -h\n");
		return -1;
	}

	if(resultado_lectura == PIDIO_AYUDA || resultado_lectura == PIDIO_VERSION){
		if(archivo_salida != NULL && archivo_salida != stdout)
			fclose(archivo_salida);
		if(archivo_entrada != NULL)
			fclose(archivo_entrada);
		return 0;
	}

	printf("bs: %i\n",tamanio_bloque);
	printf("cs: %i\n",tamanio_cache);
	printf("w: %i\n",cantidad_vias);

	//init();
	//interpretar(archivo);
	//destroy();

	if(archivo_salida != NULL && archivo_salida != stdout)
		fclose(archivo_salida);
	if(archivo_entrada != NULL)
		fclose(archivo_entrada);
	return 0;
}