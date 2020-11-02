#include "decode_encode.h"

static char encoding_table[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
                                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                                'w', 'x', 'y', 'z', '0', '1', '2', '3',
                                '4', '5', '6', '7', '8', '9', '+', '/'};

/*

	CODIFICADOR

*/
void codificador64_3Bytes(unsigned char letras_a_codificar[4], char* destino){
	unsigned int i1 = (unsigned int) letras_a_codificar[0] >> 2;
	unsigned int i2 = ((unsigned int) letras_a_codificar[0] & 0x3) << 4 | letras_a_codificar[1] >> 4;
	unsigned int i3 = ((unsigned int) letras_a_codificar[1] & 0xF) << 2 | letras_a_codificar[2] >> 6;
	unsigned int i4 = ((unsigned int) letras_a_codificar[2] & 0x3F);

	destino[0] = encoding_table[i1];
	destino[1] = encoding_table[i2];
	destino[2] = encoding_table[i3];
	destino[3] = encoding_table[i4];
}

void codificar_archivo(FILE* fentrada, FILE* fsalida){
	bool sigo_leyendo = true;
	do{
		char array_aEnco[3] = "";
		char array_encodificado[4] = "";

		int leidos = fscanf(fentrada,"%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
		
		if(leidos == 3){
			codificador64_3Bytes((unsigned char*)array_aEnco, array_encodificado);
		
		}else if(leidos == 2){
			codificador64_3Bytes((unsigned char*)array_aEnco, array_encodificado);
			array_encodificado[3] = '=';
			sigo_leyendo = false;
		
		}else if(leidos == 1){
			codificador64_3Bytes((unsigned char*)array_aEnco, array_encodificado);
			array_encodificado[2] = '=';
			array_encodificado[3] = '=';
			sigo_leyendo = false;
		
		}else{
			sigo_leyendo = false;
			return;
		
		}
		
		fwrite(array_encodificado, 4, sizeof(char), fsalida);
	}while(sigo_leyendo);
}

/*

	DECODIFICADOR

*/
unsigned int obtener_posicion64(unsigned char original){
	
	unsigned int valor = (unsigned int) original;
	unsigned int posicion = 0;

	if( valor > 96 && valor < 123){//MINUSCULAS
		posicion = (unsigned int) valor - 71;
	}else if(valor> 64 && valor < 91){//MAYUSCULAS
		posicion = (unsigned int) valor - 65;
	}else if(valor > 47 && valor < 58){
		posicion = (unsigned int) valor + 4;
	}else if(valor == 47){ // +
 		posicion = 63;
	}else if(valor == 43){ ///
 		posicion = 62;
	}else if(valor != 0){
		printf("\n El caracter: '%c' no es un caracter decodificable en base64. Compruebe la entrada.\n", original);
	}
	return posicion;
}

void decodificador64_4Bytes(unsigned char letras_a_Decodificar[4], unsigned char* destino){

	unsigned int vector_posiciones[5];

	vector_posiciones[0] = obtener_posicion64(letras_a_Decodificar[0]);
	vector_posiciones[1] = obtener_posicion64(letras_a_Decodificar[1]);
	vector_posiciones[2] = obtener_posicion64(letras_a_Decodificar[2]);
	vector_posiciones[3] = obtener_posicion64(letras_a_Decodificar[3]);

	unsigned char c1 = (unsigned char) (vector_posiciones[0] << 2  | vector_posiciones[1] >> 4);
	unsigned char c2 = (unsigned char) (vector_posiciones[1] << 4  | vector_posiciones[2] >> 2);
	unsigned char c3 = (unsigned char) (vector_posiciones[2] << 6 | vector_posiciones[3]);

	destino[0] = c1;
	destino[1] = c2;
	destino[2] = c3;
}

void decodificar_archivo(FILE* fentrada, FILE* fsalida){
	bool sigo_leyendo = true;
	do{
		char array_aDeco[4] = "";
		char array_decodificado[3] = "";
		size_t tamanio_decodificado = 3;

		int leidos = fscanf(fentrada,"%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
		if(array_aDeco[0] == '\n' || leidos != 4){
			sigo_leyendo = false;
			return;
		}
		if(array_aDeco[3] == '='){
			tamanio_decodificado = 2;
			array_aDeco[3] = '\0';
			if(array_aDeco[2] == '='){
				tamanio_decodificado = 1;
				array_aDeco[2] = '\0';
			}
			sigo_leyendo = false;
		}

		decodificador64_4Bytes((unsigned char*)array_aDeco, (unsigned char*) array_decodificado);

		fwrite(array_decodificado, tamanio_decodificado, sizeof(char), fsalida);

	}while(sigo_leyendo);
}