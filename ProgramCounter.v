module PC(input clk,
input [31:0] pc,
output reg [31:0] newPC, input isJump,input rst);
reg counter[31:0];


always @(posedge clk) begin

if (rst) begin
 counter <= 0;
end

else begin



end 


end 









endmodule
