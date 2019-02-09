module R(R_OUT, BUS, R_BUS, R_LOAD, CLK);

	output reg [7:0] R_OUT; 

	input [7:0] BUS; 
	input CLK, R_LOAD, R_BUS;
	
	reg [7:0] R_temp;
	
	always @(posedge CLK)
	begin
	
		if(R_LOAD)
		begin 
			R_temp <= BUS[7:0];
		end
	
	end
	
	always
	begin
		if(R_BUS)
			R_OUT = R_temp;
		else if(!R_BUS)
			R_OUT = 8'bz;
	end
	
endmodule 