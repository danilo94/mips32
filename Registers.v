module Registers(input clk,
input [4:0] rs,
input [4:0] ra,
input [4:0] we,
input [31:0] writeData,
input write,
output wire [31:0]readDatars,
output wire [31:0]readDatara);


reg [31:0] registers[0:31];




always @(posedge clk) begin

	if (write) begin
	  registers[we] = writeData;
	end


end 



assign readDatars=registers[rs];
assign readDatara=registers[ra];













endmodule
