`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:57:43
// Design Name: 
// Module Name: ascon_truncation
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


module ascon_truncation
(
  input clk,
  input rst,
  input [127:0] state,
  output reg [127:0] ciphertext
);

  always @(posedge clk) begin
    if (rst) begin
      ciphertext <= 0;
    end else begin
      ciphertext <= state[127:0];
    end
  end

endmodule

