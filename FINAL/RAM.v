module RAM(
input clk,      
input [7:0] address, 
inout [7:0]  data, //  bi-directional
input  we, // write Enable/Read Enable
input  MEMBUS, // output Enable
input BUSMEM );  //input Enable 

initial
begin
	$readmemh("meminit.mif",mem);
end

parameter DATA_WIDTH = 8 ;
parameter ADDR_WIDTH = 8 ;
parameter RAM_DEPTH = 256;
reg [7:0] data_out ;
reg [7:0] mem [0:255];

assign data = (MEMBUS && !we) ? data_out: 8'bz; 
always @ (posedge clk)
begin 
   if (we && BUSMEM) begin
       mem[address] = data; //writing data to Memory
   end
end
always @ (MEMBUS)
begin 
  if (!we)
  begin
    data_out = mem[address]; //Reading data from Memory
  end 
end

endmodule 
