// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jun  3 18:13:03 2023
// Host        : INSPIRON-7370 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/david/Documents/ASCON-project/project_ascon.gen/sources_1/bd/design_ascon/ip/design_ascon_ascon_core_0_2/design_ascon_ascon_core_0_2_stub.v
// Design      : design_ascon_ascon_core_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ascon_top,Vivado 2023.1" *)
module design_ascon_ascon_core_0_2(clk, rst, enable, key, nonce, plaintext, ciphertext)
/* synthesis syn_black_box black_box_pad_pin="rst,enable,key[127:0],nonce[127:0],plaintext[127:0],ciphertext[127:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input enable;
  input [127:0]key;
  input [127:0]nonce;
  input [127:0]plaintext;
  output [127:0]ciphertext;
endmodule
