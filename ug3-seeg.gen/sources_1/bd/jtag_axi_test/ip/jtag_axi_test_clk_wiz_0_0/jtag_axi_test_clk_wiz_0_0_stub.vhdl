-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Sep 10 11:47:55 2024
-- Host        : GramForGram running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/jtag_axi_test/ip/jtag_axi_test_clk_wiz_0_0/jtag_axi_test_clk_wiz_0_0_stub.vhdl
-- Design      : jtag_axi_test_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jtag_axi_test_clk_wiz_0_0 is
  Port ( 
    clk_39M : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end jtag_axi_test_clk_wiz_0_0;

architecture stub of jtag_axi_test_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_39M,locked,clk_in1";
begin
end;
