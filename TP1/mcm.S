#ifndef MCM_S
#define MCM_S

#include <sys/regdef.h>

.extern mcd

#define SS_MCM 40

/* ABA */
#define O_A0_MCM 36
#define O_A1_MCM 32
#define O_A2_MCM 28 
#define O_A3_MCM 24 

/* SRA */
//#define OTROS_4B 20
//#define O_PADDING 16
#define O_S0_MCM 12
#define O_RA 8 
#define O_FP 4
#define O_GP 0

.text 
.align 2

/*
unsigned int
mcm(unsigned int m, unsigned int n)
*/

.globl mcm
.ent   mcm

mcm:
	subu  sp, sp, SS_MCM
	.cprestore O_GP
	sw    fp, O_FP(sp)
	sw    gp, O_GP(sp)
	sw    ra, O_RA(sp)
	// Guardar Padding????
	move  fp, sp

	multu a0, a1				// acc64 = a0·a1
	mfhi  t0					// Traigo la parte alta de acc64.
	bnez  t0, return0 			// Si no es 0 hubo overflow: devuelvo 0.

	mflo  s0					// Traigo la parte baja de acc64 a s0.

	sw    s0, O_S0_MCM(fp)
	bal   mcd

	ld    s0, O_S0_MCM(fp)
	divu  s0, v0
	mflo  v0
	/* Stack unwiding */
	lw    ra, O_RA(sp)
	lw    fp, O_FP(sp)
  	lw    gp, O_GP(sp)
  	addiu sp, sp, SS_MCM

	jr ra
return0:
	move  v0, zero
	/* Stack unwiding */
	lw    ra, O_RA(sp)
	lw    fp, O_FP(sp)
  	lw    gp, O_GP(sp)
  	addiu sp, sp, SS_MCM

	jr ra

.end mcm
	 
#endif /* MCM_S */
