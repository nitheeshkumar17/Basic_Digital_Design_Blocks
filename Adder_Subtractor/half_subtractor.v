// Half Subtractor
// Created by Nitheesh Kumar -Aug 02 2020

module half_subtractor(
	input a,b,
	output diff,brrw);

assign diff = a ^ b;
assign brrw = ~a & b;

endmodule
