// 2:4 Decoder
// Created by Nitheesh Kumar - Aug 02 2020

module dec2_4 (
	input a, b, en,
	output y0, y1, y2, y3);

assign y0 = (~a) & (~b) & en;
assign y1 = (~a) & b & en;
assign y2 = a & (~ b) & en;
assign y3 = a & b & en;

endmodule
