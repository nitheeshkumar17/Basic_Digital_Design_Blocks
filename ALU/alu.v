// Arithematic Logic Unit (ALU)
//Created by Nitheesh Kumar - Aug 02 2020

module alu(
           input [7:0] a,b,  // ALU 8-bit Inputs                 
           input [3:0] alu_sel,// ALU Selection
           output reg [7:0] alu_out, // ALU 8-bit Output
           output cout // Carry Out Flag
    );

    wire [8:0] tmp;
    assign tmp = {1'b0,a} + {1'b0,b};
    assign cout = tmp[8]; // Carryout flag

    always @(*)
    begin
        case(alu_sel)
        4'b0000: // Addition
           alu_out = a + b ; 
        4'b0001: // Subtraction
           alu_out = a - b ;
        4'b0010: // Multiplication
           alu_out = a * b;
        4'b0011: // Division
           alu_out = a/b;
        4'b0100: // Logical shift left
           alu_out = a<<1;
         4'b0101: // Logical shift right
           alu_out = a>>1;
         4'b0110: // Rotate left
           alu_out = {a[6:0],a[7]};
         4'b0111: // Rotate right
           alu_out = {a[0],a[7:1]};
          4'b1000: //  Logical and 
           alu_out = a & b;
          4'b1001: //  Logical or
           alu_out = a | b;
          4'b1010: //  Logical xor 
           alu_out = a ^ b;
          4'b1011: //  Logical nor
           alu_out = ~(a | b);
          4'b1100: // Logical nand 
           alu_out = ~(a & b);
          4'b1101: // Logical xnor
           alu_out = ~(a ^ b);
          4'b1110: // Greater comparison
           alu_out = (a > b) ? 8'd1 : 8'd0;
          4'b1111: // Equal comparison   
           alu_out = (a == b) ? 8'd1 : 8'd0;
          default: alu_out = a + b ; 
        endcase
    end

endmodule
