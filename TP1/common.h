#ifndef COMMON_H
#define COMMON_H


/*
 * Pre-condiciones: Se asume que parámetros pertenecen al rango: [2, MAX_INT]
 * Post-condiciones: Devuelve el mínimo común múltiplo entre los dos números enviados.
 */
unsigned int mcm(unsigned int m, unsigned int n);


/*
 * Pre-condiciones: Se asume que parámetros pertenecen al rango: [2, MAX_INT]
 * Post-condiciones: Devuelve el máximo común divisor entre los dos números enviados.
 * 					 En caso de overflow se devuelve 0.
 */
unsigned int mcd(unsigned int m, unsigned int n);

#endif /* COMMON_H */