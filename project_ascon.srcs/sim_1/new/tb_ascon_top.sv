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


module tb_ascon_top;

  // Inputs
  reg clk;
  reg rst;
  reg [127:0] key;
  reg [127:0] nonce;
  reg [127:0] plaintext;

  // Outputs
  wire [127:0] ciphertext;

  // Instantiate the DUT (Design Under Test)
  ascon_top dut (
    .clk(clk),
    .rst(rst),
    .key(key),
    .nonce(nonce),
    .plaintext(plaintext),
    .ciphertext(ciphertext)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Test stimulus
  initial begin
    // Initialize inputs
    clk = 0;
    rst = 1;
    key = 128'h0123456789ABCDEF0123456789ABCDEF;
    nonce = 128'h0123456789ABCDEF0123456789ABCDEF;
    plaintext = 128'h0123456789ABCDEF0123456789ABCDEF;

    // Wait for a few clock cycles
    #10 rst = 0;

    // Provide inputs and wait for a few clock cycles
    #10 key = 128'hFEDCBA9876543210FEDCBA9876543210;
    #10 nonce = 128'hFEDCBA9876543210FEDCBA9876543210;
    #10 plaintext = 128'hFEDCBA9876543210FEDCBA9876543210;

    // Wait for a few more clock cycles
    #20;

    // Display the final output
    $display("Ciphertext: %h", ciphertext);

    // End the simulation
    $finish;
  end

endmodule
