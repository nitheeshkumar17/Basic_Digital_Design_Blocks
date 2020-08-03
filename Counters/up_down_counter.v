// 4-Bit Up-Down Counter
// Created by Nitheesh Kumar - Aug 03 2020

module up_down_counter (
	input clk, // Clock Signal
	input reset, // Reset Signal
	input up_down, // Select Signal
	output reg [3:0] count); // Counter Output

always @(posedge clk) begin

if (reset) begin
count <= 4'b0;
end
else begin
if (up_down) begin
count <= count+1; // for every clock cycle counter value incremented by 1
end
else begin 
count <= count-1; // when up_down == 0 the count decremented by 1 for every clock cycle
end
end

end

endmodule
