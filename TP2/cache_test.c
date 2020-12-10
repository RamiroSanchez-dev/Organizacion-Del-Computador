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

bool prueba3_Direccion0x0000VaAlSetCero(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0x0000) == 0);
	destroy();
	return paso;
}

bool prueba4_Direccion0xFFFFVaAlSet63(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0xFFFF) == 63);
	destroy();
	return paso;
}

bool prueba5_Direccion0xF12DVaAlSet18(){
	tamanio_cache = 1;
	tamanio_bloque = 16;
	cantidad_vias = 1;
	init();
	bool paso = (find_set(0xF12D) == 18);
	destroy();
	return paso;
}

bool prueba6_Direccion0xF342VaAlSet3(){
	tamanio_cache = 8;
	tamanio_bloque = 256;
	cantidad_vias = 8;
	init();
	bool paso = (find_set(0xF342) == 3);
	destroy();
	return paso;
}

void tests_findSet(){
	test_suite_nuevo_grupo("Pruebas find_set()");
	test_suite_informar("Configuracion: cs=4, bs=32, w=2");
	test_suite_afirmar(prueba1_MismoSetDistintoTag(),"Distintas direcciones de memoria con mismo index tienen el mismo set.");
	test_suite_afirmar(prueba2_DistintoIndexDistintoSet(),"Distintas direcciones de memoria con distinto index tienen distinto set.");
	test_suite_afirmar(prueba3_Direccion0x0000VaAlSetCero(),"La direccion 0x0000 mapea al set 0");
	test_suite_afirmar(prueba4_Direccion0xFFFFVaAlSet63(),"La direccion 0xFFFF mapea al set 63");
	test_suite_informar("Configuracion: cs=1, bs=16, w=1");
	test_suite_afirmar(prueba5_Direccion0xF12DVaAlSet18(),"La direccion 0xF12D mapea al set 18");
	test_suite_informar("Configuracion: cs=8, bs=256, w=8");
	test_suite_afirmar(prueba6_Direccion0xF342VaAlSet3(),"La direccion 0xF342 mapea al set 3");
}

int main(int argc, char const *argv[]){
	test_suite_afirmar(prueba0_init(),"Prueba de memory leaks.");
	tests_findSet();
	test_suite_mostrar_reporte();
	return 0;
}