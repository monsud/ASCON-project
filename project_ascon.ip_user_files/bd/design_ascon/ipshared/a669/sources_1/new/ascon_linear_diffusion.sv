`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2023 18:54:58
// Design Name: 
// Module Name: ascon_linear_diffusion
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

module ascon_linear_diffusion (
  input [127:0] state_in,
  output reg [127:0] state_out
);

  function automatic rotate (input x, input l);
    rotate = (x >> l) ^ (x << (64 - l));
  endfunction

  reg [63:0] t0, t1, t2, t3, t4;

  // Perform linear diffusion operation
  always_comb begin
    t0 = state_in[63:0];
    t1 = state_in[127:64];
    t2 = state_in[63:0];
    t3 = state_in[127:64];
    t4 = state_in[63:0];

    // Apply rotation to each state element
    t0 = rotate(t0, 19);
    t1 = rotate(t1, 28);
    t2 = rotate(t2, 1);
    t3 = rotate(t3, 10);
    t4 = rotate(t4, 7);

    // Perform XOR operation with rotated elements
    state_out[63:0] = state_in[63:0] ^ t0 ^ t1;
    state_out[127:64] = state_in[127:64] ^ t2 ^ t3 ^ t4;
  end

endmodule

