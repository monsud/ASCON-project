`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2023 18:59:19
// Design Name: 
// Module Name: ascon_add_constant
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


module ascon_add_constant(
  input [127:0] state_in,
  output [127:0] state_out,
  input [3:0] round_num
);

  localparam [127:0] c[12] = '{128'h0000000000000000, 128'h13198a2e03707344, 128'ha4093822299f31d0, 
                                 128'h082efa98ec4e6c89, 128'h9b05688c2b3e6c1f, 128'h7b978c9dd695f5c5, 
                                 128'h97d4f3c3c5b0e3c6, 128'hbefa4f7e679f25fe, 128'h6dfe1e62b4f1c395, 
                                 128'hc11e1edb4b76f39b, 128'hf1d32c4d6b70858, 128'h3d93dda3e2787c13};

  reg [127:0] state_out_reg;

  always_comb begin
    state_out_reg = state_in + c[round_num];
  end

  assign state_out = state_out_reg;

endmodule

