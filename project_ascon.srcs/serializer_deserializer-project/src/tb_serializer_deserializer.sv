`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 11:40:07
// Design Name: 
// Module Name: tb_serializer_deserializer
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

module tb_serializer_deserializer;

  // Input and output signals
  reg clk;
  reg rst;
  reg [127:0] data_in;
  wire [127:0] data_out;

  // Instantiate the module under test
  serializer_deserializer dut (
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
    #10;
    rst = 0;
    clk = 1;
  end

  // Test data
  reg [31:0] test_data [3:0];

  initial begin
    test_data[0] = 32'h11223344;
    test_data[1] = 32'h55667788;
    test_data[2] = 32'haa99bbcc;
    test_data[3] = 32'hddeeff00;

    #20;

    // Apply input data
    for (int i = 0; i < 4; i = i + 1) begin
      data_in = {data_in[95:0], test_data[i]};
      #10;
    end

    // Wait for the output data to stabilize
    #20;

    // Check the output data
    if (data_out !== 128'h1122334455667788aa99bbccddeeff00) begin
      $display("Test failed! Unexpected output data: %h", data_out);
    end else begin
      $display("Test passed! Output data matches expected value.");
    end

    // End simulation
    $finish;
  end

endmodule
