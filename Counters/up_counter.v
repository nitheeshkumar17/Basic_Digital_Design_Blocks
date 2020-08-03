// 4-Bit Up Counter
// Created by Notheesh Kumar - Aug 03 2020

module up_counter (
	input clk, // Clock Signal
	input reset, // Active Low Reset
	output reg [3:0] count); // Counter Output

always @(posedge clk or negedge reset) begin

if (~reset)
count <= 4'b0;
else count <= count+1; // for every clock cycle counter value incremented by 1

end

endmodule
