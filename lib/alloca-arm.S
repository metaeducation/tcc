#ifdef EMBEDDED_IN_R3
#define alloca r3_tcc_alloca
#endif
	.text
	.align	2
	.global	alloca
	.type	alloca, %function
alloca:
	rsb	sp, r0, sp
	bic	sp, sp, #7
	mov	r0, sp
	mov	pc, lr
	.size	alloca, .-alloca
	.section	.note.GNU-stack,"",%progbits
