// D Fliflop
// Created by Nitheesh Kumar - Aug 03 2020

module d_flipflop ( 
	input D,clk,
	output reg Q);

always @(posedge clk) begin

Q <= D;

end

endmodule
