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


// Test Case 3 ( Reading and Writting Register Memory )


initial begin
rst=1;
rs=0;
ra=1;
we=2;
clk=0;
pcJump=128;
write=0;
#2 rst = 0;
write = 1;

#2 write =0;
rs=2;

#1 rs=0;



end 






always
 #1 clk = ~clk;


initial 
#100 $finish;

initial begin
  //PC
 // $monitor("timestamp: %d clk: %d Pc: %d isJump: %d rst: %d ",$time,clk,newPc,isJump,rst);
 $monitor("timestamp: %d clk: %d rs: %d ra: %d we: %d write: %d Data rs: %d rst: %d",$time,clk,rs,ra,we,write,readDatars,rst);

end



endmodule
