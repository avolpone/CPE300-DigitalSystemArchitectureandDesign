module counter_time( COUNT, E, CLK, CLEAR );

//----------Output Ports--------------
output reg [2:0] COUNT;
//------------Input Ports--------------
input E, CLK, CLEAR;
//------------Internal Variables--------
//-------------Code Starts Here-------
always @(posedge CLK)
if (CLEAR) 
begin
  COUNT <= 3'b0 ;
end 
else if(E) 
begin
  COUNT <= COUNT + 1;
end

endmodule 
