// D Latch with Enable and Active Low Reset
// Created by Nitheesh Kumar - Aug 03 2020

module d_latch (
	input D, // Data Input
	input en, // Enable Signal
	input reset, // Asynchronous Reset Low
	output reg Q); // Data Output

always @(en or reset or D) begin

if (reset == 1'b0) 
Q <= 1'b0;
else if (en) 
Q <= D;
else Q <= Q; // Latch when en == 0

end

endmodule
