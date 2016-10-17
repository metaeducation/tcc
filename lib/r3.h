#ifdef EMBEDDED_IN_R3
#define TCC_EXPORT static
#define SYM_FUNC(x) #x, x
#define alloca r3_tcc_alloca
#else
#define TCC_EXPORT
#endif
