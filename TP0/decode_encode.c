#define SonIGUALES 0
#include "decode_encode.h"

extern size_t mystrlen(const char *);



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
 	destino[4] = '\0';
}

void codificar_archivo(FILE* fentrada, FILE* fsalida){
	bool sigo_leyendo = true;
	do{
		char array_aEnco[4] = "";
		char array_encodificado[5] = "";
		array_encodificado[4] = '\0';
		int leidos = fscanf(fentrada,"%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
		if(leidos == 3)
			codificador64_3Bytes((unsigned char*)array_aEnco, array_encodificado);
		else if(leidos == 2){
			codificador64_3Bytes((unsigned char*)array_aEnco, array_encodificado);
			sigo_leyendo = false;
		}else if(leidos == 1){
			codificador64_3Bytes((unsigned char*)array_aEnco, array_encodificado);
			sigo_leyendo = false;
		}else
			sigo_leyendo = false;
		fprintf(fsalida,"%s", array_encodificado);
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




 void decodificador64_4Bytes(unsigned char letras_a_Decodificar[5], unsigned char* destino){

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
		char array_aDeco[5] = "";
		char array_decodificado[4] = "";
		array_decodificado[3] = '\0';
		fscanf(fentrada,"%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
		if(strlen(array_aDeco) == 0 || (strlen(array_aDeco) == 1 && array_aDeco[0] == '\n')){
			sigo_leyendo = false;
		}else if(strlen(array_aDeco) < 4){
			printf("Entrada invalida. La entrada deberia ser multiplo de 4\n");
			sigo_leyendo = false;
		}else{
			decodificador64_4Bytes((unsigned char*)array_aDeco, (unsigned char*) array_decodificado);
			fprintf(fsalida,"%s", (unsigned char*) array_decodificado);
		}
	}while(sigo_leyendo);
}


/*
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
*/
