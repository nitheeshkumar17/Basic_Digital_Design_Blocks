// 4-Bit Adder using Full Adders
// Created by Nitheesh Kumar - Aug 02 2020

module adder_4b_ins (
	input [3:0] a,b,
	input cin,
	output [3:0] sum,
	output cout);

wire [2:0] c; // Intermediate Carry

full_adder FA1 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c[0]));
full_adder FA2 (.a(a[1]), .b(b[1]), .cin(c[0]), .sum(sum[1]), .cout(c[1]));
full_adder FA3 (.a(a[2]), .b(b[2]), .cin(c[1]), .sum(sum[2]), .cout(c[2]));
full_adder FA4 (.a(a[3]), .b(b[3]), .cin(c[2]), .sum(sum[3]), .cout(cout));

endmodule
