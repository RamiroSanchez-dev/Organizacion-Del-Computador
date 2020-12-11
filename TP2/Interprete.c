
#include "Interprete.h"
#include "cache.h"
#include <stdio.h>
#include <string.h>



void instruccion_escribir(char* instruccion){

}

void instruccion_leer(FILE* archivo_entrada,FILE* archivo_salida){
    int direccion = 0;
    fscanf(archivo_entrada, "%i\n",direccion);




}

void interpretar(FILE* archivo_entrada, FILE* archivo_salida){

    /*R W MR init
     *
     * lees hasta el primer espacio ->3 ociones
     * 1. init y MR ejecutas
     * 2 R lees hasta un \n
     * 3. lees la adress y almacenas el dato
     *
     *
     * */
    bool sigo_leyendo = true;
    char instruccion[5] = "";
    //char direccion[16];
    while(feof(archivo_entrada)){
        fscanf(archivo_entrada,"%s", instruccion);
        if( strcmp(instruccion, "init")){
            init();
        }else if(strcmp(instruccion, "MR")){
            int miss_rate = get_miss_rate() ;
            fwrite(&miss_rate,1, sizeof(int),archivo_salida);
        }else if (strcmp(instruccion, "R")){
            instruccion_leer(archivo_entrada, archivo_salida);
        }else if (strcmp(instruccion, "R")){
            instruccion_escribir(archivo_entrada, archivo_salida);
        }

    }




}