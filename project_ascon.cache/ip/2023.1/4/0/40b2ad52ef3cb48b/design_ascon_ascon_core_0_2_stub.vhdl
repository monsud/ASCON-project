-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jun  3 18:13:01 2023
-- Host        : INSPIRON-7370 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_ascon_ascon_core_0_2_stub.vhdl
-- Design      : design_ascon_ascon_core_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    key : in STD_LOGIC_VECTOR ( 127 downto 0 );
    nonce : in STD_LOGIC_VECTOR ( 127 downto 0 );
    plaintext : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ciphertext : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,enable,key[127:0],nonce[127:0],plaintext[127:0],ciphertext[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ascon_top,Vivado 2023.1";
begin
end;
