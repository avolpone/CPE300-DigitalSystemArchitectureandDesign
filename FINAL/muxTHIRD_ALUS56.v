module  muxTHIRD_ALUS56(
AC,
BUS, 
ALUS5,
ALUS6, 
OUT);

input [7:0] AC, BUS;
input ALUS5, ALUS6;

output reg [7:0] OUT;

always @(*)
begin

if(!ALUS5 & !ALUS6)
	OUT = (AC & BUS);
else if(!ALUS5 & ALUS6)
	OUT = (AC | BUS);
else if(!ALUS5 & ALUS6)
	OUT = (AC ^ BUS);
else if(!ALUS5 & ALUS6)
	OUT = (~AC);
	
end

endmodule 
