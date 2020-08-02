// 4:1 MUX using Case Statement
// Created by Nitheesh Kumar - Aug 01 2020

module Mux_4x1_beh (
	input [3:0] A,
	input [1:0] sel,
	output reg Y);

always @(sel or A) begin
case (sel)
2'b00 : Y<= A[0];
2'b01 : Y<= A[1];
2'b10 : Y<= A[2];
2'b11 : Y<= A[3];
default : Y<= 1'b0;
endcase
end

endmodule
