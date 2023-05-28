`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:30:45
// Design Name: 
// Module Name: ascon_initalization
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

module ascon_initialization (
  input wire clk,
  input wire rst,
  input wire [127:0] key,
  input wire [127:0] nonce,
  output wire [319:0] state_out
);

  // Internal wires
  wire [319:0] state;

  // Instantiate the ascon_permutation submodule
  ascon_permutation perm_inst (
    .clk(clk),
    .rst(rst),
    .state_in({key, nonce, 64'h0}),
    .state_out(state)
  );

  // Output the state after the initialization phase
  assign state_out = state;

endmodule










