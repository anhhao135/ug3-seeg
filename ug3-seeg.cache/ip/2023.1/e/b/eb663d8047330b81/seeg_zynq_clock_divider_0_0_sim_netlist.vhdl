-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Mon Mar 31 12:03:38 2025
-- Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ seeg_zynq_clock_divider_0_0_sim_netlist.vhdl
-- Design      : seeg_zynq_clock_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider is
  port (
    clock_out : out STD_LOGIC;
    divisor : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rstn : in STD_LOGIC;
    clock_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider is
  signal clock_out_pre_buff : STD_LOGIC;
  signal clock_out_pre_buff_i_1_n_0 : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_n_4\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_n_5\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_n_6\ : STD_LOGIC;
  signal \clock_out_pre_buff_reg0_carry__0_n_7\ : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_10_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_6_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_7_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_8_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_i_9_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_0 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_1 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_2 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_3 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_4 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_5 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_6 : STD_LOGIC;
  signal clock_out_pre_buff_reg0_carry_n_7 : STD_LOGIC;
  signal \counter0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal counter0_carry_i_10_n_0 : STD_LOGIC;
  signal counter0_carry_i_11_n_0 : STD_LOGIC;
  signal counter0_carry_i_12_n_0 : STD_LOGIC;
  signal counter0_carry_i_13_n_0 : STD_LOGIC;
  signal counter0_carry_i_14_n_0 : STD_LOGIC;
  signal counter0_carry_i_15_n_0 : STD_LOGIC;
  signal counter0_carry_i_16_n_0 : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_i_5_n_0 : STD_LOGIC;
  signal counter0_carry_i_6_n_0 : STD_LOGIC;
  signal counter0_carry_i_7_n_0 : STD_LOGIC;
  signal counter0_carry_i_8_n_0 : STD_LOGIC;
  signal counter0_carry_i_9_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal counter1_n_0 : STD_LOGIC;
  signal counter1_rep_n_0 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal NLW_clock_out_pre_buff_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_clock_out_pre_buff_reg0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_clock_out_pre_buff_reg0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFGCE_inst : label is "PRIMITIVE";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of clock_out_pre_buff_reg0_carry : label is 14;
  attribute COMPARATOR_THRESHOLD of \clock_out_pre_buff_reg0_carry__0\ : label is 14;
  attribute COMPARATOR_THRESHOLD of counter0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 16;
begin
BUFGCE_inst: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "SYNC",
      IS_CE_INVERTED => '0',
      IS_I_INVERTED => '0',
      SIM_DEVICE => "ULTRASCALE",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => '1',
      I => clock_out_pre_buff,
      O => clock_out
    );
clock_out_pre_buff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rstn,
      I1 => p_1_in,
      O => clock_out_pre_buff_i_1_n_0
    );
clock_out_pre_buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => clock_out_pre_buff_i_1_n_0,
      Q => clock_out_pre_buff,
      R => '0'
    );
clock_out_pre_buff_reg0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => clock_out_pre_buff_reg0_carry_n_0,
      CO(6) => clock_out_pre_buff_reg0_carry_n_1,
      CO(5) => clock_out_pre_buff_reg0_carry_n_2,
      CO(4) => clock_out_pre_buff_reg0_carry_n_3,
      CO(3) => clock_out_pre_buff_reg0_carry_n_4,
      CO(2) => clock_out_pre_buff_reg0_carry_n_5,
      CO(1) => clock_out_pre_buff_reg0_carry_n_6,
      CO(0) => clock_out_pre_buff_reg0_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => clock_out_pre_buff_reg0_carry_i_1_n_0,
      DI(0) => clock_out_pre_buff_reg0_carry_i_2_n_0,
      O(7 downto 0) => NLW_clock_out_pre_buff_reg0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => clock_out_pre_buff_reg0_carry_i_3_n_0,
      S(6) => clock_out_pre_buff_reg0_carry_i_4_n_0,
      S(5) => clock_out_pre_buff_reg0_carry_i_5_n_0,
      S(4) => clock_out_pre_buff_reg0_carry_i_6_n_0,
      S(3) => clock_out_pre_buff_reg0_carry_i_7_n_0,
      S(2) => clock_out_pre_buff_reg0_carry_i_8_n_0,
      S(1) => clock_out_pre_buff_reg0_carry_i_9_n_0,
      S(0) => clock_out_pre_buff_reg0_carry_i_10_n_0
    );
