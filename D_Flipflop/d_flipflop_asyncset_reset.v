// D Fliflop with Asynchronous Preset and Asynchronous Reset Low
// Created by Nitheesh Kumar - Aug 03 2020

module d_flipflop_asyncset_reset (
	input D, // Data Input
	input clk, // Clock Signal
	input preset, // Asynchronous Set
	input reset, //Asynchronous Reset Low
	output reg Q); // Data Output

always @(posedge clk or posedge preset or negedge reset) begin

if (preset == 1'b1) 
Q <= 1'b1;
else if (reset == 1'b0)
Q <= 1'b0;
else Q <= D;

end

endmodule
