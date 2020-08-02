// Gray to Binary Code Converter
// Created by Nitheesh Kumar - Aug 02 2020

module gray_to_bin #(parameter Width = 2) (
	input [Width-1:0] a_gray,
	output [Width-1:0] a_bin);

assign a_gray[Width-1] = a_bin[Width-1];

genvar i;

generate
	for (i = Width-2 ; i >= 0 ; i = i-1) begin
		xor X1 (a_bin[i], a_bin[i+1], a_gray[i]);
	end
endgenerate

endmodule
