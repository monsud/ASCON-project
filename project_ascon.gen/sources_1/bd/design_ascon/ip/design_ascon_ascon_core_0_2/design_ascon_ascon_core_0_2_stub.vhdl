-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Jun  2 20:53:49 2023
-- Host        : INSPIRON-7370 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/david/Documents/ASCON-project/project_ascon.gen/sources_1/bd/design_ascon/ip/design_ascon_ascon_core_0_2/design_ascon_ascon_core_0_2_stub.vhdl
-- Design      : design_ascon_ascon_core_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_ascon_ascon_core_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    key : in STD_LOGIC_VECTOR ( 127 downto 0 );
    nonce : in STD_LOGIC_VECTOR ( 127 downto 0 );
    plaintext : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ciphertext : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end design_ascon_ascon_core_0_2;

architecture stub of design_ascon_ascon_core_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,enable,key[127:0],nonce[127:0],plaintext[127:0],ciphertext[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ascon_top,Vivado 2023.1";
begin
end;
