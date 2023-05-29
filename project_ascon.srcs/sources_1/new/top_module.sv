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

  wire [31:0] serialized_key [3:0];
  wire [31:0] serialized_nonce [3:0];
  wire [31:0] serialized_plaintext [3:0];
  wire [31:0] deserialized_ciphertext [3:0];

  ascon_serializer key_serialize_inst (
    .clk(clk),
    .rst(rst),
    .data_in(key),
    .chunk_out(serialized_key[3], serialized_key[2], serialized_key[1], serialized_key[0])
  );

  ascon_serializer nonce_serializer_inst (
    .clk(clk),
    .rst(rst),
    .data_in(nonce),
    .chunk_out(serialized_nonce[3],serialized_nonce[2],serialized_nonce[1],serialized_nonce[0])
  );

  ascon_serializer plaintext_serializer_inst (
    .clk(clk),
    .rst(rst),
    .data_in(plaintext),
    .chunk_out(serialized_plaintext[3],serialized_plaintext[2],serialized_plaintext[1],serialized_plaintext[0])
  );

  ascon_top ascon_inst (
    .clk(clk),
    .rst(rst),
    .key({serialized_key[3],serialized_key[2],serialized_key[1],serialized_key[0]}),
    .nonce({serialized_nonce[3],serialized_nonce[2],serialized_nonce[1],serialized_nonce[0]}),
    .plaintext({serialized_plaintext[3],serialized_plaintext[2],serialized_plaintext[1],serialized_plaintext[0]}),
    .ciphertext(ciphertext)
  );

  ascon_deserializer ciphertext_deserializer_inst (
    .clk(clk),
    .rst(rst),
    .data_in(ciphertext),
    .chunk_out(deserialized_ciphertext[3],deserialized_ciphertext[2],deserialized_ciphertext[1],deserialized_ciphertext[0])
  );

  ascon_deserializer final_ciphertext_deserializer_inst (
    .clk(clk),
    .rst(rst),
    .chunk_in({deserialized_ciphertext[3],deserialized_ciphertext[2],deserialized_ciphertext[1],deserialized_ciphertext[0]}),
    .data_out(ciphertext)
  );

endmodule


