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
  input [11:0] round_number
);

  reg [127:0] add_constant_out;
  reg [127:0] sbox_out;
  reg [127:0] linear_diffusion_out;

  ascon_add_constant add_const_inst (
    .round_num(round_number),
    .state_in(state_in),
    .state_out(add_constant_out)
  );

  ascon_sbox sbox_inst (
    .state_in(add_constant_out),
    .state_out(sbox_out)
  );

  ascon_linear_diffusion linear_diff_inst (
    .state_in(sbox_out),
    .state_out(linear_diffusion_out)
  );

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state_out <= 'b0;
    end else begin
      case (round_number)
        4'h0: state_out <= linear_diffusion_out;
        4'h1: state_out <= linear_diffusion_out ^ state_in;
        default: state_out <= linear_diffusion_out ^ sbox_out;
      endcase
    end
  end

endmodule



