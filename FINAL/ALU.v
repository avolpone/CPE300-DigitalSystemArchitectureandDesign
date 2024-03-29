module ALU(ALU_OUT, ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1, BUS, AC);

input [7:0] BUS, AC;
input ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1;

output [7:0] ALU_OUT;

wire [7:0] MUX1OUT, MUX2OUT, MUX3OUT, ADDEROUT;

muxONE_ALUS1 	 	MUX1(AC, ALUS1, MUX1OUT);

muxTWO_ALUS23   	MUX2(BUS, ALUS2, ALUS3, MUX2OUT);

adder16bit 		 	ADD16b(MUX1OUT, MUX2OUT, ALUS4, ADDEROUT);

muxTHIRD_ALUS56 	MUX3( AC, BUS, ALUS5, ALUS6, MUX3OUT);

muxFOUR_ALUS7 	 	MUX4(ADDEROUT, MUX3OUT, ALUS7, ALU_OUT);

endmodule 	
