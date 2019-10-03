module signalextend (
input [15:0] value,
output wire [31:0] extendedvalue);
assign extendedvalue = value << 16 ;
endmodule
