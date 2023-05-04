`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 20:50:10
// Design Name: 
// Module Name: ascon_add_round_constant
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


module ascon_add_round_constant
(
  input clk,
  input rst,
  input [127:0] state,
  input [7:0] round_number,
  output reg [127:0] add_state
);

  reg [127:0] round_constant;
  reg [127:0] temp;

  always @(posedge clk, negedge rst) begin
    if (~rst) begin
      round_constant <= 128'h00000000000000000000000000000000;
      temp <= 128'h00000000000000000000000000000000;
      add_state <= 128'h00000000000000000000000000000000;
    end
    else begin
      case(round_number)
        8'd0: round_constant <= 128'h00000000000000000000000000000000;
        8'd1: round_constant <= 128'h01000000000000000000000000000000;
        8'd2: round_constant <= 128'h02000000000000000000000000000000;
        8'd3: round_constant <= 128'h04000000000000000000000000000000;
        8'd4: round_constant <= 128'h08000000000000000000000000000000;
        8'd5: round_constant <= 128'h10000000000000000000000000000000;
        8'd6: round_constant <= 128'h20000000000000000000000000000000;
        8'd7: round_constant <= 128'h40000000000000000000000000000000;
        8'd8: round_constant <= 128'h80000000000000000000000000000000;
        default: round_constant <= 128'h1B000000000000000000000000000000;
      endcase

      temp <= state ^ round_constant;
      add_state <= temp;
    end
  end

endmodule
