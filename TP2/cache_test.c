#include <stdio.h>
#include "cache.h"
#include "test_suite.h"

bool unit_test0_init(){
	tamanio_cache = 4;
	tamanio_bloque = 256;
	cantidad_vias = 4;
	init();
	destroy();
	return true;
}


/* unit_tests find_set() */

bool unit_test1_MismoSetDistintoTag(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0xABCD) == find_set(0xBBCD));
	destroy();
	return paso;
}

bool unit_test2_DistintoIndexDistintoSet(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0xABCD) != find_set(0xB4CD));
	destroy();
	return paso;
}

bool unit_test3_Direccion0x0000VaAlSetCero(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0x0000) == 0);
	destroy();
	return paso;
}

bool unit_test4_Direccion0xFFFFVaAlSet63(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 2;
	init();
	bool paso = (find_set(0xFFFF) == 63);
	destroy();
	return paso;
}

bool unit_test5_Direccion0xF12DVaAlSet18(){
	tamanio_cache = 1;
	tamanio_bloque = 16;
	cantidad_vias = 1;
	init();
	bool paso = (find_set(0xF12D) == 18);
	destroy();
	return paso;
}

bool unit_test6_Direccion0xF342VaAlSet3(){
	tamanio_cache = 8;
	tamanio_bloque = 256;
	cantidad_vias = 8;
	init();
	bool paso = (find_set(0xF342) == 3);
	destroy();
	return paso;
}


/* unit_tests find_lru() */

bool unit_test7_seEncuentraCorrectamenteElLRUEntre4BloquesValidos(){
	tamanio_cache = 1;
	tamanio_bloque = 256;
	cantidad_vias = 4;
	init();
	cache.vias[0].bloques[0].valido = true;
	cache.vias[0].bloques[0].distancia_lru = 3;

	cache.vias[1].bloques[0].valido = true;
	cache.vias[1].bloques[0].distancia_lru = 4;

	cache.vias[2].bloques[0].valido = true;
	cache.vias[2].bloques[0].distancia_lru = 2;

	cache.vias[3].bloques[0].valido = true;
	cache.vias[3].bloques[0].distancia_lru = 1;

	bool paso = (find_lru(0) == 1);
	destroy();
	return paso;
}

bool unit_test8_siUnBloqueNoEsValidoEntoncesEsElBloqueQueDevuelveFindLRU(){
	tamanio_cache = 1;
	tamanio_bloque = 256;
	cantidad_vias = 4;
	init();
	cache.vias[0].bloques[0].valido = true;
	cache.vias[0].bloques[0].distancia_lru = 3;

	cache.vias[1].bloques[0].valido = true;
	cache.vias[1].bloques[0].distancia_lru = 4;

	cache.vias[2].bloques[0].valido = false;

	cache.vias[3].bloques[0].valido = true;
	cache.vias[3].bloques[0].distancia_lru = 1;

	bool paso = (find_lru(0) == 2);
	destroy();
	return paso;
}

bool unit_test10_LRUEnCacheConSoloUnaViaDevuelveCero(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 1;
	init();
	cache.vias[0].bloques[0].valido = true;
	cache.vias[0].bloques[0].distancia_lru = 3;

	bool paso = (find_lru(0) == 0);
	destroy();
	return paso;
}


/* unit_tests read_block() */

bool unit_test9_leerUnBloqueDeMemoriaPrincipalCargaCorrectamenteElBloqueEnCache(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 1;
	/*
	 * #b_offset = 2;
	 * #b_index = 8;
	 * #b_tag = 6;
	 */
	init();
	memoria_ppal[40] = 'H';
	memoria_ppal[41] = 'O';
	memoria_ppal[42] = 'L';
	memoria_ppal[43] = 'A';
	/* 40 = 0x28 = 101000 */

	read_block(40 >> 2);
	bool paso = true;
	paso = paso && (cache.vias[0].bloques[0xA].datos[0] == 'H');
	paso = paso && (cache.vias[0].bloques[0xA].datos[1] == 'O');
	paso = paso && (cache.vias[0].bloques[0xA].datos[2] == 'L');
	paso = paso && (cache.vias[0].bloques[0xA].datos[3] == 'A');
	paso = paso && (cache.vias[0].bloques[0xA].direccion == 0x28);
	destroy();
	return paso;
}


/* unit_tests write_block() */

bool unit_test11_CuandoSeEscribeUnBloqueEnMemoriaPpalEstaContieneLosDatosDeCache(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 1;
	/*
	 * #b_offset = 2;
	 * #b_index = 8;
	 * #b_tag = 6;
	 */
	init();
	cache.vias[0].bloques[0xA].direccion = 0x28;
	cache.vias[0].bloques[0xA].dirty = true;
	cache.vias[0].bloques[0xA].valido = true;
	cache.vias[0].bloques[0xA].datos[0] = 'H';
	cache.vias[0].bloques[0xA].datos[1] = 'O';
	cache.vias[0].bloques[0xA].datos[2] = 'L';
	cache.vias[0].bloques[0xA].datos[3] = 'A';
	write_block(0, 0xA);

	bool paso = true;

	paso = paso && (memoria_ppal[40] == 'H');
	paso = paso && (memoria_ppal[41] == 'O');
	paso = paso && (memoria_ppal[42] == 'L');
	paso = paso && (memoria_ppal[43] == 'A');

	destroy();
	return paso;
}


/* unit_tests read_byte() */

