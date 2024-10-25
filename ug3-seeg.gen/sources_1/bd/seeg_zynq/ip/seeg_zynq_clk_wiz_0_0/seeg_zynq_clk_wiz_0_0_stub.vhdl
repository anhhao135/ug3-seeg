-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Mon Oct  7 11:38:36 2024
-- Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/seeg_zynq/ip/seeg_zynq_clk_wiz_0_0/seeg_zynq_clk_wiz_0_0_stub.vhdl
-- Design      : seeg_zynq_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seeg_zynq_clk_wiz_0_0 is
  Port ( 
    clk_78M : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end seeg_zynq_clk_wiz_0_0;

architecture stub of seeg_zynq_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_78M,locked,clk_in1";
begin
end;
