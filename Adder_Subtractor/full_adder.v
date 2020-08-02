// Full Adder
// Created by Nitheesh Kumar - Aug 02 2020

module full_adder (
	input a,b,cin,
	output sum,cout);

assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
