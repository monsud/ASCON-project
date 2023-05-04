`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 19:35:00
// Design Name: 
// Module Name: ascon_key_schedule
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

module ascon_key_schedule (
  input clk,
  input rst,
  input reg [127:0] state,
  input [127:0] key,
  output reg [127:0] state_out
);

  reg [127:0] w[16];
  reg [2:0] i;

  // Generate the 16 round keys
  always @ (posedge clk, posedge rst) begin
    if (rst) begin
      w[0] <= key ^ 128'h00000000000000000000000000000002;
      for (i = 0; i < 2; i = i + 1) begin : gen_round_keys
        w[4*i+1] <= w[4*i] ^ state;
        w[4*i+2] <= w[4*i+1] ^ key;
        w[4*i+3] <= w[4*i+2] ^ state;
        state <= w[4*i+3];
      end
      w[8] <= w[7] ^ key;
      w[9] <= w[8] ^ state;
      w[10] <= w[9] ^ key;
      w[11] <= w[10] ^ state;
      w[12] <= w[11] ^ key;
      w[13] <= w[12] ^ state;
      w[14] <= w[13] ^ key;
      w[15] <= w[14] ^ state;
    end else begin
      state_out <= state;
    end
  end
  
endmodule

