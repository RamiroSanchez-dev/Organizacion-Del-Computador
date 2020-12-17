#include "interprete.h"

/* Para desechar la línea en caso de error */
#define MAX_LINEA 100

void instruccion_escribir(FILE* archivo_entrada, FILE* archivo_salida){
	int direccion = 0;
	unsigned char byte = 0;
	fscanf(archivo_entrada, "%i,%hhu\n", &direccion, &byte);
	write_byte(direccion, byte);
	if(error){
		fprintf(stderr, "Ocurrio un error: la direccion ingresada no es valida(%i)\n", direccion);
	}else{
		fprintf(archivo_salida, "Escritura:\tDireccion(%05i)\t\tValor(%hhu)\t%s\n", direccion, byte, cache.hit?"Hit":"Miss");
	}
}

void instruccion_leer(FILE* archivo_entrada, FILE* archivo_salida){
	int direccion = 0;
	fscanf(archivo_entrada, "%i\n",&direccion);
	unsigned char byte = read_byte(direccion);
	if(error){
		fprintf(stderr, "Ocurrio un error: la direccion ingresada no es valida(%i)\n", direccion);
	}else{
		fprintf(archivo_salida,"Lectura:\tDireccion(%05i)\t\tValor(%hhu)\t%s\n", direccion, byte, cache.hit?"Hit":"Miss");
	}
}

void interpretar(FILE* archivo_entrada, FILE* archivo_salida){
	char instruccion[5] = "";
	int i = 1;
	char tacho[MAX_LINEA];
	while(!feof(archivo_entrada)){
		fscanf(archivo_entrada,"%s", instruccion);
		if(strcmp(instruccion, "init") == 0){
			init();
		}else if(strcmp(instruccion, "MR") == 0){
			int miss_rate = get_miss_rate();
			fprintf(archivo_salida, "Miss rate: %i%%\n", miss_rate);
		}else if (strcmp(instruccion, "R") == 0){
			instruccion_leer(archivo_entrada, archivo_salida);
		}else if (strcmp(instruccion, "W") == 0){
			instruccion_escribir(archivo_entrada, archivo_salida);
		}else if(strlen(instruccion) == 0){
		}else{
			fscanf(archivo_entrada, "%[^\n]\n", tacho);
			fprintf(stderr, "Error de sintaxis. Linea: %i\n", i);
		}
		strcpy(instruccion, "");
		i++;
	}
}