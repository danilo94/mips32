

module Control(
input clk,
input [5:0] opcode,
output reg PCWrite,
output reg MemRead,
output reg MemWrite,
output reg MemtoReg,
output reg [1:0] PCSource,
output reg [1:0]AluOp,
output reg AluSrc,
output reg regWrite,
output reg regdst,
output reg branch
);




always @(posedge clk) begin


case (opcode) 
 0: begin // Type R Instruction
 $display(" R Tipe Instruction" );
 AluSrc <=0; 
 AluOp <= 2'b10;
 regdst <= 1;
 regWrite<=1;
 MemRead<=0;
 MemWrite<=0;
 branch<=0;
 end

 default: begin
 $display("unknown instruction");
 end




endcase




end












endmodule