bool unit_test_12_SeLeeUnByteQueEstaEnCacheYEsteSeLeeCorrectamente(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();
	
	cache.vias[0].bloques[55].valido = false;

	cache.vias[1].bloques[55].valido = true;
	cache.vias[1].bloques[55].dirty = false;
	cache.vias[1].bloques[55].distancia_lru = 1;
	cache.vias[1].bloques[55].direccion = 0xAADC;
	cache.vias[1].bloques[55].datos[0] = 'H';
	cache.vias[1].bloques[55].datos[1] = 'O';
	cache.vias[1].bloques[55].datos[2] = 'L';
	cache.vias[1].bloques[55].datos[3] = 'A';

	cache.vias[2].bloques[55].valido = true;
	cache.vias[2].bloques[55].dirty = false;
	cache.vias[2].bloques[55].distancia_lru = 0;
	cache.vias[2].bloques[55].direccion = 0x12DC;
	cache.vias[2].bloques[55].datos[0] = 'X';
	cache.vias[2].bloques[55].datos[1] = 'Y';
	cache.vias[2].bloques[55].datos[2] = 'Z';
	cache.vias[2].bloques[55].datos[3] = 'W';

	cache.vias[3].bloques[55].valido = false;

	bool paso = (read_byte(0xAADE) == 'L');
	destroy();
	return paso;
}

bool unit_test13_CuandoSeLeeUnByteDeCacheYProduceUnMissYElLRUEstaDirty_SeEscribeEnMemoriaElLRU(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[55].valido = true;
	cache.vias[0].bloques[55].dirty = false;
	cache.vias[0].bloques[55].distancia_lru = 3;
	cache.vias[0].bloques[55].direccion = 0xAADC;
	cache.vias[0].bloques[55].datos[0] = 'A';
	cache.vias[0].bloques[55].datos[1] = 'B';
	cache.vias[0].bloques[55].datos[2] = 'C';
	cache.vias[0].bloques[55].datos[3] = 'D';

	cache.vias[1].bloques[55].valido = true;
	cache.vias[1].bloques[55].dirty = false;
	cache.vias[1].bloques[55].distancia_lru = 1;
	cache.vias[1].bloques[55].direccion = 0xABDC;
	cache.vias[1].bloques[55].datos[0] = 'E';
	cache.vias[1].bloques[55].datos[1] = 'F';
	cache.vias[1].bloques[55].datos[2] = 'G';
	cache.vias[1].bloques[55].datos[3] = 'H';

	cache.vias[2].bloques[55].valido = true;
	cache.vias[2].bloques[55].dirty = false;
	cache.vias[2].bloques[55].distancia_lru = 2;
	cache.vias[2].bloques[55].direccion = 0xACDC;
	cache.vias[2].bloques[55].datos[0] = 'I';
	cache.vias[2].bloques[55].datos[1] = 'J';
	cache.vias[2].bloques[55].datos[2] = 'K';
	cache.vias[2].bloques[55].datos[3] = 'L';

	cache.vias[3].bloques[55].valido = true;
	cache.vias[3].bloques[55].dirty = true;
	cache.vias[3].bloques[55].distancia_lru = 4;
	cache.vias[3].bloques[55].direccion = 0xADDC;
	cache.vias[3].bloques[55].datos[0] = 'M';
	cache.vias[3].bloques[55].datos[1] = 'N';
	cache.vias[3].bloques[55].datos[2] = 'O';
	cache.vias[3].bloques[55].datos[3] = 'P';

	read_byte(0xAEDC + 2);
	bool paso = true;
	paso = paso && (memoria_ppal[0xADDC + 0] == 'M');
	paso = paso && (memoria_ppal[0xADDC + 1] == 'N');
	paso = paso && (memoria_ppal[0xADDC + 2] == 'O');
	paso = paso && (memoria_ppal[0xADDC + 3] == 'P');

	destroy();
	return paso;
}

bool unit_test14_CuandoSeLeeUnByteQueProduceMissElValorCoincideConElQueEstaEnMppal(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[55].valido = false;

	cache.vias[1].bloques[55].valido = true;
	cache.vias[1].bloques[55].dirty = false;
	cache.vias[1].bloques[55].distancia_lru = 1;
	cache.vias[1].bloques[55].direccion = 0xAADC;
	cache.vias[1].bloques[55].datos[0] = 'H';
	cache.vias[1].bloques[55].datos[1] = 'O';
	cache.vias[1].bloques[55].datos[2] = 'L';
	cache.vias[1].bloques[55].datos[3] = 'A';

	cache.vias[2].bloques[55].valido = true;
	cache.vias[2].bloques[55].dirty = false;
	cache.vias[2].bloques[55].distancia_lru = 0;
	cache.vias[2].bloques[55].direccion = 0x12DC;
	cache.vias[2].bloques[55].datos[0] = 'X';
	cache.vias[2].bloques[55].datos[1] = 'Y';
	cache.vias[2].bloques[55].datos[2] = 'Z';
	cache.vias[2].bloques[55].datos[3] = 'W';

	cache.vias[3].bloques[55].valido = false;

	memoria_ppal[0x00DC + 0] = 'C';
	memoria_ppal[0x00DC + 1] = 'A';
	memoria_ppal[0x00DC + 2] = 'F';
	memoria_ppal[0x00DC + 3] = 'E';

	bool paso = (read_byte(0x00DE) == memoria_ppal[0x00DE]);
	destroy();
	return paso;
}

