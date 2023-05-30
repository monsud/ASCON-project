`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2023 11:35:40
// Design Name: 
// Module Name: serializer_deserializer
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


module serializer_deserializer (
  input wire clk,
  input wire rst,
  input wire [127:0] data_in,
  output reg [31:0] chunk_out [3:0],
  output reg [127:0] data_out
);
  
  // Constants
  localparam NUM_CHUNKS = 4;

  // Internal signals
  reg [127:0] internal_data;
  reg [31:0] internal_chunk [NUM_CHUNKS-1:0];

  // Serializer
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      internal_data <= 0;
      internal_chunk <= {0,0,0,0};
    end else begin
      internal_data <= data_in;
      for (int i = 0; i < NUM_CHUNKS; i = i + 1) begin
        internal_chunk[i] <= internal_data[31*i +: 32];
      end
    end
  end

  // Deserializer
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      data_out <= 0;
    end else begin
      for (int i = 0; i < NUM_CHUNKS; i = i + 1) begin
        data_out[31*i +: 32] <= internal_chunk[i];
      end
    end
  end

  // Output connections
  assign chunk_out = internal_chunk;

endmodule

