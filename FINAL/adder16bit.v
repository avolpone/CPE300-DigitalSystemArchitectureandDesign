module adder16bit(A, B, CIN, sum);
input [15:0] A, B;
input CIN;
output [15:0] sum;
reg [15:0] sum;
always @(A or B) begin
sum = A + B + CIN;
end
endmodule