\clock_out_pre_buff_reg0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => clock_out_pre_buff_reg0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_clock_out_pre_buff_reg0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => p_1_in,
      CO(4) => \clock_out_pre_buff_reg0_carry__0_n_3\,
      CO(3) => \clock_out_pre_buff_reg0_carry__0_n_4\,
      CO(2) => \clock_out_pre_buff_reg0_carry__0_n_5\,
      CO(1) => \clock_out_pre_buff_reg0_carry__0_n_6\,
      CO(0) => \clock_out_pre_buff_reg0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_clock_out_pre_buff_reg0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => \clock_out_pre_buff_reg0_carry__0_i_1_n_0\,
      S(4) => \clock_out_pre_buff_reg0_carry__0_i_2_n_0\,
      S(3) => \clock_out_pre_buff_reg0_carry__0_i_3_n_0\,
      S(2) => \clock_out_pre_buff_reg0_carry__0_i_4_n_0\,
      S(1) => \clock_out_pre_buff_reg0_carry__0_i_5_n_0\,
      S(0) => \clock_out_pre_buff_reg0_carry__0_i_6_n_0\
    );
\clock_out_pre_buff_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      O => \clock_out_pre_buff_reg0_carry__0_i_1_n_0\
    );
\clock_out_pre_buff_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      O => \clock_out_pre_buff_reg0_carry__0_i_2_n_0\
    );
\clock_out_pre_buff_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      O => \clock_out_pre_buff_reg0_carry__0_i_3_n_0\
    );
\clock_out_pre_buff_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => \clock_out_pre_buff_reg0_carry__0_i_4_n_0\
    );
\clock_out_pre_buff_reg0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => \clock_out_pre_buff_reg0_carry__0_i_5_n_0\
    );
\clock_out_pre_buff_reg0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      O => \clock_out_pre_buff_reg0_carry__0_i_6_n_0\
    );
clock_out_pre_buff_reg0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter_reg(2),
      I1 => divisor(3),
      I2 => counter_reg(3),
      O => clock_out_pre_buff_reg0_carry_i_1_n_0
    );
clock_out_pre_buff_reg0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => divisor(1),
      I1 => counter_reg(0),
      I2 => divisor(2),
      I3 => counter_reg(1),
      O => clock_out_pre_buff_reg0_carry_i_10_n_0
    );
clock_out_pre_buff_reg0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => divisor(1),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => divisor(2),
      O => clock_out_pre_buff_reg0_carry_i_2_n_0
    );
clock_out_pre_buff_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      O => clock_out_pre_buff_reg0_carry_i_3_n_0
    );
clock_out_pre_buff_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      O => clock_out_pre_buff_reg0_carry_i_4_n_0
    );
clock_out_pre_buff_reg0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      O => clock_out_pre_buff_reg0_carry_i_5_n_0
    );
clock_out_pre_buff_reg0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => clock_out_pre_buff_reg0_carry_i_6_n_0
    );
clock_out_pre_buff_reg0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => clock_out_pre_buff_reg0_carry_i_7_n_0
    );
clock_out_pre_buff_reg0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      O => clock_out_pre_buff_reg0_carry_i_8_n_0
    );
clock_out_pre_buff_reg0_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => divisor(3),
      I1 => counter_reg(2),
      I2 => counter_reg(3),
      O => clock_out_pre_buff_reg0_carry_i_9_n_0
    );
counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => counter0_carry_n_0,
      CO(6) => counter0_carry_n_1,
      CO(5) => counter0_carry_n_2,
      CO(4) => counter0_carry_n_3,
      CO(3) => counter0_carry_n_4,
      CO(2) => counter0_carry_n_5,
      CO(1) => counter0_carry_n_6,
      CO(0) => counter0_carry_n_7,
      DI(7) => counter0_carry_i_1_n_0,
      DI(6) => counter0_carry_i_2_n_0,
      DI(5) => counter0_carry_i_3_n_0,
      DI(4) => counter0_carry_i_4_n_0,
      DI(3) => counter0_carry_i_5_n_0,
      DI(2) => counter0_carry_i_6_n_0,
      DI(1) => counter0_carry_i_7_n_0,
      DI(0) => counter0_carry_i_8_n_0,
      O(7 downto 0) => NLW_counter0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => counter0_carry_i_9_n_0,
      S(6) => counter0_carry_i_10_n_0,
      S(5) => counter0_carry_i_11_n_0,
      S(4) => counter0_carry_i_12_n_0,
      S(3) => counter0_carry_i_13_n_0,
      S(2) => counter0_carry_i_14_n_0,
      S(1) => counter0_carry_i_15_n_0,
      S(0) => counter0_carry_i_16_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \counter0_carry__0_n_0\,
      CO(6) => \counter0_carry__0_n_1\,
      CO(5) => \counter0_carry__0_n_2\,
      CO(4) => \counter0_carry__0_n_3\,
      CO(3) => \counter0_carry__0_n_4\,
      CO(2) => \counter0_carry__0_n_5\,
      CO(1) => \counter0_carry__0_n_6\,
      CO(0) => \counter0_carry__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \counter0_carry__0_i_1_n_0\,
      DI(4) => \counter0_carry__0_i_2_n_0\,
      DI(3) => \counter0_carry__0_i_3_n_0\,
      DI(2) => \counter0_carry__0_i_4_n_0\,
      DI(1) => \counter0_carry__0_i_5_n_0\,
      DI(0) => \counter0_carry__0_i_6_n_0\,
      O(7 downto 0) => \NLW_counter0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => counter1_n_0,
      S(6) => counter1_rep_n_0,
      S(5) => \counter0_carry__0_i_7_n_0\,
      S(4) => \counter0_carry__0_i_8_n_0\,
      S(3) => \counter0_carry__0_i_9_n_0\,
      S(2) => \counter0_carry__0_i_10_n_0\,
      S(1) => \counter0_carry__0_i_11_n_0\,
      S(0) => \counter0_carry__0_i_12_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_10_n_0\
    );
\counter0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_11_n_0\
    );
\counter0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_12_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_5_n_0\
    );
\counter0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_6_n_0\
    );
\counter0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_7_n_0\
    );
\counter0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_8_n_0\
    );
\counter0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => \counter0_carry__0_i_9_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_10_n_0
    );
counter0_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_11_n_0
    );
counter0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_12_n_0
    );
counter0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_13_n_0
    );
counter0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_14_n_0
    );
counter0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_15_n_0
    );
counter0_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4218"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => divisor(0),
      I3 => divisor(1),
      O => counter0_carry_i_16_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_4_n_0
    );
counter0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_5_n_0
    );
counter0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_6_n_0
    );
counter0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088CCECECEE0"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_7_n_0
    );
counter0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CE0"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => divisor(0),
      I3 => divisor(1),
      O => counter0_carry_i_8_n_0
    );
counter0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111118"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      I2 => divisor(2),
      I3 => divisor(0),
      I4 => divisor(1),
      I5 => divisor(3),
      O => counter0_carry_i_9_n_0
    );
counter1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => divisor(2),
      I1 => divisor(0),
      I2 => divisor(1),
      I3 => divisor(3),
      O => counter1_n_0
    );
