// N-Bit Shift Register
// Created by Nitheesh Kumar - Aug 03 2020

module n_shift_reg #(parameter N=5) (
	input d,
	input clk, // Clock Signal
	input reset, // Rest Signal
	input en, // Shift Enable
	input dir, // Direction Select
	output reg [N-1:0] shift_out);

always @(posedge clk) begin

if (~reset)
shift_out <= 0;
else begin
if (en) begin
case (dir)
0 : shift_out <= {shift_out[N-2:0],d}; // Left Shift
1 : shift_out <= {d,shift_out[N-1:1]}; // Right Shift
endcase
end
else shift_out <= shift_out;
end

end

endmodule
