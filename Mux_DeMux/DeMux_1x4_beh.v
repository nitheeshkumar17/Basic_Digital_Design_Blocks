// 1:4 DE-MUX Behavioral Model
// Created by Nitheesh Kumar - Aug 01 2020

module DeMux_1x4_beh (
	input A,
	input [1:0] sel,
	output reg [3:0] Y);

always @(sel or A) begin
case (sel)
2'b00 : begin Y[0] <= A; Y[3:1] <= 3'b0; end
2'b01 : begin Y[1] <= A; Y[3:2] <= 2'b0; Y[0] <= 1'b0; end
2'b10 : begin Y[2]<= A; Y[3] <= 1'b0; Y[1:0] <= 1'b0; end
2'b11 : begin Y[3]<= A; Y[2:0] = 3'b0; end
default : Y<= 4'b0;
endcase
end

endmodule
