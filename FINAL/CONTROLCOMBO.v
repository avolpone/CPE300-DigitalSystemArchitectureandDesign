module CONTROL_COMB( 

SOFT_RESET,

AR_LOAD, AR_INC, 
PC_BUS, PC_LOAD, PC_INC, PC_RESET,
DR_BUS_H, DR_BUS_L, DR_LOAD,
TR_BUS, TR_LOAD,
IR_LOAD,
R_BUS, R_LOAD,
AC_BUS, AC_LOAD,
ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1,

MEMBUS, BUSMEM, WE,

T0, T1, T2, T3, T4, T5, T6, T7,
INOP, ILDAC, ISTAC, IMVAC, IMOVR, IJUMP, IJMPZ, IJPNZ, IADD, ISUB, IINAC, ICLAC, IAND, IOR, IXOR, INOT, CLEAR, Z);

input CLEAR, Z;

input T0, T1, T2, T3, T4, T5, T6, T7,
INOP, ILDAC, ISTAC, IMVAC, IMOVR, IJUMP, IJMPZ, IJPNZ, IADD, ISUB, IINAC, ICLAC, IAND, IOR, IXOR, INOT;

reg FETCH1, FETCH2, FETCH3,
NOP1, 
LDAC1, LDAC2, LDAC3, LDAC4, LDAC5,
STAC1, STAC2, STAC3, STAC4, STAC5,
MVAC1,
MOVR1,
JUMP1, JUMP2, JUMP3,
JMPZY1, JMPZY2, JMPZY3,
JMPZN1, JMPZN2,
JPNZY1, JPNZY2, JPNZY3,
JPNZN1, JPNZN2,
ADD1, AND1, SUB1, OR1, XOR1, NOT1,
INAC1, CLAC1;

output reg AR_LOAD, AR_INC, 
PC_BUS, PC_LOAD, PC_INC, PC_RESET,
DR_BUS_H, DR_BUS_L, DR_LOAD,
TR_BUS, TR_LOAD,
IR_LOAD,
R_BUS, R_LOAD,
AC_BUS, AC_LOAD,
ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1,

MEMBUS, BUSMEM, WE,

SOFT_RESET;


always @(*)
begin

if(!CLEAR)
begin
	PC_RESET = CLEAR;

	AR_LOAD  = ( T0 | T2 | (ILDAC & T5) | (ISTAC & T5) );
	AR_INC   = ( (ILDAC & T3) | (IJUMP & T3) | (ISTAC & T3) | (IJMPZ & T3 & Z) | 
	(IJPNZ & T3 & ~Z) );
	
	PC_BUS   = ( T0 | T2 );
	PC_LOAD  = ( (IJUMP & T5) | (IJMPZ & T5 & Z) | (IJPNZ & T5 & ~Z) );
	PC_INC   = ( T1 | (ILDAC & (T3 | T4)) | (ISTAC & (T3 | T4)) | 
	(IJMPZ & (T3 | T4) & ~Z) | (IJPNZ & (T3 | T4) & Z) );
	
	DR_BUS_H = ( (ILDAC & T5) | (IJUMP & T5) | (ISTAC & T5) | (IJMPZ & T5 & Z) | 
	(IJPNZ & T5 & ~Z) );
	DR_BUS_L = ( (ILDAC & T7) | (ISTAC & T7) );
	DR_LOAD  = ( T1 | (ILDAC & (T3 | T4 | T6)) | (IJUMP & (T3 | T4)) | (ISTAC & 
	(T3 | T4 | T6)) | (IJMPZ & (T3 | T4) & Z) | (IJPNZ & (T3 | T4) & ~Z) );
	
	TR_BUS   = ( (ILDAC & T5) | (IJUMP & T5) | (ISTAC & T5) | (IJMPZ & T5 & Z) | 
	(IJPNZ & T5 & ~Z) );
	TR_LOAD  = ( (ILDAC & T4) | (IJUMP & T4) | (ISTAC & T4) | (IJMPZ & T4 & Z) | 
	(IJPNZ & T4 & ~Z) );
	
	IR_LOAD  = T2;
	
	R_BUS    = ( (IMOVR & T3) | (T3 & (IADD | ISUB | IAND | IOR | IXOR)) );
	R_LOAD   = ( IMVAC & T3 );
	
	AC_BUS   = ( (IMVAC & T3) | (ISTAC & T6) );
	AC_LOAD  = ( (ILDAC & T7) | (T3 & (IMOVR | IADD | ISUB | IINAC | ICLAC | IAND 
	| IOR | IXOR | INOT)) );
	
	MEMBUS   = ( T1 | (ILDAC & (T3 | T4 | T6)) | (IJUMP & (T3 | T4)) | 
	(IJPNZ & (T3 | T4) & ~Z) | (ISTAC & (T3 | T4)) | (IJMPZ & (T3 | T4)) );
	
	BUSMEM   = ( ISTAC & T7 );
	WE       = ( ISTAC & T7 );
	
	ALUS7		= T3 & (INOT | IXOR | IOR | IAND);
	ALUS6		= T3 & (INOT | IOR);
	ALUS5		= T3 & (INOT | IXOR);
	ALUS4		= T3 & (IINAC);
	ALUS3		= (T3 & IADD) | (T7 & ILDAC);
	ALUS2		= T3 & (ISUB);
	ALUS1		= T3 & (IINAC | ISUB | IADD);
	
	SOFT_RESET	=	( (ICLAC & T3) | (ILDAC & T7) | (IJUMP & T5) | (T3 & (IMOVR | IMVAC)) 
	| (ISTAC & T7) | (IJMPZ & T4 & ~Z) | (IJMPZ & T5 & Z) | (IJPNZ & T4 & Z) | 
	(IJPNZ & T5 & ~Z) | (INOP & T4) | (T3 & (IADD | ISUB | IINAC | IAND | IOR | IXOR | INOT)) );
end


if(CLEAR)
begin
	PC_RESET = 1;

	AR_LOAD  = 0;
	AR_INC   = 0;
	
	PC_BUS   = 0;
	PC_LOAD  = 0;
	PC_INC   = 0;
	
	DR_BUS_H = 0;
	DR_BUS_L = 0;
	DR_LOAD  = 0;
	
	TR_BUS   = 0;
	TR_LOAD  = 0;
	
	IR_LOAD  = 0;
	
	R_BUS    = 0;
	R_LOAD   = 0;
	
	AC_BUS   = 0;
	AC_LOAD  = 1;
	
	MEMBUS   = 0;
	BUSMEM   = 0;
	WE       = 0;
	
	ALUS7		= 0;
	ALUS6		= 0;
	ALUS5		= 0;
	ALUS4		= 0;
	ALUS3		= 0;
	ALUS2		= 0;
	ALUS1		= 0;
	
	SOFT_RESET	=	0;

end

end


endmodule 