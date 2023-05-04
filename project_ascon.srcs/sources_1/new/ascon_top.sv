`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 19:14:59
// Design Name: 
// Module Name: ascon_top
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

module ascon_top (
  input clk,
  input rst,
  input [127:0] key,
  input [127:0] nonce,
  input [127:0] plaintext,
  output [127:0] ciphertext
);

  wire [127:0] round_state;
  wire [127:0] initialization_state;
  wire [127:0] key_schedule_state;
  wire [127:0] finalization_state;
  wire [127:0] truncation_state;

  ascon_initialization init_inst(
    .clk(clk),
    .rst(rst),
    .key(key),
    .nonce(nonce),
    .state_out(initialization_state)
  );

  ascon_key_schedule ks_inst(
    .clk(clk),
    .rst(rst),
    .state(initialization_state),
    .key(key),
    .state_out(key_schedule_state)
  );

  assign round_state = plaintext;

  genvar i;
  generate
  // Rounds will be 12 not 8
    for (i = 0; i < 8; i = i + 1) begin
      ascon_round round_inst(
        .clk(clk),
        .rst(rst),
        .state_in(round_state),
        .state_out(round_state),
        .round_number(i)
      );
    end
  endgenerate

  ascon_finalization final_inst(
    .clk(clk),
    .rst(rst),
    .state(round_state),
    .state_out(finalization_state)
  );

  ascon_truncation trunc_inst(
    .clk(clk),
    .rst(rst),
    .state(finalization_state),
    .ciphertext(ciphertext)
  );

endmodule



