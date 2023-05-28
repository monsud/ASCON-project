`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 20:05:25
// Design Name: 
// Module Name: ascon_permutation
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

module ascon_permutation (
  input wire clk,
  input wire rst,
  input wire [319:0] state_in,
  output reg [319:0] state_out
);

  reg [319:0] round_state;
  reg [319:0] temp_round_out;

  // Number of rounds in the ASCON permutation
  localparam NUM_ROUNDS = 12;

  // Instantiate the ascon_round submodule multiple times
  generate
    genvar i;
    for (i = 0; i < NUM_ROUNDS; i++) begin : round_inst
      ascon_round round (
        .clk(clk),
        .rst(rst),
        .state_in(i == 0 ? state_in : round_state),
        .state_out(temp_round_out),
        .round_number(i)
      );
    end
  endgenerate

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state_out <= 'b0;
    end else begin
      state_out <= temp_round_out;
    end
  end

endmodule