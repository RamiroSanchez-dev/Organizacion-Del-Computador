#ifndef MCM_S
#define MCM_S

#include <sys/regdef.h>

.extern mcd




#define SS_MCM 40

/* Callers ABA */
#define O_A0_CALLER SS_MCM
#define O_A1_CALLER SS_MCM + 4

/* SRA */
//#O_PADDING 36
#define O_RA 32
#define O_FP 28
#define O_GP 24

/* LTA */
//#define OtraTemp 20
#define O_MUL 16

// Se llama a una función, por ende:
/* ABA */
#define O_A3_MCM 12
#define O_A2_MCM 8
#define O_A1_MCM 4
#define O_A0_MCM 0

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
	move  fp, sp

	sw    a0, O_A0_CALLER(fp)
	sw    a1, O_A1_CALLER(fp)


	multu a0, a1				// acc64 = a0·a1
	mfhi  t0					// Traigo la parte alta de acc64.
	bnez  t0, return0			// Si no es 0 hubo overflow: devuelvo 0.

	mflo  t0					// Traigo la parte baja de acc64 a t0.

	sw    t0, O_MUL(fp)
	bal   mcd					// v0 = mcd(a0, a1)

	ld    t0, O_MUL(fp)
	divu  t0, v0				// acc = a0·a1/mcd(a0, a1)
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
