// Full Adder / Subtractor
// Created by Nitheesh Kumar - Aug 02 2020

module full_adder_subtractor (
	input a,b,cin,
	output reg sum_diff,cout);

// assign sum_diff = cin ^ a ^ (b ^ cin); // Add if cin = 0, else Sub
// assign cout = (cin & a) | (a & (b ^ cin)) | ((b ^ cin) & cin);

always @* begin

if (cin == 1'b0)
{cout,sum_diff} <= a + b + cin;
else
{cout,sum_diff} <= a - b - cin;

end

endmodule