bool unit_test15_CuandoSeLeeUnByteQueProduceMissElBloqueEsCargadoEnCacheEnElLRU(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[55].valido = true;
	cache.vias[0].bloques[55].dirty = false;
	cache.vias[0].bloques[55].distancia_lru = 3;
	cache.vias[0].bloques[55].direccion = 0xAADC;
	cache.vias[0].bloques[55].datos[0] = 'A';
	cache.vias[0].bloques[55].datos[1] = 'B';
	cache.vias[0].bloques[55].datos[2] = 'C';
	cache.vias[0].bloques[55].datos[3] = 'D';

	cache.vias[1].bloques[55].valido = true;
	cache.vias[1].bloques[55].dirty = true;
	cache.vias[1].bloques[55].distancia_lru = 4;
	cache.vias[1].bloques[55].direccion = 0xABDC;
	cache.vias[1].bloques[55].datos[0] = 'E';
	cache.vias[1].bloques[55].datos[1] = 'F';
	cache.vias[1].bloques[55].datos[2] = 'G';
	cache.vias[1].bloques[55].datos[3] = 'H';

	cache.vias[2].bloques[55].valido = true;
	cache.vias[2].bloques[55].dirty = false;
	cache.vias[2].bloques[55].distancia_lru = 2;
	cache.vias[2].bloques[55].direccion = 0xACDC;
	cache.vias[2].bloques[55].datos[0] = 'I';
	cache.vias[2].bloques[55].datos[1] = 'J';
	cache.vias[2].bloques[55].datos[2] = 'K';
	cache.vias[2].bloques[55].datos[3] = 'L';

	cache.vias[3].bloques[55].valido = true;
	cache.vias[3].bloques[55].dirty = false;
	cache.vias[3].bloques[55].distancia_lru = 1;
	cache.vias[3].bloques[55].direccion = 0xADDC;
	cache.vias[3].bloques[55].datos[0] = 'M';
	cache.vias[3].bloques[55].datos[1] = 'N';
	cache.vias[3].bloques[55].datos[2] = 'O';
	cache.vias[3].bloques[55].datos[3] = 'P';

	memoria_ppal[0x00DC + 0] = 'C';
	memoria_ppal[0x00DC + 1] = 'A';
	memoria_ppal[0x00DC + 2] = 'F';
	memoria_ppal[0x00DC + 3] = 'E';

	read_byte(0x00DC + 3);

	bool paso = true;
	paso = paso && (cache.vias[1].bloques[55].datos[0] == 'C');
	paso = paso && (cache.vias[1].bloques[55].datos[1] == 'A');
	paso = paso && (cache.vias[1].bloques[55].datos[2] == 'F');
	paso = paso && (cache.vias[1].bloques[55].datos[3] == 'E');

	destroy();
	return paso;
}


/* unit_tests write_byte() */

bool unit_test16_CuandoSeEscribeUnByteConHitSeEscribeCorrectamenteElValorEnCache(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[14].valido = false;
	
	cache.vias[1].bloques[14].valido = false;

	cache.vias[2].bloques[14].valido = true;
	cache.vias[2].bloques[14].dirty = false;
	cache.vias[2].bloques[14].distancia_lru = 1;
	cache.vias[2].bloques[14].direccion = 0x2138;
	cache.vias[2].bloques[14].datos[0] = 'A';
	cache.vias[2].bloques[14].datos[1] = 'B';
	cache.vias[2].bloques[14].datos[2] = 'C';
	cache.vias[2].bloques[14].datos[3] = 'D';

	cache.vias[3].bloques[14].valido = false;

	write_byte(0x2138 + 1, 'F');

	bool paso = true;
	paso = paso && cache.vias[2].bloques[14].datos[0] == 'A';
	paso = paso && cache.vias[2].bloques[14].datos[1] == 'F';
	paso = paso && cache.vias[2].bloques[14].datos[2] == 'C';
	paso = paso && cache.vias[2].bloques[14].datos[3] == 'D';
	destroy();
	return paso;
}

bool unit_test17_CuandoSeEscrbieUnByteConHitNoSeSobreescribeEnMemoriaPrincipal(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[14].valido = false;
	
	cache.vias[1].bloques[14].valido = false;

	cache.vias[2].bloques[14].valido = true;
	cache.vias[2].bloques[14].dirty = false;
	cache.vias[2].bloques[14].distancia_lru = 1;
	cache.vias[2].bloques[14].direccion = 0x2138;
	cache.vias[2].bloques[14].datos[0] = 'A';
	cache.vias[2].bloques[14].datos[1] = 'B';
	cache.vias[2].bloques[14].datos[2] = 'C';
	cache.vias[2].bloques[14].datos[3] = 'D';

	cache.vias[3].bloques[14].valido = false;

	char m0 = memoria_ppal[0x2138 + 0];
	char m1 = memoria_ppal[0x2138 + 1];
	char m2 = memoria_ppal[0x2138 + 2];
	char m3 = memoria_ppal[0x2138 + 3];

	write_byte(0x2138 + 1, 'F');

	bool paso = true;
	paso = paso && memoria_ppal[0x2138 + 0] == m0;
	paso = paso && memoria_ppal[0x2138 + 1] == m1;
	paso = paso && memoria_ppal[0x2138 + 2] == m2;
	paso = paso && memoria_ppal[0x2138 + 3] == m3;
	destroy();
	return paso;
}

