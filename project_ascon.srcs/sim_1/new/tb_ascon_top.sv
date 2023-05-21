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

  initial begin
    key = 128'h0123456789abcdef0123456789abcdef;
    nonce = 128'h0123456789abcdef0123456789abcdef;
    plaintext = 128'h0123456789abcdef0123456789abcdef;
    #100;
    $display("Ciphertext: %h", ciphertext);
    // Expected output: 40608000bbbfffee5e0cc79ca5d3b872
  end

endmodule
