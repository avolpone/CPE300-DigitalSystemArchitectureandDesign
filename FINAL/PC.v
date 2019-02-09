module PC(PC_TOCPU, PC_OUT, BUS, PC_BUS, PC_LOAD, PC_INC, PC_RESET, CLK);

	output [15:0] PC_TOCPU; 
	output reg [15:0] PC_OUT; 

	input [15:0] BUS; 
	input CLK, PC_LOAD, PC_INC, PC_BUS, PC_RESET;
	
	reg [15:0] PC_temp;
	
	initial
		PC_temp = 16'b0;
	
	always @(posedge CLK)
	begin
	if(PC_RESET)
			PC_temp = 16'b0;
		else if(PC_LOAD)
			PC_temp <= BUS[15:0];	
		else if(PC_INC)
			PC_temp <= PC_temp + 1;	
	
	end
	
	assign PC_TOCPU = PC_temp;
	
	always
	begin
		if(PC_BUS)
			PC_OUT = PC_temp;
		else if(!PC_BUS)
			PC_OUT = 16'bz;
	end
	

	
endmodule 