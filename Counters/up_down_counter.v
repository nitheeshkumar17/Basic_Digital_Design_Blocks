// 4-Bit Up-Down Counter
// Created by Notheesh Kumar - Aug 03 2020

module up_down_counter (
	input clk, // Clock Signal
	input reset, // Active Low Reset
	input up_down, // Select Signal
	output reg [3:0] count); // Counter Output

always @(posedge clk or negedge reset) begin

if (~reset) 
count <= 4'b0;
else if (up_down)
count <= count+1; // for every clock cycle counter value incremented by 1
else count <= count-1; // when up_down == 0 the count decremented by 1 for every clock cycle
end

endmodule
