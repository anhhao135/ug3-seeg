-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Thu Sep 19 15:05:45 2024
-- Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jtag_axi_test_rhd_diff_to_single_0_0_sim_netlist.vhdl
-- Design      : jtag_axi_test_rhd_diff_to_single_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhd_diff_to_single is
  port (
    MISO1_I : out STD_LOGIC;
    MISO2_I : out STD_LOGIC;
    MISO1_J : out STD_LOGIC;
    MISO2_J : out STD_LOGIC;
    MISO1_K : out STD_LOGIC;
    MISO2_K : out STD_LOGIC;
    MISO1_L : out STD_LOGIC;
    MISO2_L : out STD_LOGIC;
    MISO1_M : out STD_LOGIC;
    MISO2_M : out STD_LOGIC;
    MISO1_N : out STD_LOGIC;
    MISO2_N : out STD_LOGIC;
    MISO1_O : out STD_LOGIC;
    MISO2_O : out STD_LOGIC;
    MISO1_P : out STD_LOGIC;
    MISO2_P : out STD_LOGIC;
    MISO1_I_P : in STD_LOGIC;
    MISO1_I_N : in STD_LOGIC;
    MISO2_I_P : in STD_LOGIC;
    MISO2_I_N : in STD_LOGIC;
    MISO1_J_P : in STD_LOGIC;
    MISO1_J_N : in STD_LOGIC;
    MISO2_J_P : in STD_LOGIC;
    MISO2_J_N : in STD_LOGIC;
    MISO1_K_P : in STD_LOGIC;
    MISO1_K_N : in STD_LOGIC;
    MISO2_K_P : in STD_LOGIC;
    MISO2_K_N : in STD_LOGIC;
    MISO1_L_P : in STD_LOGIC;
    MISO1_L_N : in STD_LOGIC;
    MISO2_L_P : in STD_LOGIC;
    MISO2_L_N : in STD_LOGIC;
    MISO1_M_P : in STD_LOGIC;
    MISO1_M_N : in STD_LOGIC;
    MISO2_M_P : in STD_LOGIC;
    MISO2_M_N : in STD_LOGIC;
    MISO1_N_P : in STD_LOGIC;
    MISO1_N_N : in STD_LOGIC;
    MISO2_N_P : in STD_LOGIC;
    MISO2_N_N : in STD_LOGIC;
    MISO1_O_P : in STD_LOGIC;
    MISO1_O_N : in STD_LOGIC;
    MISO2_O_P : in STD_LOGIC;
    MISO2_O_N : in STD_LOGIC;
    MISO1_P_P : in STD_LOGIC;
    MISO1_P_N : in STD_LOGIC;
    MISO2_P_P : in STD_LOGIC;
    MISO2_P_N : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhd_diff_to_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhd_diff_to_single is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUF_MISO1_I : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of BUF_MISO1_I : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of BUF_MISO1_I : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of BUF_MISO1_I : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_J : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_J : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_J : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_J : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_K : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_K : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_K : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_K : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_L : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_L : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_L : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_L : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_M : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_M : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_M : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_M : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_N : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_N : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_N : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_N : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_O : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_O : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_O : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_O : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO1_P : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO1_P : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO1_P : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO1_P : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_I : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_I : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_I : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_I : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_J : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_J : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_J : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_J : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_K : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_K : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_K : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_K : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_L : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_L : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_L : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_L : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_M : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_M : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_M : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_M : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_N : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_N : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_N : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_N : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_O : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_O : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_O : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_O : label is "AUTO";
  attribute BOX_TYPE of BUF_MISO2_P : label is "PRIMITIVE";
  attribute CAPACITANCE of BUF_MISO2_P : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of BUF_MISO2_P : label is "0";
  attribute IFD_DELAY_VALUE of BUF_MISO2_P : label is "AUTO";
begin
BUF_MISO1_I: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_I_P,
      IB => MISO1_I_N,
      O => MISO1_I
    );
BUF_MISO1_J: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_J_P,
      IB => MISO1_J_N,
      O => MISO1_J
    );
BUF_MISO1_K: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_K_P,
      IB => MISO1_K_N,
      O => MISO1_K
    );
BUF_MISO1_L: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_L_P,
      IB => MISO1_L_N,
      O => MISO1_L
    );
BUF_MISO1_M: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_M_P,
      IB => MISO1_M_N,
      O => MISO1_M
    );
BUF_MISO1_N: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_N_P,
      IB => MISO1_N_N,
      O => MISO1_N
    );
BUF_MISO1_O: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_O_P,
      IB => MISO1_O_N,
      O => MISO1_O
    );
BUF_MISO1_P: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO1_P_P,
      IB => MISO1_P_N,
      O => MISO1_P
    );
BUF_MISO2_I: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_I_P,
      IB => MISO2_I_N,
      O => MISO2_I
    );
BUF_MISO2_J: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_J_P,
      IB => MISO2_J_N,
      O => MISO2_J
    );
BUF_MISO2_K: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_K_P,
      IB => MISO2_K_N,
      O => MISO2_K
    );
BUF_MISO2_L: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_L_P,
      IB => MISO2_L_N,
      O => MISO2_L
    );
BUF_MISO2_M: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_M_P,
      IB => MISO2_M_N,
      O => MISO2_M
    );
