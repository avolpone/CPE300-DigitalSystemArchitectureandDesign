module decoder_time( T0, T1, T2, T3, T4, T5, T6, T7, COUNT );

input [2:0] COUNT;
output reg T0, T1, T2, T3, T4, T5, T6, T7;

always
begin
    case (COUNT)
      4'b000 : begin T0 = 1; T1 = 0; T2 = 0; T3 = 0; T4 = 0; T5 = 0; T6 = 0; T7 = 0; end
      4'b001 : begin T0 = 0; T1 = 1; T2 = 0; T3 = 0; T4 = 0; T5 = 0; T6 = 0; T7 = 0; end
      4'b010 : begin T0 = 0; T1 = 0; T2 = 1; T3 = 0; T4 = 0; T5 = 0; T6 = 0; T7 = 0; end
      4'b011 : begin T0 = 0; T1 = 0; T2 = 0; T3 = 1; T4 = 0; T5 = 0; T6 = 0; T7 = 0; end
      4'b100 : begin T0 = 0; T1 = 0; T2 = 0; T3 = 0; T4 = 1; T5 = 0; T6 = 0; T7 = 0; end
      4'b101 : begin T0 = 0; T1 = 0; T2 = 0; T3 = 0; T4 = 0; T5 = 1; T6 = 0; T7 = 0; end
      4'b110 : begin T0 = 0; T1 = 0; T2 = 0; T3 = 0; T4 = 0; T5 = 0; T6 = 1; T7 = 0; end
      4'b111 : begin T0 = 0; T1 = 0; T2 = 0; T3 = 0; T4 = 0; T5 = 0; T6 = 0; T7 = 1; end
    endcase
end

endmodule 
