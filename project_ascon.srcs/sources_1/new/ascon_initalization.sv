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
    input clk,
    input rst,
    input [127:0] key,
    input [127:0] nonce,
    output reg [127:0] state_out
);

    wire [127:0] round_const;
    wire [127:0] temp_state;

    // Compute the round constant
    ascon_add_constant round_const_inst(
        .round_num(0),
        .state_in(0),
        .state_out(round_const)
    );

    // Initialize the state with the nonce and the key
    assign temp_state = {nonce, key};

    // XOR the first part of the state with the round constant
    assign state_out = round_const ^ temp_state;

    // Register the output state on the positive edge of the clock
    always @(posedge clk) begin
        if (rst) begin
            state_out <= 0;
        end else begin
            state_out <= temp_state;
        end
    end
endmodule



