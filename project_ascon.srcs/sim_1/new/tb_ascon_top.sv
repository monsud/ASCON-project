`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 21:03:49
// Design Name: 
// Module Name: tb_ascon_top
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


module tb_ascon_top();

  reg clk, rst;
  reg [127:0] key, nonce, plaintext;
  wire [127:0] ciphertext;

  // Instantiate the ascon_top module
  ascon_top dut(
    .clk(clk),
    .rst(rst),
    .key(key),
    .nonce(nonce),
    .plaintext(plaintext),
    .ciphertext(ciphertext)
  );

  // Generate clock signal
  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end

  // Reset the design
  initial begin
    rst = 1;
    #20;
    rst = 0;
  end

  // Test case 1: plaintext = 0, key = 0, nonce = 0
  initial begin
    key = 128'h00000000000000000000000000000000;
    nonce = 128'h00000000000000000000000000000000;
    plaintext = 128'h00000000000000000000000000000000;
    #100;
    $display("Ciphertext: %h", ciphertext);
    // Expected output: 956dfe2e6b8b4567c9dc5e5b02f0b346
  end

  // Test case 2: plaintext = 1, key = 1, nonce = 1
  initial begin
    key = 128'h01010101010101010101010101010101;
    nonce = 128'h01010101010101010101010101010101;
    plaintext = 128'h01010101010101010101010101010101;
    #100;
    $display("Ciphertext: %h", ciphertext);
    // Expected output: 3da3b52d0b4c4c9ac8a1df65a50d0b0c
  end

endmodule
