// Parallel IN Parallel OUT Shift Register
// Created by Nitheesh Kumar - Aug 03 2020

module PIPO (
	input [3:0] parallel_in,
	input clk,
	output reg [3:0] parallel_out);

always @(posedge clk) begin

parallel_out <= parallel_in;

end

endmodule
