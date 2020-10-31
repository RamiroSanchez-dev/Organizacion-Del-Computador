#include "decode_encode.h"

#include <stdbool.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

extern size_t mystrlen(const char *);

const char* Prueba_Pasada = "Pase la prueba";
const char* Prueba_Fallada = "No paso la prueba :(";


void escribirPrueba(char* numPrueba, unsigned char* palabraIngresada, char* palabraObtenida, bool pasoPrueba){
	if(pasoPrueba){

		printf("%s\n",Prueba_Pasada);

	}else{
		printf("%s\n",Prueba_Fallada);
	}
	char segundaParte[] = ", la palabra ingresada es: ";

	char tercerParte[] = ", la palabra obtenida fue: ";

	printf("%s %s\n",segundaParte,palabraIngresada);

	printf("%s %s\n",tercerParte,palabraObtenida);


	/*write(1, numPrueba, mystrlen(numPrueba));
	write(1, segundaParte, mystrlen(numPrueba));
	write(1, (char*)palabraIngresada, mystrlen((char*)palabraIngresada));
	write(1, tercerParte, mystrlen(tercerParte));
	write(1, palabraObtenida, mystrlen(palabraObtenida));
	char carro[] = "\n";
	write(1, carro, mystrlen(carro));*/


}


void test00(){
	unsigned char msg[] = "Man";//TWFu
	char decodificado[5] = "";
	codificador64(msg, decodificado);


	escribirPrueba("0", msg, decodificado, strcmp(decodificado, "TWFu") == 0);
}

void test01(){
	unsigned char msg[] = "Cat"; // Q2F0
	char decodificado[5] = "";
	codificador64(msg, decodificado);

	escribirPrueba("1", msg, decodificado,strcmp(decodificado, "Q2F0") == 0);
}

void test02(){
	unsigned char msg[] = "ManCat"; // TWFuQ2F0;
	char decodificado[9] = "";
	codificador64(msg, decodificado);
	escribirPrueba("2", msg, decodificado, strcmp(decodificado, "TWFuQ2F0") == 0);
}

void test03(){
	unsigned char msg[] = "ManCatOS"; //TWFuQ2F0T1M9
	char decodificado[13] = "";
	codificador64(msg, decodificado);
	escribirPrueba("3", msg, decodificado, strcmp(decodificado, "TWFuQ2F0T1M=") == 0);

}

void test04(){
	unsigned char msg[] = "M";
	char decodificado[5] = "";
	codificador64(msg, decodificado);
	escribirPrueba("4", msg, decodificado, strcmp(decodificado, "TQ==") == 0);
}


void test05(){
	unsigned char msg[] = "En un lugar de La Mancha de cuyo nombre no quiero acordarme";
	char decodificado[100] = "";
	codificador64(msg, decodificado);
	escribirPrueba("5", msg, decodificado, strcmp(decodificado, "RW4gdW4gbHVnYXIgZGUgTGEgTWFuY2hhIGRlIGN1eW8gbm9tYnJlIG5vIHF1aWVybyBhY29yZGFybWU=") == 0);	
}



void test06(){
	unsigned char msg[] = "TQ==";
	char decodificado[5] = "";
	decodificador64(msg,decodificado);
	escribirPrueba("6", msg, decodificado, strcmp(decodificado, "M") == 0);
}

void test07(){
	unsigned char msg[] = "TWFu";
	char decodificado[10] = "";
	decodificador64(msg,decodificado);
	escribirPrueba("7", msg, decodificado, strcmp(decodificado, "Man") == 0);
}


void test08(){
	unsigned char msg[] = "RW4gdW4gbHVnYXIgZGUgTGEgTWFuY2hhIGRlIGN1eW8gbm9tYnJlIG5vIHF1aWVybyBhY29yZGFybWU=";
	char decodificado[61] = "";
	decodificador64(msg,decodificado);
	escribirPrueba("8", msg, decodificado, strcmp(decodificado, "En un lugar de La Mancha de cuyo nombre no quiero acordarme") == 0);
}

void testEncouder(){
	test00();
	test01();
	test02();
	test03();
	test04();
	test05();
}


void testDecouder(){
	test06();
	test07();
	test08();

}

int main(int argc, char const *argv[])
{
	//testEncouder();
	testDecouder();



	return 0;
}