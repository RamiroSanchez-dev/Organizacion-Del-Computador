#include "cache.h"

bool prueba0_init(){
	tamanio_cache = 4;
	tamanio_bloque = 256;
	cantidad_vias = 4;
	init();
}

int main(int argc, char const *argv[]){

	bool paso = prueba0_init();
	if(paso){
		printf("paso la primer prueba\n");
	}else{
		printf("No paso la primer prueba\n");
	}
	return 0;
}