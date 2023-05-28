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
  input wire clk,
  input wire rst,
  input wire [319:0] state,
  input wire [127:0] key,
  output wire [319:0] state_out
);

  // Internal wires
  wire [319:0] internal_state;

  // Instantiate the ascon_permutation submodule
  ascon_permutation perm_inst (
    .clk(clk),
    .rst(rst),
    .state_in(state),
    .state_out(internal_state)
  );

  // Output the state after the key schedule
  assign state_out = internal_state ^ key;

endmodule







