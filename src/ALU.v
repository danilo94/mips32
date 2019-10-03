



module ALU(
input [31:0] a,
input [31:0] b,
input [2:0] control,
input rst,
output reg [31:0] result,
output reg zero,
output reg underflow,
output reg overflow
);
always @(*) begin
	if (rst) begin
		result <=0;
		zero <=0;
		underflow<=0;
		overflow<=0;
	end
	else begin
		case (control)
			3'b010: begin // Simple SUM
				result <= a + b;
			end
			3'b110: begin // Simple SUB
				result <= a-b;
				if (a-b==0) begin
					zero = 1'b1;
				end
				else begin
					zero = 1'b0;
				end
			end	
			3'b000: begin // AND
				result <= a & b;
			end
			3'b001: begin // OR
				result <= a | b;
			end
	
			3'b111: begin // SLT
				if (a<b) begin
					result <= 32'b1111111111111111111111111111111;
				end
				else begin
					result <= 0;
				end
			end
		endcase
	end
end

endmodule
