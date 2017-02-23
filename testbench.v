`include "ProgramCounter.v"
`include "Registers.v"

module tb ();


reg [31:0] pcJump;
reg isJump;
reg clk;
reg rst;
reg [4:0]rs;
reg [4:0]ra;
reg [4:0]we;
reg write;
output [31:0] newPc;
output [31:0] readDatars;
output [31:0] readDatara;
//PC PC1(clk,pcJump,isJump,rst,newPc);

Registers Registers1(clk,rs,ra,we,pcJump,write,rst,readDatars,readDatara);

/* // Test Case 1 ( Normal Execution without jumps ) // Only Program Counter

initial begin

 clk=0;
 isJump=0;
 rst=1;
#2 rst=0;
end

*/

 // Test Case 2 ( Normal Execution with possible jumps )
/*
initial begin
 pcJump=128;
 clk=0;
 isJump=0;
 rst=1;
#2 rst=0;
#10 isJump=1;   
#2  isJump=0;
end
*/








always
 #1 clk = ~clk;


initial 
#100 $finish;

initial begin
  $monitor("timestamp: %d clk: %d Pc: %d isJump: %d rst: %d ",$time,clk,newPc,isJump,rst);


end



endmodule
