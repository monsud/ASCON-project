`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 13:27:14
// Design Name: 
// Module Name: deserializer
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


module deserializer #
  (
   parameter NUM_CHUNKS = 4
  )
  (
   input wire clk,
   input wire rst,
   input wire [31:0] chunk_in [NUM_CHUNKS-1:0],
   output reg [127:0] data_out
  );

  always @(posedge clk or negedge  rst) begin
    if (rst) begin
      data_out <= 0;
    end else begin
      data_out <= {chunk_in[NUM_CHUNKS-1], chunk_in[NUM_CHUNKS-2], chunk_in[NUM_CHUNKS-3], chunk_in[NUM_CHUNKS-4]};
    end
  end

endmodule
