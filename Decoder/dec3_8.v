// 3:8 Decoder
// Created by Nitheesh Kumar - Aug 02 2020

module dec3_8 (
	input a, b, c, en,
	output d0, d1, d2, d3, d4, d5, d6, d7);

assign d0 = (~a & ~b & ~c & en),
	d1 = (~a & ~b & c & en),
	d2 = (~a &b & ~c & en),
	d3 = (~a &b & c & en),
	d4 = (a & ~b & ~c & en),
	d5 = (a & ~b & c & en),
	d6 = (a & b & ~c & en),
	d7 = (a & b & c & en);

endmodule
