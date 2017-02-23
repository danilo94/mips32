`include "ProgramCounter.v"


module tb ();


reg [31:0] pcJump;
reg isJump;
reg clk;
reg rst;
output [31:0] newPc;
PC PC1(clk,pcJump,isJump,rst,newPc);


/* // Test Case 1 ( Normal Execution without jumps ) // Only Program Counter

initial begin

 clk=0;
 isJump=0;
 rst=1;
#2 rst=0;
end

*/

 // Test Case 2 ( Normal Execution with possible jumps )

initial begin
 pcJump=128;
 clk=0;
 isJump=0;
 rst=1;
#2 rst=0;
#10 isJump=1;   
#2  isJump=0;
end









always
 #1 clk = ~clk;


initial 
#100 $finish;

initial begin
  $monitor("timestamp: %d clk: %d Pc: %d isJump: %d rst: %d ",$time,clk,newPc,isJump,rst);


end



endmodule
