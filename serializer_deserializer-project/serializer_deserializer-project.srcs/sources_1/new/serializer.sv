`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 13:26:09
// Design Name: 
// Module Name: serializer
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


module serializer #
  (
   parameter NUM_CHUNKS = 4
  )
  (
   input wire clk,
   input wire rst,
   input wire [127:0] data_in,
   output reg [31:0] chunk_out [NUM_CHUNKS-1:0]
  );

  always @(posedge clk or negedge  rst) begin
    if (rst) begin
      for (int i = 0; i < NUM_CHUNKS; i++) begin
        chunk_out[i] <= 0;
      end
    end else begin
      for (int i = 0; i < NUM_CHUNKS; i++) begin
        chunk_out[i] <= data_in[i*32 +: 32];
      end
    end
  end

endmodule
