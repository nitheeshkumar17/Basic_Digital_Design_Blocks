// Full Adder using Structural Modeling
// Created by Nitheesh Kumar - Aug 02 2020

module full_adder_str (
	input a,b,cin,
	output sum,cout);

wire w1, w2, w3;

xor X1 (w1, a, b);
xor X2 (sum, w1, cin);
and A1 (w2, a, b);
and A2 (w3, w1, cin);
or O1 (cout, w2, w3);

endmodule
