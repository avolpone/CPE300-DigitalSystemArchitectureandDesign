module DATAPATH( PC_TOCPU, AC_TOCPU, IR_TOCU, Z_TOCU,
AR_LOAD, AR_INC, 
PC_BUS, PC_LOAD, PC_INC, PC_RESET,
DR_BUS_H, DR_BUS_L, DR_LOAD,
TR_BUS, TR_LOAD,
IR_LOAD,
R_BUS, R_LOAD,
AC_BUS, AC_LOAD,
ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1,

MEMBUS, BUSMEM, WE, CLK);

	output [7:0] IR_TOCU;
	output [7:0] AC_TOCPU;
	output [15:0] PC_TOCPU;
	output Z_TOCU;

	input CLK;
	
	input WE, MEMBUS, BUSMEM;
	
	input AR_LOAD, AR_INC;
	input PC_BUS, PC_LOAD, PC_INC, PC_RESET;
	input DR_BUS_H, DR_BUS_L, DR_LOAD;
	input TR_BUS, TR_LOAD;
	input IR_LOAD;
	input R_BUS, R_LOAD;
	input AC_BUS, AC_LOAD;
	input ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1;
	
	wire [7:0] AR_OUT;
	wire [15:0] PC_OUT;
	wire [7:0] DR_OUT_H, DR_OUT_L, DR_temp;
	wire [7:0] TR_OUT;
	wire [7:0] R_OUT;
	wire [7:0] AC_OUT;
	wire [7:0] DATA; 
	
	wire [15:0] BUS;

	
AR ARMODULE		( AR_OUT, BUS, AR_LOAD, AR_INC, CLK );

PC PCMODULE		( PC_TOCPU, PC_OUT, BUS, PC_BUS, PC_LOAD, PC_INC, PC_RESET, CLK );

assign BUS[15:0] = PC_OUT;


DR DRMODULE		( DR_OUT_H, DR_OUT_L, DR_temp, BUS, DR_BUS_H, DR_BUS_L, DR_LOAD, CLK );

assign BUS[7:0]  = DR_OUT_L;
assign BUS[15:8] = DR_OUT_H;

TR TRMODULE		( TR_OUT, DR_temp, TR_BUS, TR_LOAD, CLK );

assign BUS[7:0] = TR_OUT;

IR IRMODULE		( IR_TOCU, DR_temp, IR_LOAD, CLK);

R	RMODULE		( R_OUT, BUS, R_BUS, R_LOAD, CLK );

assign BUS[7:0] = R_OUT;

AC ADMODULE		( AC_TOCPU, Z_TOCU, AC_OUT, BUS, 
						AC_BUS, AC_LOAD, ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1, CLK );

assign BUS[7:0] = AC_OUT;


RAM MEMMODULE	( CLK, AR_OUT, DATA, WE, MEMBUS, BUSMEM );

assign BUS[7:0] = DATA;


endmodule 
