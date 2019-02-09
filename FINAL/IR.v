module IR(IR_TOCU, IR_FEED, IR_LOAD, CLK);

	input [7:0] IR_FEED; 
	input CLK, IR_LOAD;

	reg [7:0] IR;
	output [7:0] IR_TOCU;
	
	always @(posedge CLK)
	begin
	
		if(IR_LOAD)
			IR = IR_FEED[7:0];
		//else if (!IR_LOAD)
		//	IR = 8'bzzzzzzzz;
	
	end
	
	assign IR_TOCU = IR;
	
endmodule 