// 1:4 DE-MUX Behavioral Model
// Created by Nitheesh Kumar - Aug 01 2020

module DeMux_1x4_beh (
	input A,
	input [1:0] sel,
	output reg [3:0] Y);

always @(sel or A) begin
case (sel)
2'b00 : Y[0]<= A;
2'b01 : Y[1]<= A;
2'b10 : Y[2]<= A;
2'b11 : Y[3]<= A;
default : Y<= 4'b0;
endcase
end

endmodule
