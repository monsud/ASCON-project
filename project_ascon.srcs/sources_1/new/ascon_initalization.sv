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

  wire [127:0] round_state;
  reg [63:0] round_num;
  
  ascon_round round_inst (
    .clk(clk),
    .rst(rst),
    .state_in({key, nonce}),
    .state_out(round_state),
    .round_number(round_num)
  );
  
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      round_num <= 0;
      state_out <= 128'h0000000000000000_8080808080808080;
    end else if (round_num < 12) begin
      round_num <= round_num + 1;
      state_out <= round_state;
    end
  end

endmodule