bool unit_test18_CuandoSeEscribeUnByteConMissSeEscribeCorrectamenteElValorEnCache(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[14].valido = true;
	cache.vias[0].bloques[14].direccion = 0x1138;
	cache.vias[0].bloques[14].distancia_lru = 1;
	cache.vias[0].bloques[14].dirty = false;

	cache.vias[1].bloques[14].valido = true;
	cache.vias[1].bloques[14].direccion = 0x1238;
	cache.vias[1].bloques[14].distancia_lru = 3;
	cache.vias[1].bloques[14].dirty = false;

	cache.vias[2].bloques[14].valido = true;
	cache.vias[2].bloques[14].direccion = 0x1338;
	cache.vias[2].bloques[14].distancia_lru = 4;
	cache.vias[2].bloques[14].dirty = false;

	cache.vias[3].bloques[14].valido = true;
	cache.vias[3].bloques[14].direccion = 0x1438;
	cache.vias[3].bloques[14].distancia_lru = 2;
	cache.vias[3].bloques[14].dirty = false;


	memoria_ppal[0x2138 + 0] = 'A';
	memoria_ppal[0x2138 + 1] = 'B';
	memoria_ppal[0x2138 + 2] = 'C';
	memoria_ppal[0x2138 + 3] = 'D';

	write_byte(0x2138 + 1, 'F');

	bool paso = true;
	paso = paso && cache.vias[2].bloques[14].datos[0] == 'A';
	paso = paso && cache.vias[2].bloques[14].datos[1] == 'F';
	paso = paso && cache.vias[2].bloques[14].datos[2] == 'C';
	paso = paso && cache.vias[2].bloques[14].datos[3] == 'D';
	destroy();
	return paso;
}

bool unit_test19_CuandoSeEscribeUnByteConMissNoSeSobreescribeEnMemoriaPrincipal(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[14].valido = true;
	cache.vias[0].bloques[14].direccion = 0x1138;
	cache.vias[0].bloques[14].distancia_lru = 1;

	cache.vias[1].bloques[14].valido = true;
	cache.vias[1].bloques[14].direccion = 0x1238;
	cache.vias[1].bloques[14].distancia_lru = 3;
	cache.vias[1].bloques[14].dirty = false;

	cache.vias[2].bloques[14].valido = true;
	cache.vias[2].bloques[14].direccion = 0x1338;
	cache.vias[2].bloques[14].distancia_lru = 4;
	cache.vias[2].bloques[14].dirty = false;

	cache.vias[3].bloques[14].valido = true;
	cache.vias[3].bloques[14].direccion = 0x1438;
	cache.vias[3].bloques[14].distancia_lru = 2;
	cache.vias[3].bloques[14].dirty = false;

	char m0 = memoria_ppal[0x2138 + 0];
	char m1 = memoria_ppal[0x2138 + 1];
	char m2 = memoria_ppal[0x2138 + 2];
	char m3 = memoria_ppal[0x2138 + 3];

	write_byte(0x2138 + 1, 'F');

	bool paso = true;
	paso = paso && memoria_ppal[0x2138 + 0] == m0;
	paso = paso && memoria_ppal[0x2138 + 1] == m1;
	paso = paso && memoria_ppal[0x2138 + 2] == m2;
	paso = paso && memoria_ppal[0x2138 + 3] == m3;

	destroy();
	return paso;
}

bool unit_test20_CuandoSeEscribeUnByteConMissYElLRUestaDirty_SeVeReflejadoEnLaMemoriaPrincipal(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */
	init();

	cache.vias[0].bloques[55].valido = true;
	cache.vias[0].bloques[55].dirty = false;
	cache.vias[0].bloques[55].distancia_lru = 3;
	cache.vias[0].bloques[55].direccion = 0xAADC;
	cache.vias[0].bloques[55].datos[0] = 'A';
	cache.vias[0].bloques[55].datos[1] = 'B';
	cache.vias[0].bloques[55].datos[2] = 'C';
	cache.vias[0].bloques[55].datos[3] = 'D';

	cache.vias[1].bloques[55].valido = true;
	cache.vias[1].bloques[55].dirty = true;
	cache.vias[1].bloques[55].distancia_lru = 4;
	cache.vias[1].bloques[55].direccion = 0xABDC;
	cache.vias[1].bloques[55].datos[0] = 'E';
	cache.vias[1].bloques[55].datos[1] = 'F';
	cache.vias[1].bloques[55].datos[2] = 'G';
	cache.vias[1].bloques[55].datos[3] = 'H';

	cache.vias[2].bloques[55].valido = true;
	cache.vias[2].bloques[55].dirty = false;
	cache.vias[2].bloques[55].distancia_lru = 2;
	cache.vias[2].bloques[55].direccion = 0xACDC;
	cache.vias[2].bloques[55].datos[0] = 'I';
	cache.vias[2].bloques[55].datos[1] = 'J';
	cache.vias[2].bloques[55].datos[2] = 'K';
	cache.vias[2].bloques[55].datos[3] = 'L';

	cache.vias[3].bloques[55].valido = true;
	cache.vias[3].bloques[55].dirty = false;
	cache.vias[3].bloques[55].distancia_lru = 1;
	cache.vias[3].bloques[55].direccion = 0xADDC;
	cache.vias[3].bloques[55].datos[0] = 'M';
	cache.vias[3].bloques[55].datos[1] = 'N';
	cache.vias[3].bloques[55].datos[2] = 'O';
	cache.vias[3].bloques[55].datos[3] = 'P';

	memoria_ppal[0x00DC + 0] = 'C';
	memoria_ppal[0x00DC + 1] = 'A';
	memoria_ppal[0x00DC + 2] = 'F';
	memoria_ppal[0x00DC + 3] = 'E';


	memoria_ppal[0xABDC + 0] = 'H';
	memoria_ppal[0xABDC + 1] = 'O';
	memoria_ppal[0xABDC + 2] = 'L';
	memoria_ppal[0xABDC + 3] = 'A';

	write_byte(0x00DC + 3, 'F');

	bool paso = true;
	paso = paso && (memoria_ppal[0xABDC + 0] == 'E');
	paso = paso && (memoria_ppal[0xABDC + 1] == 'F');
	paso = paso && (memoria_ppal[0xABDC + 2] == 'G');
	paso = paso && (memoria_ppal[0xABDC + 3] == 'H');

	destroy();
	return paso;
}

