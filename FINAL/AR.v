module AR(AR_OUT, BUS, AR_LOAD, AR_INC, CLK);

	output reg [7:0] AR_OUT; 

	input [15:0] BUS; 
	input CLK, AR_LOAD, AR_INC;
	
	//reg [7:0] AR_temp;
	
	initial
		AR_OUT = 8'b0;
	
	always @(posedge CLK)
	begin
		
		if(AR_INC)
			AR_OUT = AR_OUT + 1;
		else if(AR_LOAD)
			AR_OUT = BUS[7:0];
		else if(!AR_LOAD)
			AR_OUT = 8'bz;
	
	end
	
endmodule 
