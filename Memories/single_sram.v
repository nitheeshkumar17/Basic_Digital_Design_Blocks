// Single Port SRAM - 16x4
// Created by Nitheesh Kumar - Aug 03 2020

module single_sram #(
  parameter DATA_WIDTH=4,          //width of data bus
  parameter ADDR_WIDTH=4           //width of addresses buses
)(
  input  [(DATA_WIDTH-1):0] data,  //data to be written
  input  [(ADDR_WIDTH-1):0] addr,  //address for write/read operation
  input                     we,    //write enable signal
  input                     clk,   //clock signal
  output [(DATA_WIDTH-1):0] q);

  reg [DATA_WIDTH-1:0] mem [2**ADDR_WIDTH-1:0];
  reg [ADDR_WIDTH-1:0] addr_r;

always @(posedge clk) begin //WRITE

if (we)
mem[addr] <= data;

addr_r <= addr;

end

assign q = mem[addr_r]; //READ

endmodule