bool unit_test21_CuandoSeEscribeUnByteConHitElBloquePasaAEstarDirty(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */

	init();

	cache.vias[0].bloques[14].valido = true;
	cache.vias[0].bloques[14].direccion = 0x1138;
	cache.vias[0].bloques[14].distancia_lru = 1;
	cache.vias[0].bloques[14].dirty = false;

	cache.vias[1].bloques[14].valido = true;
	cache.vias[1].bloques[14].direccion = 0x1238;
	cache.vias[1].bloques[14].distancia_lru = 3;
	cache.vias[1].bloques[14].dirty = false;

	cache.vias[2].bloques[14].valido = true;
	cache.vias[2].bloques[14].direccion = 0x1338;
	cache.vias[2].bloques[14].distancia_lru = 4;
	cache.vias[2].bloques[14].dirty = false;

	cache.vias[3].bloques[14].valido = true;
	cache.vias[3].bloques[14].direccion = 0x1438;
	cache.vias[3].bloques[14].distancia_lru = 2;
	cache.vias[3].bloques[14].dirty = false;


	write_byte(0x1438 + 2, 'F');
	bool paso = cache.vias[3].bloques[14].dirty;

	destroy();
	return paso;
}

bool unit_test22_CuandoSeEscribeUnByteConMissElBloquePasaAEstarDirty(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	/*
	 * #b_offset = 2;
	 * #b_index = 6;
	 * #b_tag = 8;
	 */

	init();

	cache.vias[0].bloques[14].valido = true;
	cache.vias[0].bloques[14].direccion = 0x1138;
	cache.vias[0].bloques[14].distancia_lru = 1;
	cache.vias[0].bloques[14].dirty = false;

	cache.vias[1].bloques[14].valido = true;
	cache.vias[1].bloques[14].direccion = 0x1238;
	cache.vias[1].bloques[14].distancia_lru = 3;
	cache.vias[1].bloques[14].dirty = false;

	cache.vias[2].bloques[14].valido = true;
	cache.vias[2].bloques[14].direccion = 0x1338;
	cache.vias[2].bloques[14].distancia_lru = 4;
	cache.vias[2].bloques[14].dirty = false;

	cache.vias[3].bloques[14].valido = true;
	cache.vias[3].bloques[14].direccion = 0x1438;
	cache.vias[3].bloques[14].distancia_lru = 2;
	cache.vias[3].bloques[14].dirty = false;


	write_byte(0x1538 + 2, 'F');
	bool paso = cache.vias[2].bloques[14].dirty;

	destroy();
	return paso;
}


/* Test integradores */

bool unit_test23_CuandoSeEjecutaUnaSecuenciaDeLecturasADireccionesDelMismoConjunto_TodosLosBloquesDelConjuntoSonValidos(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	init();

	memoria_ppal[0x0038] = '1';
	memoria_ppal[0x1038] = '2';
	memoria_ppal[0x2038] = '3';
	memoria_ppal[0x3038] = '4';

	read_byte(0x0038);
	read_byte(0x1038);
	read_byte(0x2038);
	read_byte(0x3038);

	bool paso = true;

	paso = paso && (cache.vias[0].bloques[find_set(0x0038)].valido);
	paso = paso && (cache.vias[1].bloques[find_set(0x1038)].valido);
	paso = paso && (cache.vias[2].bloques[find_set(0x2038)].valido);
	paso = paso && (cache.vias[3].bloques[find_set(0x3038)].valido);
	
	destroy();
	return paso;
}

bool integrador1_CuandoSeEjecutaLaSecuencia1BrindadaPorLaCatedraElResultadoEsElEsperadoConfig1(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	init();

	/* W 0, 255 */
	write_byte(0, 255);
	/* W 16384, 254 */
	write_byte(16384, 254);
	/* W 32768, 248 */
	write_byte(32768, 248);
	/* W 49152, 096 */
	write_byte(49152, 96);
	/* R 0 */
	unsigned char r1 = read_byte(0);
	/* R 16384 */
	unsigned char r2 = read_byte(16384);
	/* R 32768 */
	unsigned char r3 = read_byte(32768);
	/* R 49152 */
	unsigned char r4 = read_byte(49152);

	int miss_rate = get_miss_rate();

	bool paso = true;
	if(r1 != 255){
		test_suite_informar_error("El valor en 0x0 no es el esperado.");
		paso = false;
	}
	if(r2 != 254){
		test_suite_informar_error("El valor en 0x4000 no es el esperado.");
		paso = false;
	}
	if(r3 != 248){
		test_suite_informar_error("El valor en 0x8000 no es el esperado.");
		paso = false;
	}
	if(r4 != 96){
		test_suite_informar_error("El valor en 0xC000 no es el esperado.");
		paso = false;
	}
	if(miss_rate != 50){
		test_suite_informar_error("El valor de miss rate obtenido no es el esperado.");
		paso = false;
	}
	destroy();
	return paso;	
}

