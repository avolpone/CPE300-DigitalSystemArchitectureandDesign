module AC(AC_TOCPU, Z_TOCU, AC_OUT, BUS, AC_BUS, AC_LOAD, ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1, CLK);

	output reg Z_TOCU;
	output [7:0] AC_TOCPU;
	output reg [7:0] AC_OUT; 

	input [7:0] BUS; 

	input CLK, AC_LOAD, AC_BUS;
	input ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1;
	
	reg [7:0] AC_temp;
	reg Z;
	
	wire [7:0] ALU_OUT, ZCHECKED;
	
ALU ALUMOD(ALU_OUT, ALUS7, ALUS6, ALUS5, ALUS4, ALUS3, ALUS2, ALUS1, BUS, AC_temp);	

Z_CHECK ZCHECK(ZCHECKED, ALU_OUT);

always
Z_TOCU = ZCHECKED;

always @(posedge CLK)
begin
	if(AC_LOAD)
		AC_temp <= ALU_OUT;
	else if(!AC_LOAD)
		AC_temp <= AC_temp;
end
assign AC_TOCPU = AC_temp;
always
begin
	if(AC_BUS)
		AC_OUT = AC_temp;
	else if(!AC_BUS)
		AC_OUT = 8'bz;
end



endmodule 