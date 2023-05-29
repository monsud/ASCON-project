`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 00:58:40
// Design Name: 
// Module Name: ascon_serializer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ascon_serializer #(parameter int NUM_CHUNKS = 4)(
  input wire clk,
  input wire rst,
  input wire [127:0] data_in,
  output wire [31:0] data_out [NUM_CHUNKS-1:0]
);
  reg [127:0] shift_reg;
  reg [1:0] counter;

  always @(posedge clk or posedge rst) begin
    if (rst)
      counter <= 2'b0;
    else
      counter <= counter + 1'b1;
  end

  always @(posedge clk or posedge rst) begin
    if (rst)
      shift_reg <= '0;
    else if (counter == 2'b00)
      shift_reg <= data_in;
    else if (counter != 2'b00)
      shift_reg <= {shift_reg[95:0], shift_reg[127:96]};
  end

  generate
    genvar i;
    for (i = 0; i < NUM_CHUNKS; i = i + 1) begin : CHUNK_GEN
      assign data_out[i] = shift_reg[(i+1)*32-1 : i*32];
    end
  endgenerate

endmodule
