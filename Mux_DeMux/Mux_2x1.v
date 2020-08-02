// 2:1 MUX
//Created by Nitheesh Kumar - Aug 01 2020

module mux_2x1(
	input A,B,
	input s0,
	output Y);

wire w1,w2;

and A1 (w1, B, s0);
and A2 (w2, A, ~s0);
or O1 (Y,w1,w2);

endmodule
