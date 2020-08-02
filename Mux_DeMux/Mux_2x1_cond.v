// 2:1 MUX using Conditional Operator
// Created by Nitheesh Kumar - Aug 01 2020

module Mux_2x1_cond #(parameter Width = 2) (
	input [Width-1:0] A,B,
	input s0,
	output [Width-1:0] Y);

assign Y = s0 ? A : B;

endmodule
