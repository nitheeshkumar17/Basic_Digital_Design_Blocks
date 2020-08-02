// 1:4 DE-MUX using Structural Model
// Created by Nitheesh Kumar - Aug 01 2020

module DeMux_1x4_str (
	input x,
	input [1:0] sel,
	output [3:0] D);

and A1 (D[0],x,~sel[1],~sel[0]);
and A2 (D[1],x,~sel[1],sel[0]);
and A3 (D[2],x,sel[1],~sel[0]);
and A4 (D[3],x,sel[1],sel[0]);

endmodule
