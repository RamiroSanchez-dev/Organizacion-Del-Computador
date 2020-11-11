#include "common.h"
#include <stdlib.h>
#include <stdio.h>

unsigned int mcd(unsigned int m, unsigned int n){
	unsigned int resto;
	if(m<n){
		unsigned int aux = m;
		m = n;
		n = aux;
	}
	while(n!=0){
		resto = m%n;
		m = n;
		n = resto;
	}
	return m;
}

unsigned int mcm(unsigned int m, unsigned int n){
	unsigned int multiplicacion = m*n;
	if (m != 0 && multiplicacion / m != n) { //Es porque hubo overflow.
		return 0;
	}
	else 
		return (multiplicacion/mcd(m,n));
}