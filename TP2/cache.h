#ifndef CACHE_H
#define CACHE_H

#include <stdbool.h>
#include <string.h>
#include <stdint.h>

#define KiB (1024)
#define TAMANIO_MEMORIA_PPAL (64*KiB)
#define BITS_DIRECCION_MEMORIA 16
char memoria_ppal[TAMANIO_MEMORIA_PPAL];

int tamanio_cache;
int tamanio_bloque;
int cantidad_vias;

typedef struct bloque{
	bool dirty;
	bool valido;
	int distancia_lru;
	short direccion;
	char* datos;
}bloque_t;


typedef struct via{
	bloque_t* bloques;
	int cantidad_bloques_en_via;
}via_t;

typedef struct cache{
	int aciertos;
	int misses;
	via_t* vias;
	int cantidad_bitsOffset;
	int cantidad_bitsTag;
	int cantidad_bitsIndex;
	unsigned int tamanio_cache;
}cache_t;

cache_t cache;

/*
 * La función init() debe inicializar los bloques de la caché
 * como inválidos, la memoria simulada en 0 y la tasa de misses a 0.
 */
void init();

/* 
 * La función find set(int address) debe devolver
 * el conjunto de caché al que mapea la direccion address.
 */
unsigned int find_set(int address);

/*
 * La función find lru(int setnum) debe devolver el bloque menos
 * recientemente usado dentro de un conjunto (o alguno de ellos si hay másde uno),
 * utilizando el campo correspondiente de los metadatos de los bloques del conjunto.
 */
unsigned int find_lru(int setnum);

/*
 * La función is dirty(int way, int blocknum) debe devolver
 * el estado del bit D del bloque correspondiente.
 */
unsigned int is_dirty(int way, int setnum);

/*
 * La función read block(int blocknum) debe leer el bloque blocknum
 * de memoria y guardarlo en el lugar que le corresponda 
 * en la memoria caché.
 */
//void read_block(int blocknum);

/* La función write block(int way, int setnum) debe escribir 
 * en memoria los datos contenidos en el bloque setnum de la vı́a way.
 */
//void write_block(int way, int setnum);

/*
 * La función read byte(address) debe retornar el valor correspondiente 
 * a la posición de memoria address, buscándolo primero en el caché.
 */
//char read_byte(int address);

/*
 * La función write byte(int address, char value) debe escribir el
 * valor value en la posición correcta del bloque que corresponde a
 * address.
 */
//void write_byte(int address, char value);

/*
 * read byte() y write byte() sólo deben interactuar con la memoria
 * a través de las otras primitivas.
 */

/*
 * La función get miss rate() debe devolver el porcentaje 
 * de misses desde que se inicializó el cache.
 */
int get_miss_rate();


/*
 * Destruye las estructuras de datos reservadas.
 */
void destroy();

#endif /* CACHE_H */