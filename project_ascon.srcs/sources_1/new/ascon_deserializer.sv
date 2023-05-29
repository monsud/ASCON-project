`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2023 19:32:59
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

module ascon_deserializer (
  input wire clk,
  input wire rst,
  input wire [31:0] chunk_in [3:0],
  output wire [127:0] data_out
);
  reg [127:0] reg_data;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      reg_data <= 0;
    end else begin
      reg_data <= {chunk_in[3], chunk_in[2], chunk_in[1], chunk_in[0]};
    end
  end

  assign data_out = reg_data;
endmodule

