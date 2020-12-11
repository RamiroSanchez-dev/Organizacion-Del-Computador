#include "cache.h"

#include <stdlib.h>
#include <math.h>


// Chequea que n este en [a,b]
bool en_rango(int n, int a, int b){ 
	return (n>=a && n<=b);
}

bloque_t init_bloque(){
	bloque_t bloque;
	bloque.valido = false;
	bloque.dirty = false;
	bloque.distancia_lru = 0;
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
	cache.tamanio_cache = tamanio_cache * KiB;
	int tamanio_via = cache.tamanio_cache/cantidad_vias;
	int cantidad_bloques_en_via = tamanio_via/tamanio_bloque;

	cache.vias = malloc(cantidad_vias*sizeof(via_t));
	for(int i = 0; i < cantidad_vias; i++){
		cache.vias[i] = via_init(cantidad_bloques_en_via);
	}

	memset(memoria_ppal, 0, TAMANIO_MEMORIA_PPAL);
	cache.aciertos = 0;
	cache.misses = 0;
	double d_cantidad_bitsIndex = ceil(log2(cantidad_bloques_en_via));
	cache.cantidad_bitsIndex = (int) d_cantidad_bitsIndex;
	double d_cantidad_bitsOffset = ceil(log2(tamanio_bloque));
	cache.cantidad_bitsOffset = (int ) d_cantidad_bitsOffset;
	cache.cantidad_bitsTag = BITS_DIRECCION_MEMORIA - cache.cantidad_bitsIndex - cache.cantidad_bitsOffset;
	cache.cantidad_bloques_en_via = cantidad_bloques_en_via;
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
	address_16 = address_16 << cache.cantidad_bitsTag;
	address_16 = address_16 >> (cache.cantidad_bitsOffset + cache.cantidad_bitsTag);
	unsigned int valor_retorno = (0xFFFF & address_16);
	return valor_retorno;
}

unsigned int get_blocknum(int address){
	return(address >> cache.cantidad_bitsOffset);	
}


bool es_mayor_lru(bloque_t candidato, bloque_t actual){
	if (!actual.valido)
		return false;
	if (!candidato.valido)
		return true;
	return (candidato.distancia_lru > actual.distancia_lru);
}

/*
 * La función find lru(int setnum) debe devolver el bloque menos
 * recientemente usado dentro de un conjunto (o alguno de ellos si hay másde uno),
 * utilizando el campo correspondiente de los metadatos de los bloques del conjunto.
 */
unsigned int find_lru(int setnum){
	if (!en_rango(setnum,0, cache.cantidad_bloques_en_via-1))
		return cantidad_vias; //Valor fuera de rango.
	unsigned int posicion_lru = 0;
	bloque_t bloque_lru = cache.vias[0].bloques[setnum];
	for(int i = 1; i < cantidad_vias; i++){
		if (es_mayor_lru(cache.vias[i].bloques[setnum],bloque_lru)){
			bloque_lru = cache.vias[i].bloques[setnum];
			posicion_lru = i;
		}
	} 
	return posicion_lru;
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

bloque_t obtener_bloque_de_ppal(int address_16){
	bloque_t bloque = init_bloque();
	bloque.valido = true;
	bloque.direccion = address_16;
	memcpy(bloque.datos,&memoria_ppal[address_16],tamanio_bloque*sizeof(char));
	return bloque;
}

/*
 * La función read block(int blocknum) debe leer el bloque blocknum
 * de memoria y guardarlo en el lugar que le corresponda 
 * en la memoria caché.
 */
void read_block(int blocknum){
	int cantidad_bloques_mem_ppal = TAMANIO_MEMORIA_PPAL/tamanio_bloque;
	if (!en_rango(blocknum,0,cantidad_bloques_mem_ppal))
		return; //No se puede hacer nada
	int address_16 = blocknum << cache.cantidad_bitsOffset;
	unsigned int set = find_set(address_16);
	unsigned int posicion_lru = find_lru(set);
	if(is_dirty(posicion_lru,set)){
		/* TODO: Falta escribir el bloque en ppal */
		write_block(posicion_lru,set);
	}
	bloque_destroy(cache.vias[posicion_lru].bloques[set]);
	cache.vias[posicion_lru].bloques[set] = obtener_bloque_de_ppal(address_16);
}

/* La función write block(int way, int setnum) debe escribir 
 * en memoria los datos contenidos en el bloque setnum de la vı́a way.
 */
void write_block(int way, int setnum){
	if(!en_rango(way, 0, cantidad_vias) || !en_rango(setnum, 0, cache.cantidad_bloques_en_via - 1))
		return;
	bloque_t bloque = cache.vias[way].bloques[setnum];
	memcpy(&memoria_ppal[bloque.direccion], bloque.datos, tamanio_bloque);
}

/*
 * Si está en caché devuelve el bloque que coincide con adress.
 * Si no está en caché devuelve NULL.
 */
bloque_t* obtener_bloque_de_cache(int address){
	unsigned int set = find_set(address);
	for(int i = 0; i < cantidad_vias; i++){
		bloque_t* bloque = &cache.vias[i].bloques[set];
		if((get_blocknum(address) == get_blocknum(bloque->direccion)) && (bloque->valido)){
			return bloque;
		}
	}
	return NULL;
}

unsigned int get_offset(int address){
	unsigned int offset = address & (tamanio_bloque-1);
	return offset;
}

char read_byte_cache(int address){
	unsigned int set = find_set(address);
	unsigned int offset = get_offset(address);
	bloque_t* bloque = obtener_bloque_de_cache(address);
	if(!bloque) 
		return '\0'; // TODO: stderr¿?
	return bloque->datos[offset];
}

bool hay_hit(int address){
	return (obtener_bloque_de_cache(address) != NULL);
}

void actualizar_lru(int address){
	unsigned int set = find_set(address);
	for (int i = 0; i < cantidad_vias; i++){
		bloque_t* bloque = &cache.vias[i].bloques[set];
		if(get_blocknum(address) == get_blocknum(bloque->direccion)){
			if(bloque->valido){
				bloque->distancia_lru++;
			}
		}else{
			bloque->distancia_lru = 0;
		}
	}
}

/*
 * La función read byte(address) debe retornar el valor correspondiente 
 * a la posición de memoria address, buscándolo primero en el caché.
 */
char read_byte(int address){
	if(!hay_hit(address)){
		read_block(get_blocknum(address));
		cache.misses++;
	}else{
		cache.aciertos++;
	}
	actualizar_lru(address);
	return read_byte_cache(address);
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
	if(cache.misses+cache.aciertos == 0)
		return 0;
	return cache.misses/(cache.misses+cache.aciertos);
}