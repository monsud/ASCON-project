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
  input enable,
  input [127:0] state_in,
  output reg [127:0] state_out,
  input [3:0] round_number
);
  wire [127:0] add_const_state;
  wire [127:0] sbox_state;
  wire [127:0] linear_state;

  // Instantiate the ascon_add_constant module
  ascon_add_constant constant_inst (
    .round_num(round_number),
    .state_in(state_in),
    .state_out(add_const_state)
  );

  // Instantiate the ascon_sbox module
  ascon_sbox sbox_inst (
    .state_in(add_const_state),
    .state_out(sbox_state)
  );

  // Instantiate the ascon_linear_diffusion module
  ascon_linear_diffusion diffusion_inst (
    .state_in(sbox_state),
    .state_out(linear_state)
  );

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state_out <= 128'h00000000000000000000000000000000;
    end else if (enable) begin
      state_out <= linear_state;
    end
  end

endmodule



