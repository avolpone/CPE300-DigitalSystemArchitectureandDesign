//-----------------------------------------------------
// Design Name : decoder_using_case
// File Name   : decoder_using_case.v
// Function    : decoder using case
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module decoder_op( INOP, ILDAC, ISTAC, IMVAC, IMOVR, IJUMP, IJMPZ, IJPNZ, IADD, ISUB, IINAC, ICLAC, IAND, IOR, IXOR, INOT, IR, FULL_RESET );

input [7:0] IR;
input FULL_RESET;
output reg INOP, ILDAC, ISTAC, IMVAC, IMOVR, IJUMP, IJMPZ, IJPNZ, IADD, ISUB, IINAC, ICLAC, IAND, IOR, IXOR, INOT;

reg E;

always
begin

E = ~|(IR[7:4]);

if(!FULL_RESET)
begin
if(E == 1)
begin
    case (IR[3:0])
      4'b0000 : begin INOP = 1; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
		4'b0001 : begin INOP = 0; ILDAC = 1; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
      4'b0010 : begin INOP = 0; ILDAC = 0; ISTAC = 1; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
      4'b0011 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 1; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
		
      4'b0100 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 1; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
		4'b0101 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 1; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
      4'b0110 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 1; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
      4'b0111 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 1; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
		
      4'b1000 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 1; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
		4'b1001 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 1; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
      4'b1010 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 1; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
      4'b1011 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 1; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
		
      4'b1100 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 1; IOR = 0; IXOR = 0; INOT = 0; end
		4'b1101 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 1; IXOR = 0; INOT = 0; end
      4'b1110 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 1; INOT = 0; end
      4'b1111 : begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 1; end
		endcase
end
else if(E == 0)
begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
end

else if(FULL_RESET)
	begin INOP = 0; ILDAC = 0; ISTAC = 0; IMVAC = 0; IMOVR = 0; IJUMP = 0; IJMPZ = 0; IJPNZ = 0; IADD = 0; ISUB = 0; IINAC = 0; ICLAC = 0; IAND = 0; IOR = 0; IXOR = 0; INOT = 0; end
	
end
endmodule 

