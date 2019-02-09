module MEMTRI(OUT, INPUT, E);

input [7:0] INPUT;
input E; 

output [7:0] OUT;
reg [7:0] OUT;

always
if(E == 1)
	OUT = INPUT;
else
	OUT = 8'b00000000;

endmodule 