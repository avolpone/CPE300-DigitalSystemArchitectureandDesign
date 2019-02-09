module Z_CHECK(OUT, IN);

input [7:0] IN;
output OUT;
wire OUT;

assign OUT = ~|(IN);


endmodule 
