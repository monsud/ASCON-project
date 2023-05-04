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


module ascon_initialization(
  input clk, rst,
  input logic [127:0] key,
  input logic [127:0] nonce,
  output logic [127:0] state_out
);

  logic [127:0] iv_padded;
  logic [127:0] w [5:0];
  logic [7:0] t;

  always_ff @(posedge clk, posedge rst) begin
    if (rst) begin
      iv_padded <= '0;
    end else begin
      iv_padded <= {nonce, '0};
    end
  end

  always_ff @(posedge clk, posedge rst) begin
    if (rst) begin
      w[0] <= '0;
      w[1] <= '0;
      w[2] <= '0;
    end else begin
      w[0] <= 128'h617078653320332d736c6c642d657665;
      w[1] <= '0;
      w[2] <= key ^ 128'h00000000000000000000000000000001;
    end
  end

  integer i;

  always_ff @(posedge clk, posedge rst) begin
    if (rst) begin
      t <= 8'h00;
      w[3] <= '0;
      w[4] <= '0;
      w[5] <= '0;
    end else begin
      for (i = 0; i < 4; i=i+1) begin : gen_round_constants
        t = 3 << (2 * i);
        w[3*i+3][7:0] = t ^ (t >> 1) ^ (t >> 2);
        w[3*i+3][15:8] = t ^ (t >> 3) ^ (t >> 4);
        w[3*i+3][23:16] = t ^ (t >> 5) ^ (t >> 6);
        w[3*i+3][31:24] = t ^ (t >> 7) ^ (t >> 8);

        w[3*i+4] = w[3*i+1] ^ w[3*i+3];
        w[3*i+5] = w[3*i+2] ^ w[3*i+3];
      end
    end
  end

  always_comb begin
    state_out = {iv_padded, w[0], w[1], w[2], w[3], w[4]};
  end

endmodule


