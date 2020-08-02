// Full Adder / Subtractor
// Created by Nitheesh Kumar - Aug 02 2020

module full_adder_subtractor (
	input a,b,cin,
	output sum_diff,cout);

assign {cout,sum_diff} = cin + a + (b ^ cin); // Add if cin = 0, else Sub

endmodule
