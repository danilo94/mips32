

module AluControl(
input clk,
input [1:0]ALUOp,
input [5:0] funct,
output reg [2:0] aluControl
);
always @(posedge clk) begin
	case(ALUOp)
		2'b00: begin // Load Or Store Instruction
			aluControl <= 3'b010;
		end
		2'b01:begin // Branch Instructions
			aluControl <= 3'b110;
		end
		2'b10:begin // R Type Instructions
 			case(funct)
   				6'b100000:begin // ADD 
					aluControl <= 3'b010;
   				end 
				6'b100010:begin //SUB
					aluControl <= 3'b110;
				end	
				6'b100100:begin //AND
					aluControl <= 3'b000;
				end
				6'b100101:begin //OR
					aluControl <= 3'b001;
				end
				6'b101010:begin //SLT
				 	aluControl <= 3'b111;
				end
 			endcase
		end		
	endcase
end 
endmodule
