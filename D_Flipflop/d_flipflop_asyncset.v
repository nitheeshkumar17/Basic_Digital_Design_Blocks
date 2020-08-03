// D Fliflop with Asynchronous Preset
// Created by Nitheesh Kumar - Aug 03 2020

module d_flipflop_asyncset (
	input D, // Data Input
	input clk, // Clock Signal
	input preset, // Asynchronous Set
	output reg Q); // Data Output

always @(posedge clk or posedge preset) begin

if (preset == 1'b1) 
Q <= 1'b1;
else Q <= D;

end

endmodule
