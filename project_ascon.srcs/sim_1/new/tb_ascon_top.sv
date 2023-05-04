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

  // Instantiate the DUT
  ascon_top dut(.clk(clk), .rst(rst), .key(key), .nonce(nonce),
                .plaintext(plaintext), .ciphertext(ciphertext));

  // Clock generator
  always #5 clk = ~clk;

  // Reset assertion
  initial begin
    rst = 1;
    clk = 0;
    #10;
    rst = 0;
    clk = 1;
  end

  // Test vectors
  reg [127:0] expected_ciphertext = 128'h9b5c6e30f7c8e1306d131a696afd1e6c;
  
  // Test case
  initial begin
    key = 128'h000102030405060708090a0b0c0d0e0f;
    nonce = 128'h000102030405060708090a0b0c0d0e0f;
    plaintext = 128'h65656877f1ac0b2382d27b9f7f8b623;
    
    // Wait for the encryption to complete
    #200;
    
    // Check the ciphertext
    if (ciphertext == expected_ciphertext) begin
      $display("Test passed!");
    end else begin
      $display("Test failed!");
    end
  end
  
  // End simulation
  initial #500 $finish;

endmodule
