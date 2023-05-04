`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:43:23
// Design Name: 
// Module Name: ascon_round
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

module ascon_round (
  input clk,
  input rst,
  input [127:0] state_in,
  output reg [127:0] state_out,
  input [7:0] round_number
);

  reg [127:0] state_permuted;
  reg [127:0] state_substituted;
  reg [127:0] state_round_constant;
  
  // Permute the state
  ascon_permutation permute_inst(.clk(clk), .rst(rst), .state(state_in), .perm_state(state_permuted));

  // Add the round constant to the state
  ascon_add_round_constant round_constant(.clk(clk), .rst(rst), .state(state_permuted), .round_number(round_number), .add_state(state_round_constant));

  // Substitute the state
  ascon_substitution substitution(.clk(clk), .rst(rst), .state(state_round_constant), .sub_state(state_substituted));

  // XOR the state with the round constant
  always @ (posedge clk, posedge rst) begin
    if (rst) begin
      state_out <= 128'h00000000000000000000000000000000;
    end else begin
      state_out <= state_substituted ^ state_round_constant;
    end
  end

endmodule


