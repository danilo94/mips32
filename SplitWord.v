
/*
 SplitWord MIPS32 
 Designed by: danilo94
This module only split a word into small pieces to feed other modules
*/



module splitWord(
input [31:0] word,
output [5:0] opcode,
output [4:0] rs,
output [4:0] rt,
output [4:0] rd, 
output [4:0] shamt,
output [5:0] funct,
output [15:0] address
output [25:0] jumpAddress;
);




assign op = word[31:26];
assign rs = word[25:21];
assign rt = word[20:16];
assign rd = word [15:11];
assign shamt = word[10:6];
assign funct = word[5:0];
assign address = word[15:0];
assign jumpAddress = word[25:0];



endmodule
