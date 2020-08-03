// Serial IN Parallel OUT Shift Register
// Created by Nitheesh Kumar - Aug 03 2020

module SIPO(
	input clk,serial_in,
	output reg [3:0] parallel_out);

always @(posedge clk)
begin
parallel_out = {parallel_out[2:0], serial_in};
end

endmodule
