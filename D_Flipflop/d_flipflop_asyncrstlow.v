// D Fliflop with Asynchronous Reset Low
// Created by Nitheesh Kumar - Aug 03 2020

module d_flipflop_asyncrstlow (
	input D, // Data Input
	input clk, // Clock Signal
	input reset, // Asynchronous Reset Low
	output reg Q); // Data Output

always @(posedge clk or negedge reset) begin

if (reset == 1'b0) 
Q <= 1'b0;
else Q <= D;

end

endmodule
