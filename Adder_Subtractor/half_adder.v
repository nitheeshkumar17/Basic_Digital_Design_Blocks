// Half Adder
// Created by Nitheesh Kumar - Aug 02 2020

module half_adder (
	input a,b,
	output s,cout);

assign s = a ^ b;
assign cout = a & b;

endmodule