BUF_MISO2_N: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_N_P,
      IB => MISO2_N_N,
      O => MISO2_N
    );
BUF_MISO2_O: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_O_P,
      IB => MISO2_O_N,
      O => MISO2_O
    );
BUF_MISO2_P: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => MISO2_P_P,
      IB => MISO2_P_N,
      O => MISO2_P
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    MISO1_I_P : in STD_LOGIC;
    MISO1_I_N : in STD_LOGIC;
    MISO1_I : out STD_LOGIC;
    MISO2_I_P : in STD_LOGIC;
    MISO2_I_N : in STD_LOGIC;
    MISO2_I : out STD_LOGIC;
    MISO1_J_P : in STD_LOGIC;
    MISO1_J_N : in STD_LOGIC;
    MISO1_J : out STD_LOGIC;
    MISO2_J_P : in STD_LOGIC;
    MISO2_J_N : in STD_LOGIC;
    MISO2_J : out STD_LOGIC;
    MISO1_K_P : in STD_LOGIC;
    MISO1_K_N : in STD_LOGIC;
    MISO1_K : out STD_LOGIC;
    MISO2_K_P : in STD_LOGIC;
    MISO2_K_N : in STD_LOGIC;
    MISO2_K : out STD_LOGIC;
    MISO1_L_P : in STD_LOGIC;
    MISO1_L_N : in STD_LOGIC;
    MISO1_L : out STD_LOGIC;
    MISO2_L_P : in STD_LOGIC;
    MISO2_L_N : in STD_LOGIC;
    MISO2_L : out STD_LOGIC;
    MISO1_M_P : in STD_LOGIC;
    MISO1_M_N : in STD_LOGIC;
    MISO1_M : out STD_LOGIC;
    MISO2_M_P : in STD_LOGIC;
    MISO2_M_N : in STD_LOGIC;
    MISO2_M : out STD_LOGIC;
    MISO1_N_P : in STD_LOGIC;
    MISO1_N_N : in STD_LOGIC;
    MISO1_N : out STD_LOGIC;
    MISO2_N_P : in STD_LOGIC;
    MISO2_N_N : in STD_LOGIC;
    MISO2_N : out STD_LOGIC;
    MISO1_O_P : in STD_LOGIC;
    MISO1_O_N : in STD_LOGIC;
    MISO1_O : out STD_LOGIC;
    MISO2_O_P : in STD_LOGIC;
    MISO2_O_N : in STD_LOGIC;
    MISO2_O : out STD_LOGIC;
    MISO1_P_P : in STD_LOGIC;
    MISO1_P_N : in STD_LOGIC;
    MISO1_P : out STD_LOGIC;
    MISO2_P_P : in STD_LOGIC;
    MISO2_P_N : in STD_LOGIC;
    MISO2_P : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "jtag_axi_test_rhd_diff_to_single_0_0,rhd_diff_to_single,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rhd_diff_to_single,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhd_diff_to_single
     port map (
      MISO1_I => MISO1_I,
      MISO1_I_N => MISO1_I_N,
      MISO1_I_P => MISO1_I_P,
      MISO1_J => MISO1_J,
      MISO1_J_N => MISO1_J_N,
      MISO1_J_P => MISO1_J_P,
      MISO1_K => MISO1_K,
      MISO1_K_N => MISO1_K_N,
      MISO1_K_P => MISO1_K_P,
      MISO1_L => MISO1_L,
      MISO1_L_N => MISO1_L_N,
      MISO1_L_P => MISO1_L_P,
      MISO1_M => MISO1_M,
      MISO1_M_N => MISO1_M_N,
      MISO1_M_P => MISO1_M_P,
      MISO1_N => MISO1_N,
      MISO1_N_N => MISO1_N_N,
      MISO1_N_P => MISO1_N_P,
      MISO1_O => MISO1_O,
      MISO1_O_N => MISO1_O_N,
      MISO1_O_P => MISO1_O_P,
      MISO1_P => MISO1_P,
      MISO1_P_N => MISO1_P_N,
      MISO1_P_P => MISO1_P_P,
      MISO2_I => MISO2_I,
      MISO2_I_N => MISO2_I_N,
      MISO2_I_P => MISO2_I_P,
      MISO2_J => MISO2_J,
      MISO2_J_N => MISO2_J_N,
      MISO2_J_P => MISO2_J_P,
      MISO2_K => MISO2_K,
      MISO2_K_N => MISO2_K_N,
      MISO2_K_P => MISO2_K_P,
      MISO2_L => MISO2_L,
      MISO2_L_N => MISO2_L_N,
      MISO2_L_P => MISO2_L_P,
      MISO2_M => MISO2_M,
      MISO2_M_N => MISO2_M_N,
      MISO2_M_P => MISO2_M_P,
      MISO2_N => MISO2_N,
      MISO2_N_N => MISO2_N_N,
      MISO2_N_P => MISO2_N_P,
      MISO2_O => MISO2_O,
      MISO2_O_N => MISO2_O_N,
      MISO2_O_P => MISO2_O_P,
      MISO2_P => MISO2_P,
      MISO2_P_N => MISO2_P_N,
      MISO2_P_P => MISO2_P_P
    );
end STRUCTURE;
