// BCD to 7-Segment Display Code Converter
// Created by Nitheesh Kumar - Aug 03 2020

module bcd_to_segment7(
	input [3:0] bcd,
	output reg [6:0] seg);

always @(bcd)
    begin
        case (bcd)
            0 : seg = 7'b0000001;
            1 : seg = 7'b1001111;
            2 : seg = 7'b0010010;
            3 : seg = 7'b0000110;
            4 : seg = 7'b1001100;
            5 : seg = 7'b0100100;
            6 : seg = 7'b0100000;
            7 : seg = 7'b0001111;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0000100;
            // when the bcd digit is not a decimal number switch off the display
            default : seg = 7'b1111111; 
        endcase
    end
    
endmodule
