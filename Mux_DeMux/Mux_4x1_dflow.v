// 4:1 MUX using Truth Table (Data-Flow)
// Created by Nitheesh Kumar - Aug 01 2020

module Mux_4x1_dflow (
	input A,B,C,D,
	input [1:0] sel,
	output Y);

assign Y = A && ~sel[0] && ~sel[1] + B && ~sel[1] && sel[0]
         + C && sel[1] && ~sel[0] + D && sel[1] && sel[0];

endmodule
