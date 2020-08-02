// 4-Bit Adder using Concatenation
// Created by Nitheesh Kumar - Aug 02 2020

module adder_4b_cat (
	input [3:0] a,b,
	input cin,
	output reg [3:0] sum,
	output reg cout);

reg [2:0] c; // Intermediate Carry
always @(a or b or cin)
begin

{c[0],sum[0]} = a[0] + b[0] + cin;
{c[1],sum[1]} = a[1] + b[1] + c[0];
{c[2],sum[2]} = a[2] + b[2] + c[1];
{cout,sum[3]} = a[3] + b[3] + c[2];

end

endmodule
