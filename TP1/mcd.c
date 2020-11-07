#include <stdio.h>

unsigned int mcd(unsigned int m, unsigned int n){
	//FALTA EN CASO DE ERRORES (fuera de rango)
	unsigned int resto;
	if(m<n){
		unsigned int aux=m;
		m=n;
		n=aux;
	}
	while(n!=0){
		resto=m%n;
		m=n;
		n=resto;
	}
	return m;
}

unsigned int mcm(unsigned int m, unsigned int n){
	return ((m*n)/mcd(m,n));

}

int main(){
	unsigned int a,b,mincd,maxcm;
	a=256;
	b=192;

	mincd=mcd(a,b);

	printf("El mcd es: %u\n",mincd);

	mincd=mcd(b,a);

	printf("El mcd cuando damos los parametros al reves es: %u\n",mincd);

	maxcm=mcm(a,b);

	printf("El mcm es: %u\n",maxcm);

	maxcm=mcm(b,a);

	printf("El mcm cuando damos los parametros al reves es: %u\n",maxcm);

	return 0;
}