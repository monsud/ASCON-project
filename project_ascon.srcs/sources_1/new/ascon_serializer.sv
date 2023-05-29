`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2023 17:59:56
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

module ascon_serializer (
  input wire clk,
  input wire rst,
  input wire [127:0] data_in,
  output wire [31:0] chunk_out [3:0]
);
  reg [31:0] reg_data [3:0];

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      reg_data[0] <= 0;
      reg_data[1] <= 0;
      reg_data[2] <= 0;
      reg_data[3] <= 0;
    end else begin
      reg_data[0] <= data_in[31:0];
      reg_data[1] <= data_in[63:32];
      reg_data[2] <= data_in[95:64];
      reg_data[3] <= data_in[127:96];
    end
  end

  assign chunk_out[0] = reg_data[0];
  assign chunk_out[1] = reg_data[1];
  assign chunk_out[2] = reg_data[2];
  assign chunk_out[3] = reg_data[3];
endmodule



