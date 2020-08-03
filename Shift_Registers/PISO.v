// Parallel IN Serial OUT Shift Register
// Created by Nitheesh Kumar - Aug 03 2020

module PISO (
	input [3:0] parallel_in,
	input clk,
	input load,
	output reg serial_out);

reg [3:0] PISO_reg;

always @(posedge clk) begin

if (load)
PISO_reg <= parallel_in;
else begin
serial_out <= PISO_reg[3];
PISO_reg <= {PISO_reg[2:0], 1'b0};
end

end

endmodule
