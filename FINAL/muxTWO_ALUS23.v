module  muxTWO_ALUS23(
BUS, 
ALUS2,
ALUS3, 
OUT);

input [7:0] BUS;
input ALUS2, ALUS3;

output reg [7:0] OUT;

always @(*)
begin
 case({ALUS2,ALUS3}) 
    00 : OUT = 8'b0;
    01 : OUT = BUS;
	 10 : OUT = ~BUS;
 endcase 
end

endmodule 
