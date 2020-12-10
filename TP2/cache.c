#include "cache.h"

#include <stdlib.h>
#include <math.h>


bloque_t init_bloque(){
	bloque_t bloque;
	bloque.valido = false;
	bloque.dirty = false;
	bloque.datos = malloc(tamanio_bloque*sizeof(char));
	return bloque;
}

via_t via_init(int cantidad_bloques_en_via){
	via_t via;

	via.bloques = malloc(cantidad_bloques_en_via*sizeof(bloque_t));
	for(int i = 0; i < cantidad_bloques_en_via; i++){
		via.bloques[i] = init_bloque();
	}
	via.cantidad_bloques_en_via = cantidad_bloques_en_via;
	return via;
}


/*
 * La función init() debe inicializar los bloques de la caché
 * como inválidos, la memoria simulada en 0 y la tasa de misses a 0.
 */
void init(){
	/* TODO: bits Valid */
	cache.tamanio_cache = tamanio_cache * KiB;
	int tamanio_via = cache.tamanio_cache/cantidad_vias;
	int cantidad_bloques_en_via = tamanio_via/tamanio_bloque;

	cache.vias = malloc(cantidad_vias*sizeof(via_t));
	for(int i = 0; i < cantidad_vias; i++){
		cache.vias[i] = via_init(cantidad_bloques_en_via);
	}

	memset(memoria_ppal, 0, TAMANIO_MEMORIA_PPAL);
	cache.miss_rate = 0;
	cache.bitsIndex = (uint8_t)ceil(log2(cantidad_bloques_en_via));
	cache.bitsOffset = (uint8_t)ceil(log2(tamanio_bloque));
	cache.bitsTag = BITS_DIRECCION_MEMORIA - cache.bitsIndex - cache.bitsOffset;
}


void bloque_destroy(bloque_t bloque){
	free(bloque.datos);
}

void via_destroy(via_t via){
	for(int i = 0; i < via.cantidad_bloques_en_via; i++){
		bloque_destroy(via.bloques[i]);
	}
	free(via.bloques);
}

/*
 * Destruye las estructuras de datos reservadas.
 */
void destroy(){
	for(int i = 0; i < cantidad_vias; i++){
		via_destroy(cache.vias[i]);
	}
	free(cache.vias);
}

/* 
 * La función find set(int address) debe devolver
 * el conjunto de caché al que mapea la dirección address.
 */
unsigned int find_set(int address){
	unsigned short address_16 = address;
	address_16 = address_16 << cache.bitsTag;
	address_16 = address_16 >> (cache.bitsOffset + cache.bitsTag);
	unsigned int valor_retorno = (0xFFFF & address_16);
	return valor_retorno;
}

/*
 * La función find lru(int setnum) debe devolver el bloque menos
 * recientemente usado dentro de un conjunto (o alguno de ellos si hay másde uno),
 * utilizando el campo correspondiente de los metadatos de los bloques del conjunto.
 */
unsigned int find_lru(int setnum){
	return 2;
}

// Chequea que n este en [a,b]
bool en_rango(int n, int a, int b){ 
	return (n>=a && n<=b);
}

/*
 * La función is dirty(int way, int blocknum) debe devolver
 * el estado del bit D del bloque correspondiente.
 */
unsigned int is_dirty(int way, int setnum){
	if (!en_rango(way,0,cantidad_vias-1))
		return 0;
	int cantidad_bloques_en_via = cache.vias[0].cantidad_bloques_en_via;
	if ( !en_rango(setnum,0,cantidad_bloques_en_via-1) )
		return 0;
	unsigned int es_dirty = cache.vias[way].bloques[setnum].dirty?1:0;
	return es_dirty;
}

/*
 * La función read block(int blocknum) debe leer el bloque blocknum
 * de memoria y guardarlo en el lugar que le corresponda 
 * en la memoria caché.
 */
void read_block(int blocknum){

}

/* La función write block(int way, int setnum) debe escribir 
 * en memoria los datos contenidos en el bloque setnum de la vı́a way.
 */
void write_block(int way, int setnum){

}


void traer_a_cache(int address){
	// TODO
}

char read_byte_hit(int address){
	// TODO
	return 'a';
}

bool hay_hit(){
	return true;
}

/*
 * La función read byte(address) debe retornar el valor correspondiente 
 * a la posición de memoria address, buscándolo primero en el caché.
 */
char read_byte(int address){

	if(!hay_hit(address)){
		traer_a_cache(address);
	}
	return read_byte_hit(address);
}

/*
 * La función write byte(int address, char value) debe escribir el
 * valor value en la posición correcta del bloque que corresponde a
 * address.
 */
void write_byte(int address, char value){

}

/*
 * read byte() y write byte() sólo deben interactuar con la memoria
 * a través de las otras primitivas.
 */

/*
 * La función get miss rate() debe devolver el porcentaje 
 * de misses desde que se inicializó el cache.
 */
int get_miss_rate(){
	return 0;
}