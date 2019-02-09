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
    1'b0 : OUT = ZERO;
    1'b1 : OUT = ONE;
 endcase 
end

endmodule 
