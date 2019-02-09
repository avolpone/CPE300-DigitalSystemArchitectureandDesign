module counter_time( COUNT, E, CLK, CLEAR);

//----------Output Ports--------------
output reg [2:0] COUNT;
//------------Input Ports--------------
input E, CLK, CLEAR;
//------------Internal Variables--------
//-------------Code Starts Here-------
always @(posedge CLK)

begin

if (CLEAR == 1) 
  COUNT <= 3'b0 ;
else if(E == 1) 
  COUNT <= COUNT + 1;
else if (E == 0)
  COUNT <= COUNT;
  
end
endmodule 
