/*
 Program Counter MIPS32 
 Designed by: danilo94
 This module have four inputs and one output used to detect jumps and load instructions to datapath
*/
module PC(

input clk,
input [31:0] pc,
input isJump,
input rst,
output reg [31:0] newPC);

reg [31:0] counter=0;


always @(posedge clk) begin

if (rst) begin
 	counter <= 0;
end

else begin
	if (isJump) begin
	  counter <= pc;
	end
	else begin
		counter <= counter + 4;
	end
end 
  newPC <= counter;

end 









endmodule