counter1_rep: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => divisor(2),
      I1 => divisor(0),
      I2 => divisor(1),
      I3 => divisor(3),
      O => counter1_rep_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \counter0_carry__0_n_0\,
      I1 => rstn,
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_15\,
      Q => counter_reg(0),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_2_n_0\,
      CO(6) => \counter_reg[0]_i_2_n_1\,
      CO(5) => \counter_reg[0]_i_2_n_2\,
      CO(4) => \counter_reg[0]_i_2_n_3\,
      CO(3) => \counter_reg[0]_i_2_n_4\,
      CO(2) => \counter_reg[0]_i_2_n_5\,
      CO(1) => \counter_reg[0]_i_2_n_6\,
      CO(0) => \counter_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \counter_reg[0]_i_2_n_8\,
      O(6) => \counter_reg[0]_i_2_n_9\,
      O(5) => \counter_reg[0]_i_2_n_10\,
      O(4) => \counter_reg[0]_i_2_n_11\,
      O(3) => \counter_reg[0]_i_2_n_12\,
      O(2) => \counter_reg[0]_i_2_n_13\,
      O(1) => \counter_reg[0]_i_2_n_14\,
      O(0) => \counter_reg[0]_i_2_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => \counter[0]_i_3_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_13\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_12\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_11\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_10\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_9\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_8\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_15\,
      Q => counter_reg(16),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1_n_0\,
      CO(6) => \counter_reg[16]_i_1_n_1\,
      CO(5) => \counter_reg[16]_i_1_n_2\,
      CO(4) => \counter_reg[16]_i_1_n_3\,
      CO(3) => \counter_reg[16]_i_1_n_4\,
      CO(2) => \counter_reg[16]_i_1_n_5\,
      CO(1) => \counter_reg[16]_i_1_n_6\,
      CO(0) => \counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1_n_8\,
      O(6) => \counter_reg[16]_i_1_n_9\,
      O(5) => \counter_reg[16]_i_1_n_10\,
      O(4) => \counter_reg[16]_i_1_n_11\,
      O(3) => \counter_reg[16]_i_1_n_12\,
      O(2) => \counter_reg[16]_i_1_n_13\,
      O(1) => \counter_reg[16]_i_1_n_14\,
      O(0) => \counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_14\,
      Q => counter_reg(17),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_13\,
      Q => counter_reg(18),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_12\,
      Q => counter_reg(19),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_14\,
      Q => counter_reg(1),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_11\,
      Q => counter_reg(20),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_10\,
      Q => counter_reg(21),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_9\,
      Q => counter_reg(22),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[16]_i_1_n_8\,
      Q => counter_reg(23),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_15\,
      Q => counter_reg(24),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \counter_reg[24]_i_1_n_5\,
      CO(1) => \counter_reg[24]_i_1_n_6\,
      CO(0) => \counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \counter_reg[24]_i_1_n_12\,
      O(2) => \counter_reg[24]_i_1_n_13\,
      O(1) => \counter_reg[24]_i_1_n_14\,
      O(0) => \counter_reg[24]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_14\,
      Q => counter_reg(25),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_13\,
      Q => counter_reg(26),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[24]_i_1_n_12\,
      Q => counter_reg(27),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_13\,
      Q => counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_12\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_11\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_10\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_9\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[0]_i_2_n_8\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_15\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1_n_0\,
      CO(6) => \counter_reg[8]_i_1_n_1\,
      CO(5) => \counter_reg[8]_i_1_n_2\,
      CO(4) => \counter_reg[8]_i_1_n_3\,
      CO(3) => \counter_reg[8]_i_1_n_4\,
      CO(2) => \counter_reg[8]_i_1_n_5\,
      CO(1) => \counter_reg[8]_i_1_n_6\,
      CO(0) => \counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1_n_8\,
      O(6) => \counter_reg[8]_i_1_n_9\,
      O(5) => \counter_reg[8]_i_1_n_10\,
      O(4) => \counter_reg[8]_i_1_n_11\,
      O(3) => \counter_reg[8]_i_1_n_12\,
      O(2) => \counter_reg[8]_i_1_n_13\,
      O(1) => \counter_reg[8]_i_1_n_14\,
      O(0) => \counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \counter_reg[8]_i_1_n_14\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clock_in : in STD_LOGIC;
    clock_out : out STD_LOGIC;
    rstn : in STD_LOGIC;
    divisor : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "seeg_zynq_clock_divider_0_0,clock_divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clock_divider,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock_in : signal is "xilinx.com:signal:clock:1.0 clock_in CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock_in : signal is "XIL_INTERFACENAME clock_in, FREQ_HZ 78000972, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seeg_zynq_clk_wiz_0_0_clk_78M, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clock_out : signal is "xilinx.com:signal:clock:1.0 clock_out CLK";
  attribute X_INTERFACE_PARAMETER of clock_out : signal is "XIL_INTERFACENAME clock_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seeg_zynq_clock_divider_0_0_clock_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
     port map (
      clock_in => clock_in,
      clock_out => clock_out,
      divisor(3 downto 0) => divisor(3 downto 0),
      rstn => rstn
    );
end STRUCTURE;
