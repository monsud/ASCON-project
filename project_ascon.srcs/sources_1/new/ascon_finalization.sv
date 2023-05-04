`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:54:01
// Design Name: 
// Module Name: ascon_finalization
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


module ascon_finalization (
  input clk,
  input rst,
  input [127:0] state,
  output reg [127:0] state_out
);

  reg [127:0] permuted_state;

  always @(posedge clk) begin
    if (rst) begin
      permuted_state <= 0;
      state_out <= 0;
    end else begin
      permuted_state <= {state[  0], state[ 63], state[ 32], state[ 95], 
                         state[ 64], state[127], state[ 96], state[ 31], 
                         state[ 96], state[ 63], state[  0], state[ 95], 
                         state[ 32], state[127], state[ 64], state[ 31], 
                         state[ 64], state[ 63], state[ 32], state[ 95], 
                         state[  0], state[127], state[ 96], state[ 31], 
                         state[ 32], state[ 63], state[ 64], state[ 95], 
                         state[ 96], state[127], state[  0], state[ 31]};
      state_out <= permuted_state;
    end
  end

endmodule