bool integrador2_CuandoSeEjecutaLaSecuencia2BrindadaPorLaCatedraElResultadoEsElEsperadoConfig1(){
	tamanio_cache = 1;
	tamanio_bloque = 4;
	cantidad_vias = 4;
	init();

	/* W 0, 123 */
	write_byte(0, 123);
	/* W 1024, 234 */
	write_byte(1024, 234);
	/* W 2048, 33 */
	write_byte(2048, 33);
	/* W 3072, 44 */
	write_byte(3072, 44);
	/* W 4096, 55 */
	write_byte(4096, 55);
	/* R 0 */
	unsigned char r1 = read_byte(0);
	/* R 1024 */
	unsigned char r2 = read_byte(1024);
	/* R 2048 */
	unsigned char r3 = read_byte(2048);
	/* R 3072 */
	unsigned char r4 = read_byte(3072);
	/* R 4096 */
	unsigned char r5 = read_byte(4096);

	int miss_rate = get_miss_rate();

	bool paso = true;
	if(r1 != 123){
		test_suite_informar_error("El valor en 0x0000 no es el esperado.");
		paso = false;
	}
	if(r2 != 234){
		test_suite_informar_error("El valor en 0x0400 no es el esperado.");
		paso = false;
	}
	if(r3 != 33){
		test_suite_informar_error("El valor en 0x0800 no es el esperado.");
		paso = false;
	}
	if(r4 != 44){
		test_suite_informar_error("El valor en 0x0C00 no es el esperado.");
		paso = false;
	}
	if(r5 != 55){
		test_suite_informar_error("El valor en 0x1000 no es el esperado.");
		paso = false;
	}

	if(miss_rate != 100){
		test_suite_informar_error("El valor de miss rate obtenido no es el esperado.");
		paso = false;
	}
	destroy();
	return paso;	
}

bool integrador3_CuandoSeEjecutaLaSecuencia1BrindadaPorLaCatedraElResultadoEsElEsperadoConfig2(){
	tamanio_cache = 16;
	tamanio_bloque = 128;
	cantidad_vias = 1;
	init();

	/* W 0, 255 */
	write_byte(0, 255);
	/* W 16384, 254 */
	write_byte(16384, 254);
	/* W 32768, 248 */
	write_byte(32768, 248);
	/* W 49152, 096 */
	write_byte(49152, 96);
	/* R 0 */
	unsigned char r1 = read_byte(0);
	/* R 16384 */
	unsigned char r2 = read_byte(16384);
	/* R 32768 */
	unsigned char r3 = read_byte(32768);
	/* R 49152 */
	unsigned char r4 = read_byte(49152);

	int miss_rate = get_miss_rate();

	bool paso = true;
	if(r1 != 255){
		test_suite_informar_error("El valor en 0x0000 no es el esperado.");
		paso = false;
	}
	if(r2 != 254){
		test_suite_informar_error("El valor en 0x4000 no es el esperado.");
		paso = false;
	}
	if(r3 != 248){
		test_suite_informar_error("El valor en 0x8000 no es el esperado.");
		paso = false;
	}
	if(r4 != 96){
		test_suite_informar_error("El valor en 0xC000 no es el esperado.");
		paso = false;
	}
	if(miss_rate != 100){
		test_suite_informar_error("El valor de miss rate obtenido no es el esperado.");
		paso = false;
	}
	destroy();
	return paso;	
}

bool integrador4_CuandoSeEjecutaLaSecuencia2BrindadaPorLaCatedraElResultadoEsElEsperadoConfig2(){
	tamanio_cache = 16;
	tamanio_bloque = 128;
	cantidad_vias = 1;
	init();

	/* W 0, 123 */
	write_byte(0, 123);
	/* W 1024, 234 */
	write_byte(1024, 234);
	/* W 2048, 33 */
	write_byte(2048, 33);
	/* W 3072, 44 */
	write_byte(3072, 44);
	/* W 4096, 55 */
	write_byte(4096, 55);
	/* R 0 */
	unsigned char r1 = read_byte(0);
	/* R 1024 */
	unsigned char r2 = read_byte(1024);
	/* R 2048 */
	unsigned char r3 = read_byte(2048);
	/* R 3072 */
	unsigned char r4 = read_byte(3072);
	/* R 4096 */
	unsigned char r5 = read_byte(4096);

	int miss_rate = get_miss_rate();

	bool paso = true;
	if(r1 != 123){
		test_suite_informar_error("El valor en 0x0000 no es el esperado.");
		paso = false;
	}
	if(r2 != 234){
		test_suite_informar_error("El valor en 0x0400 no es el esperado.");
		paso = false;
	}
	if(r3 != 33){
		test_suite_informar_error("El valor en 0x0800 no es el esperado.");
		paso = false;
	}
	if(r4 != 44){
		test_suite_informar_error("El valor en 0x0C00 no es el esperado.");
		paso = false;
	}
	if(r5 != 55){
		test_suite_informar_error("El valor en 0x1000 no es el esperado.");
		paso = false;
	}

	if(miss_rate != 50){
		test_suite_informar_error("El valor de miss rate obtenido no es el esperado.");
		paso = false;
	}
	destroy();
	return paso;
}

