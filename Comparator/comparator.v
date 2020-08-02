// 4-Bit Comparator
// Created by Nitheesh Kumar - Aug 02 2020

module comparator (
	input [3:0] a, b,
	output reg less, equal, greater);

always @(a or b) begin

if (a > b) begin
greater = 1'b1;
less = 1'b0;
equal = 1'b0;
end

else if (a == b) begin
greater = 1'b0;
less = 1'b0;
equal = 1'b1;
end

else begin
greater = 1'b0;
less = 1'b1;
equal = 1'b0;
end

end

endmodule
