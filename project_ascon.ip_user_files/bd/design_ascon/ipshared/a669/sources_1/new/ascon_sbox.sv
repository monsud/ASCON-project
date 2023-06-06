`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2023 18:42:08
// Design Name: 
// Module Name: ascon_sbox
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


module ascon_sbox (
  input [127:0] state_in,
  output [127:0] state_out
);

  reg [127:0] sbox_out;

  always_comb begin
    sbox_out[  31: 0] = ~state_in[ 127:96] & state_in[ 63:32] ^ state_in[  31: 0];
    sbox_out[ 63: 32] = ~state_in[  31: 0] & state_in[ 95: 64] ^ state_in[ 63: 32];
    sbox_out[ 95: 64] = ~state_in[ 63: 32] & state_in[ 127:96] ^ state_in[ 95: 64];
    sbox_out[ 127:96] = ~state_in[ 95: 64] & state_in[  31: 0] ^ state_in[ 127:96];
  end

  assign state_out = sbox_out;

endmodule



