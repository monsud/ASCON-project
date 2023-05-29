`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 01:04:41
// Design Name: 
// Module Name: ascon_deserializer
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

module ascon_deserializer #(parameter int NUM_CHUNKS = 4)(
  input wire clk,
  input wire rst,
  input wire [31:0] data_in [NUM_CHUNKS-1:0],
  output wire [127:0] data_out
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
      shift_reg <= {data_in[NUM_CHUNKS-1], data_in[NUM_CHUNKS-2], data_in[NUM_CHUNKS-3], data_in[NUM_CHUNKS-4]};
    else if (counter != 2'b00)
      shift_reg <= {shift_reg[95:0], data_in[NUM_CHUNKS-1]};
  end

  assign data_out = shift_reg;

endmodule

