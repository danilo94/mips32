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
 $display(" R Type Instruction" );
   AluSrc <=0; 
   AluOp <= 2'b10;
   regdst <= 1;
   regWrite<=1;
   MemRead<=0;
   MemWrite<=0;
   branch<=0;
   MemtoReg<=0;
 end
 35: begin // Load
   $display(" LOAD" );
   AluSrc <=1; 
   AluOp <= 2'b00;
   regdst <= 1;
   regWrite<=1;
   MemRead<=1;
   MemWrite<=0;
   branch<=0;  
   MemtoReg<=1;
 end
 43: begin // Store
   $display("Store" );
   regdst <= 0;
   AluSrc <=1; 
   MemtoReg<=0;
   regWrite<=0;
   MemRead<=0;
   MemWrite<=1;
   branch<=0;
   AluOp <= 2'b00;
 end
 4: begin // Branch
   $display(" Branch" );
   regdst <= 0;
   AluSrc <=0; 
   MemtoReg<=0;
   regWrite<=0;
   MemRead<=0;
   MemWrite<=0;
   branch<=1;
   AluOp <= 2'b01;
 end 

 default: begin // Do Nothing
 $display("unknown instruction");
 AluSrc <=0; 
 AluOp <= 2'b00;
 regdst <= 0;
 regWrite<=0;
 MemRead<=0;
 MemWrite<=0;
 branch<=0;
 end




endcase




end












endmodule
