module SISO(
  input data_in,clk,rst,
  output reg data_out);
  
reg [0:3] SISO_reg;

always@(posedge clk) begin
  if (rst==1'b1) begin
    SISO_reg<=4'b0;
    data_out<=1'b0;
  end
  else begin
    SISO_reg[0]<=data_in;
    SISO_reg[1]<=SISO_reg[0];
    SISO_reg[2]<=SISO_reg[1];
    SISO_reg[3]<=SISO_reg[2];
    data_out<=SISO_reg[3];
  end
end

endmodule