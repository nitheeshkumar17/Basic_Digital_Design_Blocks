// 4:1 MUX using Conditional Operator
// Created by Nitheesh Kumar - Aug 01 2020

module Mux_4x1_cond #(parameter Width = 2) (
	input [Width-1:0] A,B,C,D,
	input [1:0] s,
	output [Width-1:0] Y);

assign Y = ~s[1] ? (~s[0] ? A : B) : (~s[0] ? C : D);

endmodule
