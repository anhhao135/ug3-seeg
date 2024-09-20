-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Thu Sep 19 15:13:10 2024
-- Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/jtag_axi_test/ip/jtag_axi_test_diff_to_single_0_0/jtag_axi_test_diff_to_single_0_0_stub.vhdl
-- Design      : jtag_axi_test_diff_to_single_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jtag_axi_test_diff_to_single_0_0 is
  Port ( 
    in_p : in STD_LOGIC;
    in_n : in STD_LOGIC;
    out_single : out STD_LOGIC
  );

end jtag_axi_test_diff_to_single_0_0;

architecture stub of jtag_axi_test_diff_to_single_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_p,in_n,out_single";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "diff_to_single,Vivado 2023.1";
begin
end;
