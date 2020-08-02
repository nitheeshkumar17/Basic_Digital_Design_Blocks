// 8:1 MUX in Behavioral Modeling
// Created by Nitheesh Kumar - Aug 01 2020

module Mux_8x1_beh (
	input [7:0] A,
	input [2:0] sel,
	output reg Y);

always @(sel or A) begin
case (sel)
3'b000 : Y<= A[0];
3'b001 : Y<= A[1];
3'b010 : Y<= A[2];
3'b011 : Y<= A[3];
3'b100 : Y<= A[4];
3'b101 : Y<= A[5];
3'b110 : Y<= A[6];
3'b111 : Y<= A[7];
default : Y<= 1'b0;
endcase
end

endmodule
