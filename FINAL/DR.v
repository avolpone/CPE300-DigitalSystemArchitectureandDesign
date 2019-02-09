module DR(DR_OUT_H, DR_OUT_L, DR_temp, BUS, DR_BUS_H, DR_BUS_L, DR_LOAD, CLK);

	output reg [7:0] DR_OUT_H, DR_OUT_L;

	input [7:0] BUS; 
	input CLK, DR_LOAD, DR_BUS_H, DR_BUS_L;
	
	output reg [7:0] DR_temp;
	
	always @(posedge CLK)
	begin
	
		if(DR_LOAD)
		begin 
			DR_temp <= BUS[7:0];
		end
	
	end

	always
	begin
		if(DR_BUS_H && DR_BUS_L)
			begin 
				DR_OUT_H = DR_temp;
				DR_OUT_L = DR_temp;
			end
		else if(DR_BUS_H && !DR_BUS_L)
			begin 
				DR_OUT_H = DR_temp;
				DR_OUT_L = 8'bz;
			end
		else if(!DR_BUS_H && DR_BUS_L)
			begin 
				DR_OUT_H = 8'bz;
				DR_OUT_L = DR_temp;
			end
		else if(!DR_BUS_H && !DR_BUS_L)
			begin 
				DR_OUT_H = 8'bz;
				DR_OUT_L = 8'bz;
			end
	end
	
endmodule 