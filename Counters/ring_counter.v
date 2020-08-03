// 4-Bit Ring Counter
// Created by Nitheesh Kumar - Aug 03 2020

module ring_counter(
	input clk, // Clock Signal
	input reset, // Reset Signal
	output reg [3:0] count); // Counter Output

always @(posedge clk or posedge reset) begin
if(reset) //when Reset is high 
count = 4'b0001;  //The Count value is reset to "0001". 
else count = {count[2:0],count[3]}; //Left shift the Count value.  
end 
    
endmodule
