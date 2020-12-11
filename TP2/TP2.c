#define ERROR_LECTURA -1
#define LECTURA_EXITOSA
#define PIDIO_AYUDA 1
#define PIDIO_VERSION 1

#include "cache.h"
#include <stdio.h>
#include <stdbool.h>


bool es_potencia_de_dos(int numero){
	while(numero%2==0 && )
}

int verificar_parametros(){
	if(tamanio_cache <= 0 || tamanio_bloque <= 0 || cantidad_vias <= 0){
		fprintf(stderr, "Error -- ninguno de los siguientes valores puede ser menor a cero: cachesize (%i) blocksize (%i) ways(%i)\n",tamanio_cache,tamanio_bloque,cantidad_vias);
		return ERROR_LECTURA;
	}
	if(!es_potencia_de_dos(tamanio_cache) || !es_potencia_de_dos(tamanio_bloque) || !es_potencia_de_dos(cantidad_vias)){
		fprintf(stderr, "Error -- todos los siguientes valores deben ser potencias de dos: cachesize(%i) blocksize(%i) cantidad_vias(%i)\n",tamanio_cache,tamanio_bloque,cantidad_vias);
		return ERROR_LECTURA;
	}

	return LECTURA_EXITOSA;
}

unsigned int leer_uint(char* string){
	long resultado = strtol(string, NULL, 10);
	if(resultado > UINT_MAX || errno == ERANGE || resultado <= 0){
		return ERROR_LECTURA;
	}
	return (int) resultado;
}

int leer_entrada(int argc, char const *argv[], FILE* archivo_entrada, FILE* archivo_salida){
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
		fclose(archivo_salida);
		error_lectura = true;
	}

	if(pidio_version) return PIDIO_VERSION;
	if(pidio_ayuda) return PIDIO_AYUDA;
	if(error_lectura) return ERROR_LECTURA;

	return LECTURA_EXITOSA;
}

void interpretar(FILE* archivo){
	// TODO
	while(!feof(archivo)){}
}

int main(int argc, char const *argv[]){
	FILE* archivo_entrada = NULL;
	FILE* archivo_salida = NULL;
	int resultado_lectura;

	resultado_lectura = leer_entrada(argc, argv, archivo_entrada, archivo_salida);
	
	/*  ======    ERROR HANDLING    ======   */
	if(resultado_lectura == ERROR_LECTURA || verificar_parametros() == ERROR_LECTURA){
		fprintf(stderr, "Finalizando ejecución del programa.\n");
		return -1;
	}

	if(resultado_lectura == PIDIO_AYUDA || resultado_lectura == PIDIO_VERSION){
		fclose(archivo_entrada);
		fclose(archivo_salida);
		return 0;
	}


	init();
	interpretar(archivo);
	destroy();
	return 0;
}