`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:30:45
// Design Name: 
// Module Name: ascon_initalization
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

module ascon_initialization (
  input clk,
  input rst,
  input [127:0] key,
  input [127:0] nonce,
  output reg [127:0] state_out
);

  reg [127:0] round_state;

  ascon_round round_inst (
    .clk(clk),
    .rst(rst),
    .state_in(key ^ nonce),
    .state_out(round_state),
    .round_number(4'b0000)
  );

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state_out <= 128'h00000000000000000000000000000000;
    end else begin
      state_out <= round_state;
    end
  end

endmodule










