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
  input enable,
  input [127:0] key,
  input [127:0] nonce,
  input [127:0] plaintext,
  output [127:0] ciphertext
);

  wire [LENGTH-1:0] initialization_state;
  wire [LENGTH-1:0] key_schedule_state;
  wire [LENGTH-1:0] round_state [12];
  wire [LENGTH-1:0] finalization_state;

  // Instantiate initialization module
  ascon_initialization init_inst(
    .clk(clk),
    .rst(rst),
    .enable(),
    .key(key),
    .nonce(nonce),
    .state_out(initialization_state)
  );

  // Instantiate key schedule module
  ascon_key_schedule ks_inst(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .state(initialization_state),
    .key(key),
    .state_out(key_schedule_state)
  );

//   Instantiate 12 round modules
  assign round_state[0] = key_schedule_state ^ plaintext;
  genvar i;
  generate
    for (i = 1; i < ROUNDS; i = i + 1) begin
      ascon_round round_inst (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .state_in(round_state[i-1]),
        .state_out(round_state[i]),
        .round_number(i)
      );
    end
  endgenerate
  
  // Instantiate finalization module
  ascon_finalization final_inst(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .state(round_state[11]),
    .state_out(ciphertext)
  );
 

endmodule



