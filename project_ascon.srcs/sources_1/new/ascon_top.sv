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
  localparam int LENGTH = 128;
  localparam int ROUNDS = 12;

module ascon_top (
  input clk,
  input rst,
  input [127:0] key,
  input [127:0] nonce,
  input [127:0] plaintext,
  output [127:0] ciphertext
);

  wire [LENGTH-1:0] initialization_state;
  wire [LENGTH-1:0] key_schedule_state;
  wire [LENGTH-1:0] round_state;
  wire [(LENGTH*ROUNDS) - 1:0] temp_round;
  wire [(ROUNDS+1)*LENGTH -1:0] temp_round_out;
  wire [LENGTH-1:0] finalization_state;

  // Instantiate initialization module
  ascon_initialization init_inst(
    .clk(clk),
    .rst(rst),
    .key(key),
    .nonce(nonce),
    .state_out(initialization_state)
  );

  // Instantiate key schedule module
  ascon_key_schedule ks_inst(
    .clk(clk),
    .rst(rst),
    .state(initialization_state),
    .key(key),
    .state_out(key_schedule_state)
  );

  // Instantiate 12 rounds of ASCON
  genvar i;
  assign temp_round[127:0] = key_schedule_state ^ plaintext;
  generate
    for (i = 0; i <= ROUNDS-1; i = i + 1) begin
      ascon_round round_inst (
        .clk(clk),
        .rst(rst),
        .state_in(temp_round[i*LENGTH + LENGTH-1 : i*LENGTH]),
        .state_out(temp_round_out[(i+1)*LENGTH -1 : (i)*LENGTH]),
        .round_number(i)
      );
    end
  endgenerate
      assign round_state = temp_round_out[(ROUNDS-1)*LENGTH + LENGTH-1 : (ROUNDS-1)*LENGTH];

  // Instantiate finalization module
  ascon_finalization final_inst(
    .clk(clk),
    .rst(rst),
    .state(round_state),
    .state_out(finalization_state)
  );

  // Instantiate truncation module
  ascon_truncation trunc_inst(
    .clk(clk),
    .rst(rst),
    .state(finalization_state),
    .ciphertext(ciphertext)
  );

endmodule



