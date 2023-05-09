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
  input        clk,
  input        rst,
  input  [127:0] state_in,
  output reg [127:0] state_out,
  input  [11:0]    round_number
);

  logic [127:0] round_constant;
  logic [127:0] state_ld;
  logic [127:0] state_out_sbox;
  logic [127:0] state_out_ld;
  
  ascon_add_constant add_inst (
    .round_num(round_number),
    .state_in(state_in),
    .state_out(round_constant)
  );
  
  ascon_sbox sbox_inst (
    .state_in(round_constant),
    .state_out(state_out_sbox)
  );
  
  ascon_linear_diffusion ld_inst (
    .state_in(state_out_sbox),
    .state_out(state_out_ld)
  );
  
  always_ff @(posedge clk, negedge rst) begin
    if (!rst) begin
      state_ld <= 0;
      state_out <= 0;
    end
    else begin
      state_ld <= state_out_ld;
      state_out <= state_ld;
    end
  end
  
  assign state_out = state_ld ^ round_constant;

endmodule



