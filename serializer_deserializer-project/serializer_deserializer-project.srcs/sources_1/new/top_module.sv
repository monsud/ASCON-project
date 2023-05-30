`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 13:29:13
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


module top_module #
  (
   parameter NUM_CHUNKS = 4
  )
  (
   input wire clk,
   input wire rst,
   input wire [127:0] data_in,
   output wire [127:0] data_out
  );

  wire [31:0] chunk_out [NUM_CHUNKS-1:0];
  wire [31:0] chunk_in [NUM_CHUNKS-1:0];

  // Serializer instantiation
  serializer #(NUM_CHUNKS) serializer_inst (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .chunk_out(chunk_out)
  );

  // Deserializer instantiation
  deserializer #(NUM_CHUNKS) deserializer_inst (
    .clk(clk),
    .rst(rst),
    .chunk_in(chunk_in),
    .data_out(data_out)
  );

  // Connect the serializer output to the deserializer input
  assign chunk_in = chunk_out;

endmodule

