`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:39:12
// Design Name: 
// Module Name: ascon_permutation
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


module ascon_permutation (
  input clk, rst,
  input [127:0] state,
  output reg [127:0] perm_state
);

  always @(posedge clk, posedge rst) begin
    if (rst) begin
      perm_state <= 128'h0;
    end
    else begin
      perm_state[31:0] <= state[31:0];
      perm_state[63:32] <= state[95:64];
      perm_state[95:64] <= state[63:32];
      perm_state[127:96] <= state[127:96];
      perm_state[63:0] <= perm_state[63:0];
      perm_state[127:64] <= perm_state[127:64];
    end
  end

endmodule


