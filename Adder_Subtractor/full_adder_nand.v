// Full Adder using only NAND gates
// Created by Nitheesh Kumar - Aug 02 2020

module full_adder_nand (
	input a,b,cin,
	output sum,cout);

wire w1, w2, w3, w4, w5, w6, w7;

nand N1 (w1, a, b);
nand N2 (w3, a, w1);
nand N3 (w2, w1, b);
nand N4 (w4, w3, w2);
nand N5 (w5, w4, cin);
nand N6 (w6, w4, w5);
nand N7 (w7, w5, cin);
nand N8 (cout ,w5, w1);
nand N9 (sum, w6, w7);

endmodule
