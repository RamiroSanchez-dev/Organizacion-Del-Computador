#define ERROR_LECTURA -1
#define LECTURA_EXITOSA 0
#define PIDIO_AYUDA 1
#define PIDIO_VERSION 1
const char VERSION[] = "1.0.1";

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
	printf("\n");

	printf("-h, --help:\t\tMuestra la interfaz de ayudas.\n");
	printf("-v, --version:\t\tIndica la version del programa.\n");
	printf("-w, --ways:\t\tIndica la cantidad de vias.\n");
	printf("-b, --blocksize:\tIndica el tamaño del bloque.\n");
	printf("-c, --cachesize:\tIndica el tamaño del cache.\n");
	printf("-o, --output:\t\tIndica el archivo de salida.\n");
	
	printf("\n");

	printf("Modo de uso:\n");
	printf("El archivo de entrada DEBE ir como ultimo parámetro.\n");
	printf("En caso de que falten algunas de las opciones -c -b -w el programa indicará error.\n");
	printf("Los parámetros que se pasen a las opciones -c -b -w DEBEN ser potencias de 2 y mayores a cero.\n");
	printf("En caso de no elegir archivo de salida, la salida se hará por stdout.\n");
	printf("Todos los errores se indican por stderr.\n");
	printf("\n");
	printf("Ejemplo:\n\t> ./tp2 -w 4 -cs 8 -bs 16 prueba1.mem\n");	
}

void mostrar_version(){
	printf("Version %s\n", VERSION);
}

int leer_entrada(int argc, char** argv, FILE** archivo_entrada, FILE** archivo_salida){
	bool pidio_ayuda=false,pidio_version=false,error_lectura=false;

	if(argc == 1 ){
		
		fprintf(stderr,"Insuficiente información: Ingrese los argumentos.\n");
		return ERROR_LECTURA;
	}

	int opt;
	static struct option long_options[] = {
		{"version", no_argument, 0, 'v'},
		{"help",no_argument, 0, 'h'},
		{"cachesize",required_argument, 0, 'c'},
		{"blocksize",required_argument, 0, 'b'},
		{"ways", required_argument, 0, 'w'},
		{"output",required_argument, 0, 'o'},
		{0,0,0,0}
	}; 

	while((opt = getopt_long(argc, argv, "o:c:b:w:vh",long_options,NULL)) != -1 ) {
		switch(opt){

			case 'o':
				*archivo_salida = fopen(optarg,"w");
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
				pidio_ayuda = true;
				break;

			case 'v':
				pidio_version = true;
				break;
		}
	}
	*archivo_entrada = fopen(argv[argc - 1],"r");

	if(pidio_ayuda){
		mostrar_ayuda();
		return PIDIO_AYUDA;
	}

	if(pidio_version){
		mostrar_version();
		return PIDIO_VERSION;
	}

	/*  ======    ERROR HANDLING    ======   */
	if(!(*archivo_entrada)){
		fprintf(stderr, "Error al abrir el archivo ( %s )\n",argv[argc - 1]);
		if(*archivo_salida != NULL && *archivo_salida != stdout)
			fclose(*archivo_salida);
		error_lectura = true;
	}


	if(error_lectura) return ERROR_LECTURA;

	return LECTURA_EXITOSA;
}

int main(int argc, char *argv[]){
	cache.inicializada = false;
	FILE* archivo_entrada = NULL;
	FILE* archivo_salida = stdout;
	int resultado_lectura;

	resultado_lectura = leer_entrada(argc, argv, &archivo_entrada, &archivo_salida);
	
	/*  ======    ERROR HANDLING    ======   */
	if(resultado_lectura == PIDIO_AYUDA || resultado_lectura == PIDIO_VERSION){
		if(archivo_salida != NULL && archivo_salida != stdout)
			fclose(archivo_salida);
		if(archivo_entrada != NULL)
			fclose(archivo_entrada);
		return 0;
	}

	if(resultado_lectura == ERROR_LECTURA || verificar_parametros() == ERROR_LECTURA){
		fprintf(stderr, "Finalizando ejecución del programa.\n");
		fprintf(stderr, "Consulta las ayudas con ./tp2 -h\n");
		return -1;
	}

	if(!archivo_entrada){
		if(archivo_salida != NULL && archivo_salida != stdout)
			fclose(archivo_salida);
		return 0;
	}

	/*  ====== INICIANDO SIMULACION ====== */
	init();
	interpretar(archivo_entrada, archivo_salida);
	destroy();

	if(archivo_salida != NULL && archivo_salida != stdout)
		fclose(archivo_salida);
	if(archivo_entrada != NULL)
		fclose(archivo_entrada);
	return 0;
}