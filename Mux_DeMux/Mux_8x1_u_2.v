// 8:1 MUX using 2:1 MUX
//Created by Nitheesh Kumar - Aug 01 2020

module Mux_8x1_u_2 (
	input [7:0] A,
	input [2:0] sel,
	output Y);


// Stage-1

wire w1,w2,w3,w4;
mux_2x1 M1 (.A(A[0]),.B(A[4]),.s0(sel[2]),.Y(w1));
mux_2x1 M2 (.A(A[1]),.B(A[5]),.s0(sel[2]),.Y(w2));
mux_2x1 M3 (.A(A[2]),.B(A[6]),.s0(sel[2]),.Y(w3));
mux_2x1 M4 (.A(A[3]),.B(A[7]),.s0(sel[2]),.Y(w4));

// Stage-2

wire w5,w6;
mux_2x1 M5 (.A(w1),.B(w2),.s0(sel[1]),.Y(w5));
mux_2x1 M6 (.A(w3),.B(w4),.s0(sel[1]),.Y(w6));

// Stage-3

mux_2x1 M7 (.A(w5),.B(w6),.s0(sel[0]),.Y(Y));

endmodule
