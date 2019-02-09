module BCD_8bit(B_IN, HUNDREDS, TENS, ONES);

input [7:0] B_IN;
output reg [3:0] HUNDREDS;
output reg [3:0] TENS;
output reg [3:0] ONES;

integer i;

always @(B_IN)
begin
HUNDREDS = 4'd0;
TENS 		= 4'd0;
ONES		= 4'd0;

for(i=7; i>=0; i=i-1)
begin
	if(HUNDREDS >= 5)
		HUNDREDS = HUNDREDS + 3;
	if(TENS >= 5)
		TENS = TENS + 3;
	if(ONES >= 5)
		ONES = ONES + 3;
		
	HUNDREDS 	= HUNDREDS << 1;
	HUNDREDS[0] = TENS[3];
	TENS			= TENS << 1;
	TENS[0]		= ONES[3];
	ONES			= ONES << 1;
	ONES[0]		= B_IN[i];
	
end 
end 

endmodule 
