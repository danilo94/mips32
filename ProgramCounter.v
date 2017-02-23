/*
 Program Counter MIPS32 
 Designed by: danilo94
 This module have four inputs and one output used to detect jumps and load instructions to datapath
*/
module PC(input clk,
input [31:0] pc,
output reg [31:0] newPC, input isJump,input rst);
reg counter[31:0];


always @(posedge clk) begin

if (rst) begin
 counter <= 0;
end

else begin
counter <= counter + 4;
end 


end 









endmodule
