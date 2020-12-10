#include "cache.h"
#include "test_suite.h"
#include <stdio.h>

bool prueba0_init(){
	tamanio_cache = 4;
	tamanio_bloque = 256;
	cantidad_vias = 4;
	init();
	destroy();
	return true;
}

bool prueba1_MismoSetDistintoTag(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0xABCD) == find_set(0xBBCD));
	destroy();
	return paso;
}

bool prueba2_DistintoIndexDistintoSet(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0xABCD) != find_set(0xB4CD));
	destroy();
	return paso;
}

int main(int argc, char const *argv[]){

	test_suite_afirmar(prueba0_init(),"Prueba de memory leaks.");
	test_suite_afirmar(prueba1_MismoSetDistintoTag(),"Distintas direcciones de memoria con mismo index tienen el mismo set.");
	test_suite_afirmar(prueba2_DistintoIndexDistintoSet(),"Distintas direcciones de memoria con distinto index tienen distinto set.");
	test_suite_mostrar_reporte();
	return 0;
}