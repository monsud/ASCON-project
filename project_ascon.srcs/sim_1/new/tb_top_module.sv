`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2023 19:58:10
// Design Name: 
// Module Name: tb_top_module
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


module tb_top_module;
  reg clk;
  reg rst;
  reg [127:0] key;
  reg [127:0] nonce;
  reg [127:0] plaintext;
  wire [127:0] ciphertext;

  // Instantiate the top_module
  top_module dut (
    .clk(clk),
    .rst(rst),
    .key(key),
    .nonce(nonce),
    .plaintext(plaintext),
    .ciphertext(ciphertext)
  );

  // Clock generator
  always #5 clk = ~clk;

  // Reset generator
  initial begin
    rst = 1;
    #10;
    rst = 0;
  end

  // Test input values
  initial begin
    key = 128'h0123456789ABCDEF0123456789ABCDEF;
    nonce = 128'hFEDCBA9876543210FEDCBA9876543210;
    plaintext = 128'hA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5;

    #100;  // Wait for some time for the circuit to process

    $display("Ciphertext: %h", ciphertext);
    $finish;
  end

endmodule

