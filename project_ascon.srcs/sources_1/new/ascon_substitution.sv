`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:49:18
// Design Name: 
// Module Name: ascon_substitution
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


module ascon_substitution (
  input clk,
  input rst,
  input [127:0] state,
  output [127:0] sub_state
);

  reg [127:0] temp;

  always @ (posedge clk, posedge rst) begin
    if (rst) begin
      temp <= '0;
    end else begin
      temp[63:0] <= state[63:0] ^ state[127:64] ^ state[127:96] & state[127:97] ^ state[127:120] & state[127:125];
      temp[127:64] <= state[127:64] ^ state[63:0] ^ state[63:32] & state[63:34] ^ state[63:56] & state[63:61];
    end
  end

  assign sub_state = temp;

endmodule

