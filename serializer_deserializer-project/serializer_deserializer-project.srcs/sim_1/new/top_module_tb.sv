`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 13:30:58
// Design Name: 
// Module Name: top_module_tb
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


module top_module_tb;

  // Inputs
  reg clk;
  reg rst;
  reg [127:0] data_in;

  // Outputs
  wire [127:0] data_out;

  // Instantiate the top module
  top_module #(4) dut (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .data_out(data_out)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Reset initialization
  initial begin
    rst = 1;
    clk = 0;
    #10 
    rst = 0;
    clk = 1;
  end

  // Stimulus
  initial begin
    // Provide input data
    data_in = 128'h0123456789ABCDEF0123456789ABCDEF;

    // Wait for a few clock cycles
    #20;

    // Print the output data
    $display("Output: data_out = %h", data_out);
    
    // End the simulation
    $finish;
  end

endmodule