bool integrador5_CuandoSeEjecutaLaSecuencia1BrindadaPorLaCatedraElResultadoEsElEsperadoConfig3(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 4;
	init();

	/* W 0, 255 */
	write_byte(0, 255);
	/* W 16384, 254 */
	write_byte(16384, 254);
	/* W 32768, 248 */
	write_byte(32768, 248);
	/* W 49152, 096 */
	write_byte(49152, 96);
	/* R 0 */
	unsigned char r1 = read_byte(0);
	/* R 16384 */
	unsigned char r2 = read_byte(16384);
	/* R 32768 */
	unsigned char r3 = read_byte(32768);
	/* R 49152 */
	unsigned char r4 = read_byte(49152);

	int miss_rate = get_miss_rate();

	bool paso = true;
	if(r1 != 255){
		test_suite_informar_error("El valor en 0x0 no es el esperado.");
		paso = false;
	}
	if(r2 != 254){
		test_suite_informar_error("El valor en 0x4000 no es el esperado.");
		paso = false;
	}
	if(r3 != 248){
		test_suite_informar_error("El valor en 0x8000 no es el esperado.");
		paso = false;
	}
	if(r4 != 96){
		test_suite_informar_error("El valor en 0xC000 no es el esperado.");
		paso = false;
	}
	if(miss_rate != 50){
		test_suite_informar_error("El valor de miss rate obtenido no es el esperado.");
		paso = false;
	}
	destroy();
	return paso;
}

bool integrador6_CuandoSeEjecutaLaSecuencia2BrindadaPorLaCatedraElResultadoEsElEsperadoConfig3(){
	tamanio_cache = 4;
	tamanio_bloque = 32;
	cantidad_vias = 4;
	init();

	/* W 0, 123 */
	write_byte(0, 123);
	/* W 1024, 234 */
	write_byte(1024, 234);
	/* W 2048, 33 */
	write_byte(2048, 33);
	/* W 3072, 44 */
	write_byte(3072, 44);
	/* W 4096, 55 */
	write_byte(4096, 55);
	/* R 0 */
	unsigned char r1 = read_byte(0);
	/* R 1024 */
	unsigned char r2 = read_byte(1024);
	/* R 2048 */
	unsigned char r3 = read_byte(2048);
	/* R 3072 */
	unsigned char r4 = read_byte(3072);
	/* R 4096 */
	unsigned char r5 = read_byte(4096);

	int miss_rate = get_miss_rate();

	bool paso = true;
	if(r1 != 123){
		test_suite_informar_error("El valor en 0x0000 no es el esperado.");
		paso = false;
	}
	if(r2 != 234){
		test_suite_informar_error("El valor en 0x0400 no es el esperado.");
		paso = false;
	}
	if(r3 != 33){
		test_suite_informar_error("El valor en 0x0800 no es el esperado.");
		paso = false;
	}
	if(r4 != 44){
		test_suite_informar_error("El valor en 0x0C00 no es el esperado.");
		paso = false;
	}
	if(r5 != 55){
		test_suite_informar_error("El valor en 0x1000 no es el esperado.");
		paso = false;
	}

	if(miss_rate != 100){
		test_suite_informar_error("El valor de miss rate obtenido no es el esperado.");
		paso = false;
	}
	destroy();
	return paso;
}

void tests_init_destroy(){
	test_suite_nuevo_grupo("Pruebas de init() y destroy()");
	test_suite_afirmar(unit_test0_init(), "unit_test de memory leaks.");
}

void tests_findSet(){
	test_suite_nuevo_grupo("Pruebas de find_set()");
	/* unit_tests de caja negra */
	test_suite_informar("Configuracion: cs=4KiB, bs=32B, w=2");
	test_suite_afirmar(unit_test1_MismoSetDistintoTag(),"Distintas direcciones de memoria con mismo index tienen el mismo set.");
	test_suite_afirmar(unit_test2_DistintoIndexDistintoSet(),"Distintas direcciones de memoria con distinto index tienen distinto set.");
	test_suite_afirmar(unit_test3_Direccion0x0000VaAlSetCero(),"La direccion 0x0000 mapea al set 0.");
	test_suite_afirmar(unit_test4_Direccion0xFFFFVaAlSet63(),"La direccion 0xFFFF mapea al set 63.");
	test_suite_informar("Configuracion: cs=1KiB, bs=16B, w=1");
	test_suite_afirmar(unit_test5_Direccion0xF12DVaAlSet18(),"La direccion 0xF12D mapea al set 18.");
	test_suite_informar("Configuracion: cs=8KiB, bs=256B, w=8");
	test_suite_afirmar(unit_test6_Direccion0xF342VaAlSet3(),"La direccion 0xF342 mapea al set 3.");
}

void tests_findLRU(){
	test_suite_nuevo_grupo("Pruebas de find_LRU()");
	/* unit_tests de caja blanca */
	test_suite_informar("Configuracion: cs=1KiB, bs=256B, w=4");
	test_suite_afirmar(unit_test7_seEncuentraCorrectamenteElLRUEntre4BloquesValidos(), "Se encuentra correctamente el bloque LRU.");
	test_suite_afirmar(unit_test8_siUnBloqueNoEsValidoEntoncesEsElBloqueQueDevuelveFindLRU(), "Si un bloque es invalido, este es el bloque LRU.");
	/* unit_tests de caja negra */
	test_suite_afirmar(unit_test10_LRUEnCacheConSoloUnaViaDevuelveCero(), "Si sólo hay una vía, el lru es 0.");
}

void tests_readBlock(){
	test_suite_nuevo_grupo("Pruebas de read_block()");
	/* unit_tests de caja blanca */
	test_suite_informar("Configuracion: cs=1KiB, bs=4B, w=1");
	test_suite_afirmar(unit_test9_leerUnBloqueDeMemoriaPrincipalCargaCorrectamenteElBloqueEnCache(), "Se lee un bloque de memoria ram, este coincide con lo esperado.");
	test_suite_afirmar(unit_test23_CuandoSeEjecutaUnaSecuenciaDeLecturasADireccionesDelMismoConjunto_TodosLosBloquesDelConjuntoSonValidos(), "Cuando se leen 4 direcciones que pertenecen al mismo conjunto, todos los bloques pasan a ser válidos.");
}

