#include "interprete.h"


W ddddd, vvv
void instruccion_escribir(char* instruccion){
	int direccion = 0;
	unsigned char byte = 0;
	fscanf(archivo_entrada, "%i,%hhu\n", &direccion, &byte)
	write_byte(direccion, byte);
	fprintf(archivo_salida, "Escritura. --- %s\n",cache.hit?"Hit":"Miss");
}

void instruccion_leer(FILE* archivo_entrada,FILE* archivo_salida){
    int direccion = 0;
    fscanf(archivo_entrada, "%i\n",&direccion);
	unsigned char byte = read_byte(direccion);
	fprintf(archivo_salida,"Lectura: %hhu --- %s\n", byte,cache.hit?"Hit":"Miss");
}

void interpretar(FILE* archivo_entrada, FILE* archivo_salida){

	bool sigo_leyendo = true;
    char instruccion[5] = "";
    //char direccion[16];
    int i = 0;
    while(feof(archivo_entrada)){
        fscanf(archivo_entrada,"%s", instruccion);
        if( strcmp(instruccion, "init")){
            init();
        }else if(strcmp(instruccion, "MR")){
            int miss_rate = get_miss_rate();
            fwrite(&miss_rate,1, sizeof(int),archivo_salida);
        }else if (strcmp(instruccion, "R")){
            instruccion_leer(archivo_entrada, archivo_salida);
        }else if (strcmp(instruccion, "R")){
            instruccion_escribir(archivo_entrada, archivo_salida);
        }else{
        	fprintf(stderr, "Error de sintaxis. Linea: %i", i);
        }
        i++;
    }
}