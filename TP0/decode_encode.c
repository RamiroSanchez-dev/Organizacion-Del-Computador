#define SonIGUALES 0
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include "decode_encode.h"
#include <stdio.h>

extern size_t mystrlen(const char *);



static char encoding_table[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
                                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                                'w', 'x', 'y', 'z', '0', '1', '2', '3',
                                '4', '5', '6', '7', '8', '9', '+', '/'};

char codificador64_puntual(unsigned char original){
	int shifteado = original >> 2;
	char letra = encoding_table[shifteado];
	return letra;
}

 void codificador64_3Bytes(unsigned char letras_a_codificar[4], char* destino){

	size_t tamanio_palabra = strlen((char*)letras_a_codificar);



	unsigned int i1 = (unsigned int) letras_a_codificar[0] >> 2;

	unsigned int i2 = ((unsigned int) letras_a_codificar[0] & 0x3) << 4 | letras_a_codificar[1] >> 4;

	unsigned int i3 = ((unsigned int) letras_a_codificar[1] & 0xF) << 2 | letras_a_codificar[2] >> 6;

	unsigned int i4 = ((unsigned int) letras_a_codificar[2] & 0x3F);


	
	if(tamanio_palabra == 2){
		destino[0] = encoding_table[i1];
		destino[1] = encoding_table[i2];
		destino[2] = encoding_table[i3];

		destino[3] = '=';
	}else if(tamanio_palabra == 1){
		destino[0] = encoding_table[i1];
		destino[1] = encoding_table[i2];
		destino[3] = '=';
		destino[2] = '=';
	}else{
		destino[0] = encoding_table[i1];
		destino[1] = encoding_table[i2];
		destino[2] = encoding_table[i3];
		destino[3] = encoding_table[i4];
	}



 	destino[4] = '\0';
}

void codificador64(unsigned char* palabra, char* palabra_nueva){
	
	size_t tope;
	size_t tamanio_palabra = strlen((char*)palabra);
	if(tamanio_palabra%3 == 0)
		tope = tamanio_palabra + 1;
	else if(tamanio_palabra%3 == 1)
		tope = tamanio_palabra + 3;
	else
		tope = tamanio_palabra + 2;

	unsigned char* palabra_extendida = calloc(tope, sizeof(unsigned char));
	strcpy((char*)palabra_extendida, (char*) palabra);

	unsigned char buffer[4];
	buffer[3] = '\0';
	char buffer64[5];
	for(int i = 0; i < tope - 1; i += 3){
		buffer[0] = palabra_extendida[i];
		buffer[1] = palabra_extendida[i+1];
		buffer[2] = palabra_extendida[i+2];

		codificador64_3Bytes(buffer, buffer64);
		strcat(palabra_nueva, buffer64);
	}

	free(palabra_extendida);
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
			posicion = (unsigned int) valor +4;
	}else if(valor == 47){ // +
	 		posicion = 63;
	}else if(valor == 43){ ///
	 		posicion = 62;
	}else if(valor != 0){
		printf("\n El caracter: '%c' no es un caracter decodificable en base64. Compruebe la entrada.\n", original);
	}


	return posicion;
}




 void decodificador64_4Bytes(unsigned char letras_a_Decodificar[5], char* destino){

	
	
/*
00010011  00010110  00000101 00101110
	
	01001101    01100001    01101110
	01001100
	||||||||
	00000001

	01001101



	01100000
	


	01100001


	2 00000101  --> 01000000
	3 00101110
	queremos 01101110




	TQ==;

	00010011  00010110 00000000 00000000


		1010101


	recibimos vector -> buscamos sus ubicaciones -> tenemos 4 ubucacuones -> lo original!  


*/
 	unsigned int vector_posiciones[5];

 	vector_posiciones[0] = obtener_posicion64(letras_a_Decodificar[0]);
 	vector_posiciones[1] = obtener_posicion64(letras_a_Decodificar[1]);
 	vector_posiciones[2] = obtener_posicion64(letras_a_Decodificar[2]);
 	vector_posiciones[3] = obtener_posicion64(letras_a_Decodificar[3]);


	char c1 =  (char) (vector_posiciones[0] << 2  | vector_posiciones[1] >> 4);
 
	char c2 = (char) (vector_posiciones[1] << 4  | vector_posiciones[2] >> 2);

	char c3 =  (char) (vector_posiciones[2] << 6 | vector_posiciones[3]);
	
	destino[0] = c1;
	destino[1] = c2;
	destino[2] = c3;
	//strcpy(destino, (char*)&decodificado);


}

void decodificador64(unsigned char* palabra, char* palabra_nueva){
	
	size_t tamanio_palabra = strlen((char*)palabra);
	

	if(palabra[tamanio_palabra-1] == '='){
		palabra[tamanio_palabra-1] = '\0';
	 	if(palabra[tamanio_palabra -2] == '=')
			palabra[tamanio_palabra - 2] = '\0';
	}

	
	unsigned char buffer64[5];
	buffer64[4] = '\0';
	char bufferNormal[5]; 
	for(int i = 0; i < tamanio_palabra - 1 ; i += 4){
		buffer64[0] = palabra[i];
		buffer64[1] = palabra[i+1];
		buffer64[2] = palabra[i+2];
		buffer64[3] = palabra[i+3];

		decodificador64_4Bytes(buffer64, bufferNormal);
		strcat(palabra_nueva, bufferNormal);
	}

}