void tests_write_block(){
	test_suite_nuevo_grupo("Pruebas de write_block()");
	/* unit_tests de caja blanca */
	test_suite_informar("Configuracion: cs=1KiB, bs=4B, w=1");
	test_suite_afirmar(unit_test11_CuandoSeEscribeUnBloqueEnMemoriaPpalEstaContieneLosDatosDeCache(), "Se escribe un bloque de cache en memoria ppal y esta es sobreescrita.");
}

void tests_read_byte(){
	test_suite_nuevo_grupo("Pruebas de read_byte()");
	/* unit_tests de caja blanca */
	test_suite_informar("Configuracion: cs=1KiB, bs=4B, w=4");
	test_suite_afirmar(unit_test_12_SeLeeUnByteQueEstaEnCacheYEsteSeLeeCorrectamente(), "Se lee correctamente un byte de cache que tiene hit.");
	test_suite_afirmar(unit_test13_CuandoSeLeeUnByteDeCacheYProduceUnMissYElLRUEstaDirty_SeEscribeEnMemoriaElLRU(), "Cuando leemos de cache un byte que produce miss: Se escribe en ppal un bloque LRU dirty.");
	test_suite_afirmar(unit_test14_CuandoSeLeeUnByteQueProduceMissElValorCoincideConElQueEstaEnMppal(), "Cuando leemos un byte que produce miss, el valor coincide con el de memoria principal.");
	test_suite_afirmar(unit_test15_CuandoSeLeeUnByteQueProduceMissElBloqueEsCargadoEnCacheEnElLRU(), "Cuando leemos un byte que produce miss, el bloque es cargado en la posicion del LRU (Que esta dirty).");
}

void tests_write_byte(){
	test_suite_nuevo_grupo("Pruebas de write_byte()");
	/* unit_tests de caja blanca */
	test_suite_informar("Configuracion: cs=1KiB, bs=4B, w=4");
	test_suite_afirmar(unit_test16_CuandoSeEscribeUnByteConHitSeEscribeCorrectamenteElValorEnCache(), "Cuando se escribe un byte en una dirección con hit, esta se escribe correctamente en caché.");
	test_suite_afirmar(unit_test17_CuandoSeEscrbieUnByteConHitNoSeSobreescribeEnMemoriaPrincipal(), "Cuando se escribe un byte en una dirección con hit, no se sobreescribe la memoria principal.");
	test_suite_afirmar(unit_test18_CuandoSeEscribeUnByteConMissSeEscribeCorrectamenteElValorEnCache(), "Cuando se escribe un byte en una dirección con miss, el bloque se carga en cache y el valor es escrito.");
	test_suite_afirmar(unit_test19_CuandoSeEscribeUnByteConMissNoSeSobreescribeEnMemoriaPrincipal(), "Cuando se escribe un byte en una dirección con miss, no se sobreescribe la memoria principal.");
	test_suite_afirmar(unit_test20_CuandoSeEscribeUnByteConMissYElLRUestaDirty_SeVeReflejadoEnLaMemoriaPrincipal(), "Cuando se escribe un byte en una dirección con miss, y el lru está dirty, se actualiza la memoria principal.");
	test_suite_afirmar(unit_test21_CuandoSeEscribeUnByteConHitElBloquePasaAEstarDirty(), "Cuando se escribe un byte en una dirección con hit, el bloque pasa a estar dirty.");
	test_suite_afirmar(unit_test22_CuandoSeEscribeUnByteConMissElBloquePasaAEstarDirty(), "Cuando se escribe un byte en una dirección con miss, el bloque se asigna como dirty.");
}

void tests_integradores(){
	test_suite_nuevo_grupo("Pruebas integradoras.");
	/* integradores de los archivos */
	test_suite_informar("Configuracion: cs=1KiB, bs=4B, w=4");
	test_suite_afirmar(integrador1_CuandoSeEjecutaLaSecuencia1BrindadaPorLaCatedraElResultadoEsElEsperadoConfig1(), "Archivo prueba1.mem");
	test_suite_afirmar(integrador2_CuandoSeEjecutaLaSecuencia2BrindadaPorLaCatedraElResultadoEsElEsperadoConfig1(), "Archivo prueba2.mem");
	test_suite_informar("Configuracion: cs=16KiB, bs=128B, w=1");
	test_suite_afirmar(integrador3_CuandoSeEjecutaLaSecuencia1BrindadaPorLaCatedraElResultadoEsElEsperadoConfig2(), "Archivo prueba1.mem");
	test_suite_afirmar(integrador4_CuandoSeEjecutaLaSecuencia2BrindadaPorLaCatedraElResultadoEsElEsperadoConfig2(), "Archivo prueba2.mem");
	test_suite_informar("Configuracion: cs=4KiB, bs=32B, w=4");
	test_suite_afirmar(integrador5_CuandoSeEjecutaLaSecuencia1BrindadaPorLaCatedraElResultadoEsElEsperadoConfig3(), "Archivo prueba1.mem");
	test_suite_afirmar(integrador6_CuandoSeEjecutaLaSecuencia2BrindadaPorLaCatedraElResultadoEsElEsperadoConfig3(), "Archivo prueba2.mem");
}

int main(int argc, char const *argv[]){
	tests_init_destroy();
	tests_findSet();
	tests_findLRU();
	tests_readBlock();
	tests_write_block();
	tests_read_byte();
	tests_write_byte();
	tests_integradores();
	test_suite_mostrar_reporte();
	return 0;
}