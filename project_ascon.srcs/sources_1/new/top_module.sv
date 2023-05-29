`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2023 19:33:48
// Design Name: 
// Module Name: top_module
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

module top_module (
  input wire clk,
  input wire rst,
  input wire [127:0] key,
  input wire [127:0] nonce,
  input wire [127:0] plaintext,
  output wire [127:0] ciphertext
);
  wire [31:0] key_chunk [3:0];
  wire [31:0] nonce_chunk [3:0];
  wire [31:0] plaintext_chunk [3:0];
  wire [31:0] ciphertext_chunk [3:0];

  // Serialize the 128-bit inputs
  ascon_serializer #(.NUM_CHUNKS(4)) serializer_key (
    .clk(clk),
    .rst(rst),
    .data_in(key),
    .data_out(key_chunk)
  );

  ascon_serializer #(.NUM_CHUNKS(4)) serializer_nonce (
    .clk(clk),
    .rst(rst),
    .data_in(nonce),
    .data_out(nonce_chunk)
  );

  ascon_serializer #(.NUM_CHUNKS(4)) serializer_plaintext (
    .clk(clk),
    .rst(rst),
    .data_in(plaintext),
    .data_out(plaintext_chunk)
  );

  // Ascon implementation
  ascon_top ascon_inst (
    .clk(clk),
    .rst(rst),
    .key({key_chunk[3], key_chunk[2], key_chunk[1], key_chunk[0]}),
    .nonce({nonce_chunk[3], nonce_chunk[2], nonce_chunk[1], nonce_chunk[0]}),
    .plaintext({plaintext_chunk[3], plaintext_chunk[2], plaintext_chunk[1], plaintext_chunk[0]}),
    .ciphertext({ciphertext_chunk[3], ciphertext_chunk[2], ciphertext_chunk[1], ciphertext_chunk[0]})
  );

  // Deserialize the 128-bit output
  ascon_deserializer #(.NUM_CHUNKS(4)) deserializer (
    .clk(clk),
    .rst(rst),
    .data_in(ciphertext_chunk),
    .data_out(ciphertext)
  );

endmodule




