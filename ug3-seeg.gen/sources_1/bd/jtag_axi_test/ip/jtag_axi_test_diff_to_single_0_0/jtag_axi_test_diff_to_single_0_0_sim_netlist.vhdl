-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Thu Sep 19 15:13:10 2024
-- Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/jtag_axi_test/ip/jtag_axi_test_diff_to_single_0_0/jtag_axi_test_diff_to_single_0_0_sim_netlist.vhdl
-- Design      : jtag_axi_test_diff_to_single_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_test_diff_to_single_0_0_diff_to_single is
  port (
    in_p : in STD_LOGIC;
    in_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_test_diff_to_single_0_0_diff_to_single : entity is "diff_to_single";
end jtag_axi_test_diff_to_single_0_0_diff_to_single;

architecture STRUCTURE of jtag_axi_test_diff_to_single_0_0_diff_to_single is
  signal NLW_BUF_O_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUF : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of BUF : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of BUF : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of BUF : label is "AUTO";
begin
BUF: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => in_p,
      IB => in_n,
      O => NLW_BUF_O_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_test_diff_to_single_0_0 is
  port (
    in_p : in STD_LOGIC;
    in_n : in STD_LOGIC;
    out_single : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of jtag_axi_test_diff_to_single_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of jtag_axi_test_diff_to_single_0_0 : entity is "jtag_axi_test_diff_to_single_0_0,diff_to_single,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jtag_axi_test_diff_to_single_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of jtag_axi_test_diff_to_single_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of jtag_axi_test_diff_to_single_0_0 : entity is "diff_to_single,Vivado 2023.1";
end jtag_axi_test_diff_to_single_0_0;

architecture STRUCTURE of jtag_axi_test_diff_to_single_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  out_single <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.jtag_axi_test_diff_to_single_0_0_diff_to_single
     port map (
      in_n => in_n,
      in_p => in_p
    );
end STRUCTURE;
