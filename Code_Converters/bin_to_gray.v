// Binary to Gray Converter
// Created by Nitheesh Kumar - Aug 02 2020

module bin_to_gray #(parameter Width = 2) (
	input [Width-1:0] a_bin,
	output [Width-1:0] a_gray);

genvar i;

generate 
	for (i=0 ; i< Width-1 ; i = i+1) begin
		xor X1 (a_gray[i], a_bin[i], a_bin[i+1]);
	end
endgenerate

assign a_gray[Width-1] = a_bin[Width-1];

endmodule
