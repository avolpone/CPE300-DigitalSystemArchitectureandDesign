module  muxFOUR_ALUS7(
ZERO,
ONE, 
SEL, 
OUT);

input [7:0] ZERO, ONE;
input SEL;

output reg [7:0] OUT;

always @(*)
begin
 case(SEL) 
    0 : OUT = ZERO;
    1 : OUT = ONE;
 endcase 
end

endmodule 
