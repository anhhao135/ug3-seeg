-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Sep 10 15:19:47 2024
-- Host        : GramForGram running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cable_delay_tester_rhs_spi_master_0_0_sim_netlist.vhdl
-- Design      : cable_delay_tester_rhs_spi_master_0_0
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
    SCLK : out STD_LOGIC;
    busy : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    busy_0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider is
  signal \^busy\ : STD_LOGIC;
  signal clock_out_i_1_n_0 : STD_LOGIC;
  signal clock_out_i_2_n_0 : STD_LOGIC;
  signal clock_out_i_3_n_0 : STD_LOGIC;
  signal clock_out_i_4_n_0 : STD_LOGIC;
  signal clock_out_i_6_n_0 : STD_LOGIC;
  signal clock_out_i_7_n_0 : STD_LOGIC;
  signal clock_out_i_8_n_0 : STD_LOGIC;
  signal clock_out_i_9_n_0 : STD_LOGIC;
  signal \counter0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_9_n_0\ : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC;
  signal NLW_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of clock_out_i_9 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of counter0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 16;
begin
  busy <= \^busy\;
busy_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => busy_0(2),
      I1 => busy_0(1),
      I2 => busy_0(0),
      O => \^busy\
    );
clock_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => clock_out_i_2_n_0,
      I1 => clock_out_i_3_n_0,
      I2 => clock_out_i_4_n_0,
      I3 => counter_reg(2),
      I4 => counter_reg(12),
      I5 => counter_reg(13),
      O => clock_out_i_1_n_0
    );
clock_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_0_in,
      I1 => counter_reg(11),
      I2 => counter_reg(10),
      I3 => counter_reg(9),
      I4 => counter_reg(8),
      I5 => clock_out_i_6_n_0,
      O => clock_out_i_2_n_0
    );
clock_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      I2 => counter_reg(24),
      I3 => counter_reg(25),
      I4 => counter_reg(27),
      I5 => counter_reg(26),
      O => clock_out_i_3_n_0
    );
clock_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      I2 => counter_reg(16),
      I3 => counter_reg(17),
      I4 => clock_out_i_7_n_0,
      I5 => clock_out_i_8_n_0,
      O => clock_out_i_4_n_0
    );
clock_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => busy_0(0),
      I5 => clock_out_i_9_n_0,
      O => p_0_in
    );
clock_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => counter_reg(6),
      I3 => counter_reg(7),
      I4 => counter_reg(3),
      O => clock_out_i_6_n_0
    );
clock_out_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => clock_out_i_7_n_0
    );
clock_out_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => clock_out_i_8_n_0
    );
clock_out_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => busy_0(1),
      I1 => busy_0(2),
      O => clock_out_i_9_n_0
    );
clock_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clock_out_i_1_n_0,
      Q => SCLK,
      R => '0'
    );
counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter0_carry_i_1_n_0,
      CI_TOP => '0',
      CO(7) => counter0_carry_n_0,
      CO(6) => counter0_carry_n_1,
      CO(5) => counter0_carry_n_2,
      CO(4) => counter0_carry_n_3,
      CO(3) => counter0_carry_n_4,
      CO(2) => counter0_carry_n_5,
      CO(1) => counter0_carry_n_6,
      CO(0) => counter0_carry_n_7,
      DI(7) => counter0_carry_i_2_n_0,
      DI(6) => counter0_carry_i_3_n_0,
      DI(5) => counter0_carry_i_4_n_0,
      DI(4) => counter0_carry_i_5_n_0,
      DI(3) => counter0_carry_i_6_n_0,
      DI(2) => counter0_carry_i_7_n_0,
      DI(1) => counter0_carry_i_8_n_0,
      DI(0) => counter_reg(3),
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
      CO(7 downto 5) => \NLW_counter0_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \counter0_carry__0_n_3\,
      CO(3) => \counter0_carry__0_n_4\,
      CO(2) => \counter0_carry__0_n_5\,
      CO(1) => \counter0_carry__0_n_6\,
      CO(0) => \counter0_carry__0_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \counter0_carry__0_i_1_n_0\,
      DI(3) => \counter0_carry__0_i_2_n_0\,
      DI(2) => \counter0_carry__0_i_3_n_0\,
      DI(1) => \counter0_carry__0_i_4_n_0\,
      DI(0) => \counter0_carry__0_i_5_n_0\,
      O(7 downto 0) => \NLW_counter0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \counter0_carry__0_i_6_n_0\,
      S(3) => \counter0_carry__0_i_7_n_0\,
      S(2) => \counter0_carry__0_i_8_n_0\,
      S(1) => \counter0_carry__0_i_9_n_0\,
      S(0) => \counter0_carry__0_i_10_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      O => \counter0_carry__0_i_10_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      O => \counter0_carry__0_i_5_n_0\
    );
\counter0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(27),
      I1 => counter_reg(26),
      O => \counter0_carry__0_i_6_n_0\
    );
\counter0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(25),
      I1 => counter_reg(24),
      O => \counter0_carry__0_i_7_n_0\
    );
\counter0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(23),
      I1 => counter_reg(22),
      O => \counter0_carry__0_i_8_n_0\
    );
\counter0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(21),
      I1 => counter_reg(20),
      O => \counter0_carry__0_i_9_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(14),
      O => counter0_carry_i_10_n_0
    );
counter0_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(13),
      I1 => counter_reg(12),
      O => counter0_carry_i_11_n_0
    );
counter0_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(10),
      O => counter0_carry_i_12_n_0
    );
counter0_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(8),
      O => counter0_carry_i_13_n_0
    );
counter0_carry_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(6),
      O => counter0_carry_i_14_n_0
    );
counter0_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(4),
      O => counter0_carry_i_15_n_0
    );
counter0_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(3),
      O => counter0_carry_i_16_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(15),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      O => counter0_carry_i_4_n_0
    );
counter0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      O => counter0_carry_i_5_n_0
    );
counter0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      O => counter0_carry_i_6_n_0
    );
counter0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(7),
      O => counter0_carry_i_7_n_0
    );
counter0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      O => counter0_carry_i_8_n_0
    );
counter0_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(16),
      O => counter0_carry_i_9_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555557"
    )
        port map (
      I0 => \^busy\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => \counter0_carry__0_n_3\,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhs_spi_master is
  port (
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    busy : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    oversample_offset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    rstn : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MISO : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhs_spi_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhs_spi_master is
  signal \^cs\ : STD_LOGIC;
  signal CS_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal MOSI_i_10_n_0 : STD_LOGIC;
  signal MOSI_i_11_n_0 : STD_LOGIC;
  signal MOSI_i_12_n_0 : STD_LOGIC;
  signal MOSI_i_13_n_0 : STD_LOGIC;
  signal MOSI_i_14_n_0 : STD_LOGIC;
  signal MOSI_i_15_n_0 : STD_LOGIC;
  signal MOSI_i_16_n_0 : STD_LOGIC;
  signal MOSI_i_17_n_0 : STD_LOGIC;
  signal MOSI_i_18_n_0 : STD_LOGIC;
  signal MOSI_i_19_n_0 : STD_LOGIC;
  signal MOSI_i_1_n_0 : STD_LOGIC;
  signal MOSI_i_2_n_0 : STD_LOGIC;
  signal MOSI_i_3_n_0 : STD_LOGIC;
  signal MOSI_i_4_n_0 : STD_LOGIC;
  signal MOSI_i_5_n_0 : STD_LOGIC;
  signal MOSI_i_6_n_0 : STD_LOGIC;
  signal MOSI_i_7_n_0 : STD_LOGIC;
  signal MOSI_i_8_n_0 : STD_LOGIC;
  signal MOSI_i_9_n_0 : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal clk_counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \clk_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_out1 : STD_LOGIC_VECTOR ( 28 downto 1 );
  signal data_out1_in : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \data_out1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \data_out1_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal data_out2 : STD_LOGIC;
  signal data_out2_carry_i_10_n_0 : STD_LOGIC;
  signal data_out2_carry_i_11_n_0 : STD_LOGIC;
  signal data_out2_carry_i_12_n_0 : STD_LOGIC;
  signal data_out2_carry_i_13_n_0 : STD_LOGIC;
  signal data_out2_carry_i_14_n_0 : STD_LOGIC;
  signal data_out2_carry_i_1_n_0 : STD_LOGIC;
  signal data_out2_carry_i_2_n_0 : STD_LOGIC;
  signal data_out2_carry_i_3_n_0 : STD_LOGIC;
  signal data_out2_carry_i_4_n_0 : STD_LOGIC;
  signal data_out2_carry_i_5_n_0 : STD_LOGIC;
  signal data_out2_carry_i_6_n_0 : STD_LOGIC;
  signal data_out2_carry_i_7_n_0 : STD_LOGIC;
  signal data_out2_carry_i_8_n_0 : STD_LOGIC;
  signal data_out2_carry_i_9_n_0 : STD_LOGIC;
  signal data_out2_carry_n_4 : STD_LOGIC;
  signal data_out2_carry_n_5 : STD_LOGIC;
  signal data_out2_carry_n_6 : STD_LOGIC;
  signal data_out2_carry_n_7 : STD_LOGIC;
  signal data_out3 : STD_LOGIC;
  signal \data_out3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out3_carry__0_n_14\ : STD_LOGIC;
  signal \data_out3_carry__0_n_15\ : STD_LOGIC;
  signal \data_out3_carry__0_n_5\ : STD_LOGIC;
  signal \data_out3_carry__0_n_7\ : STD_LOGIC;
  signal data_out3_carry_i_10_n_0 : STD_LOGIC;
  signal data_out3_carry_i_11_n_0 : STD_LOGIC;
  signal data_out3_carry_i_12_n_0 : STD_LOGIC;
  signal data_out3_carry_i_13_n_0 : STD_LOGIC;
  signal data_out3_carry_i_14_n_0 : STD_LOGIC;
  signal data_out3_carry_i_1_n_0 : STD_LOGIC;
  signal data_out3_carry_i_2_n_0 : STD_LOGIC;
  signal data_out3_carry_i_3_n_0 : STD_LOGIC;
  signal data_out3_carry_i_4_n_0 : STD_LOGIC;
  signal data_out3_carry_i_5_n_0 : STD_LOGIC;
  signal data_out3_carry_i_6_n_0 : STD_LOGIC;
  signal data_out3_carry_i_7_n_0 : STD_LOGIC;
  signal data_out3_carry_i_8_n_0 : STD_LOGIC;
  signal data_out3_carry_i_9_n_0 : STD_LOGIC;
  signal data_out3_carry_n_0 : STD_LOGIC;
  signal data_out3_carry_n_1 : STD_LOGIC;
  signal data_out3_carry_n_10 : STD_LOGIC;
  signal data_out3_carry_n_11 : STD_LOGIC;
  signal data_out3_carry_n_12 : STD_LOGIC;
  signal data_out3_carry_n_13 : STD_LOGIC;
  signal data_out3_carry_n_14 : STD_LOGIC;
  signal data_out3_carry_n_15 : STD_LOGIC;
  signal data_out3_carry_n_2 : STD_LOGIC;
  signal data_out3_carry_n_3 : STD_LOGIC;
  signal data_out3_carry_n_4 : STD_LOGIC;
  signal data_out3_carry_n_5 : STD_LOGIC;
  signal data_out3_carry_n_6 : STD_LOGIC;
  signal data_out3_carry_n_7 : STD_LOGIC;
  signal data_out3_carry_n_8 : STD_LOGIC;
  signal data_out3_carry_n_9 : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \data_out3_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[24]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[25]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[26]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[28]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[29]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[30]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal done_cs_hold_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \done_cs_hold_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \done_cs_hold_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \done_cs_hold_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \done_cs_hold_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal padding_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \padding_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \padding_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \padding_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \padding_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_data_out1_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_data_out2_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_data_out2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_data_out3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_data_out3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CS_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "PRE_BUSY:001,BUSY:010,POST_BUSY:011,DONE:100,READY:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "PRE_BUSY:001,BUSY:010,POST_BUSY:011,DONE:100,READY:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "PRE_BUSY:001,BUSY:010,POST_BUSY:011,DONE:100,READY:000";
  attribute SOFT_HLUTNM of MOSI_i_10 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of MOSI_i_19 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \clk_counter[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_counter[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_counter[8]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_counter[8]_i_3\ : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_out2_carry : label is 11;
  attribute SOFT_HLUTNM of data_out2_carry_i_12 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of data_out2_carry_i_13 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of data_out3_carry_i_14 : label is "soft_lutpair7";
  attribute HLUTNM : string;
  attribute HLUTNM of data_out3_carry_i_2 : label is "lutpair0";
  attribute HLUTNM of data_out3_carry_i_8 : label is "lutpair0";
  attribute COMPARATOR_THRESHOLD of \data_out3_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out3_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \data_out[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[23]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[24]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[25]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[26]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[27]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[28]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[29]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[30]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[31]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[31]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \done_cs_hold_counter[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \done_cs_hold_counter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \done_cs_hold_counter[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \done_cs_hold_counter[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \done_cs_hold_counter[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \done_cs_hold_counter[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i__carry_i_16\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \padding_counter[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \padding_counter[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \padding_counter[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \padding_counter[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \padding_counter[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \padding_counter[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \padding_counter[7]_i_2\ : label is "soft_lutpair14";
begin
  CS <= \^cs\;
  MOSI <= \^mosi\;
  busy <= \^busy\;
  data_out(31 downto 0) <= \^data_out\(31 downto 0);
CS_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDF000A"
    )
        port map (
      I0 => rstn,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \^cs\,
      O => CS_i_1_n_0
    );
CS_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => CS_i_1_n_0,
      Q => \^cs\,
      R => '0'
    );
ClockDivideByEight: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
     port map (
      Q(3) => \clk_counter_reg_n_0_[8]\,
      Q(2) => \clk_counter_reg_n_0_[7]\,
      Q(1) => \clk_counter_reg_n_0_[6]\,
      Q(0) => \clk_counter_reg_n_0_[5]\,
      SCLK => SCLK,
      busy => \^busy\,
      busy_0(2 downto 0) => \state__0\(2 downto 0),
      clk => clk
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAEFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => start,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state[0]_i_3_n_0\,
      I5 => \state__0\(2),
      O => \state__1\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_4_n_0\,
      I1 => \FSM_sequential_state[0]_i_5_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \clk_counter_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \padding_counter_reg_n_0_[7]\,
      I2 => \padding_counter_reg_n_0_[6]\,
      I3 => \padding_counter_reg_n_0_[5]\,
      I4 => \padding_counter_reg_n_0_[4]\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[4]\,
      I1 => \clk_counter_reg_n_0_[3]\,
      I2 => \clk_counter_reg_n_0_[2]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[8]\,
      I1 => \clk_counter_reg_n_0_[7]\,
      I2 => \clk_counter_reg_n_0_[6]\,
      I3 => \clk_counter_reg_n_0_[5]\,
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \state__0\(2),
      O => \state__1\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => state
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \padding_counter_reg_n_0_[7]\,
      I2 => \padding_counter_reg_n_0_[6]\,
      I3 => \padding_counter_reg_n_0_[5]\,
      I4 => \padding_counter_reg_n_0_[4]\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_6_n_0\,
      I1 => \done_cs_hold_counter_reg_n_0_[0]\,
      I2 => \done_cs_hold_counter_reg_n_0_[1]\,
      I3 => \done_cs_hold_counter_reg_n_0_[2]\,
      I4 => \done_cs_hold_counter_reg_n_0_[3]\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \padding_counter_reg_n_0_[1]\,
      I1 => \padding_counter_reg_n_0_[0]\,
      I2 => \padding_counter_reg_n_0_[3]\,
      I3 => \padding_counter_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \done_cs_hold_counter_reg_n_0_[4]\,
      I1 => \done_cs_hold_counter_reg_n_0_[5]\,
      I2 => \done_cs_hold_counter_reg_n_0_[7]\,
      I3 => \done_cs_hold_counter_reg_n_0_[6]\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \state__1\(0),
      Q => \state__0\(0),
      R => MOSI_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \state__1\(1),
      Q => \state__0\(1),
      R => MOSI_i_1_n_0
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state,
      D => \state__1\(2),
      Q => \state__0\(2),
      R => MOSI_i_1_n_0
    );
MOSI_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => MOSI_i_1_n_0
    );
MOSI_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \clk_counter_reg_n_0_[2]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      O => MOSI_i_10_n_0
    );
MOSI_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(3),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(6),
      I5 => data_in(4),
      O => MOSI_i_11_n_0
    );
MOSI_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(13),
      I1 => data_in(11),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(14),
      I5 => data_in(12),
      O => MOSI_i_12_n_0
    );
MOSI_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(31),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(2),
      I5 => data_in(0),
      O => MOSI_i_13_n_0
    );
MOSI_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(9),
      I1 => data_in(7),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(10),
      I5 => data_in(8),
      O => MOSI_i_14_n_0
    );
MOSI_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(21),
      I1 => data_in(19),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(22),
      I5 => data_in(20),
      O => MOSI_i_15_n_0
    );
MOSI_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(27),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(30),
      I5 => data_in(28),
      O => MOSI_i_16_n_0
    );
MOSI_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(17),
      I1 => data_in(15),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(18),
      I5 => data_in(16),
      O => MOSI_i_17_n_0
    );
MOSI_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(23),
      I2 => data_out3_carry_i_14_n_0,
      I3 => \clk_counter[4]_i_2_n_0\,
      I4 => data_in(26),
      I5 => data_in(24),
      O => MOSI_i_18_n_0
    );
MOSI_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEB"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[4]\,
      I1 => \clk_counter_reg_n_0_[3]\,
      I2 => \clk_counter_reg_n_0_[1]\,
      I3 => \clk_counter_reg_n_0_[0]\,
      I4 => \clk_counter_reg_n_0_[2]\,
      O => MOSI_i_19_n_0
    );
MOSI_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => data_in(31),
      I1 => MOSI_i_3_n_0,
      I2 => MOSI_i_4_n_0,
      I3 => \clk_counter[8]_i_1_n_0\,
      I4 => MOSI_i_5_n_0,
      I5 => \^mosi\,
      O => MOSI_i_2_n_0
    );
MOSI_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => MOSI_i_3_n_0
    );
MOSI_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F777777775F5F5F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => MOSI_i_6_n_0,
      I2 => MOSI_i_7_n_0,
      I3 => \clk_counter[6]_i_2_n_0\,
      I4 => \clk_counter[5]_i_2_n_0\,
      I5 => \clk_counter[7]_i_2_n_0\,
      O => MOSI_i_4_n_0
    );
MOSI_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFEEEEEEEE"
    )
        port map (
      I0 => \done_cs_hold_counter[7]_i_1_n_0\,
      I1 => MOSI_i_8_n_0,
      I2 => MOSI_i_9_n_0,
      I3 => \clk_counter[7]_i_2_n_0\,
      I4 => \clk_counter[6]_i_2_n_0\,
      I5 => MOSI_i_10_n_0,
      O => MOSI_i_5_n_0
    );
MOSI_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => MOSI_i_11_n_0,
      I1 => MOSI_i_12_n_0,
      I2 => \clk_counter[5]_i_2_n_0\,
      I3 => \clk_counter[6]_i_2_n_0\,
      I4 => MOSI_i_13_n_0,
      I5 => MOSI_i_14_n_0,
      O => MOSI_i_6_n_0
    );
MOSI_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => MOSI_i_15_n_0,
      I1 => MOSI_i_16_n_0,
      I2 => \clk_counter[5]_i_2_n_0\,
      I3 => \clk_counter[6]_i_2_n_0\,
      I4 => MOSI_i_17_n_0,
      I5 => MOSI_i_18_n_0,
      O => MOSI_i_7_n_0
    );
MOSI_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      O => MOSI_i_8_n_0
    );
MOSI_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555545FFFFFFFF"
    )
        port map (
      I0 => \clk_counter[5]_i_2_n_0\,
      I1 => \clk_counter_reg_n_0_[1]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[2]\,
      I4 => MOSI_i_19_n_0,
      I5 => \clk_counter[8]_i_3_n_0\,
      O => MOSI_i_9_n_0
    );
MOSI_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => MOSI_i_2_n_0,
      Q => \^mosi\,
      R => MOSI_i_1_n_0
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[0]\,
      I1 => \state__0\(1),
      O => clk_counter(0)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \clk_counter_reg_n_0_[1]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      O => clk_counter(1)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1FF"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[1]\,
      I1 => \clk_counter_reg_n_0_[0]\,
      I2 => \clk_counter_reg_n_0_[2]\,
      I3 => \state__0\(1),
      O => clk_counter(2)
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE01FFFF"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[2]\,
      I1 => \clk_counter_reg_n_0_[0]\,
      I2 => \clk_counter_reg_n_0_[1]\,
      I3 => \clk_counter_reg_n_0_[3]\,
      I4 => \state__0\(1),
      O => clk_counter(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \clk_counter[4]_i_2_n_0\,
      I1 => \state__0\(1),
      O => clk_counter(4)
    );
\clk_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[3]\,
      I1 => \clk_counter_reg_n_0_[1]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[2]\,
      I4 => \clk_counter_reg_n_0_[4]\,
      O => \clk_counter[4]_i_2_n_0\
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \clk_counter[5]_i_2_n_0\,
      O => clk_counter(5)
    );
\clk_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[4]\,
      I1 => \clk_counter_reg_n_0_[2]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      I4 => \clk_counter_reg_n_0_[3]\,
      I5 => \clk_counter_reg_n_0_[5]\,
      O => \clk_counter[5]_i_2_n_0\
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \clk_counter[6]_i_2_n_0\,
      O => clk_counter(6)
    );
\clk_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out3_carry__0_i_5_n_0\,
      I1 => \clk_counter_reg_n_0_[6]\,
      O => \clk_counter[6]_i_2_n_0\
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \clk_counter[7]_i_2_n_0\,
      O => clk_counter(7)
    );
\clk_counter[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[6]\,
      I1 => \data_out3_carry__0_i_5_n_0\,
      I2 => \clk_counter_reg_n_0_[7]\,
      O => \clk_counter[7]_i_2_n_0\
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      O => \clk_counter[8]_i_1_n_0\
    );
\clk_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \clk_counter[8]_i_3_n_0\,
      I1 => \state__0\(1),
      O => clk_counter(8)
    );
\clk_counter[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[7]\,
      I1 => \data_out3_carry__0_i_5_n_0\,
      I2 => \clk_counter_reg_n_0_[6]\,
      I3 => \clk_counter_reg_n_0_[8]\,
      O => \clk_counter[8]_i_3_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(0),
      Q => \clk_counter_reg_n_0_[0]\,
      S => MOSI_i_1_n_0
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(1),
      Q => \clk_counter_reg_n_0_[1]\,
      R => MOSI_i_1_n_0
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(2),
      Q => \clk_counter_reg_n_0_[2]\,
      S => MOSI_i_1_n_0
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(3),
      Q => \clk_counter_reg_n_0_[3]\,
      S => MOSI_i_1_n_0
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(4),
      Q => \clk_counter_reg_n_0_[4]\,
      S => MOSI_i_1_n_0
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(5),
      Q => \clk_counter_reg_n_0_[5]\,
      R => MOSI_i_1_n_0
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(6),
      Q => \clk_counter_reg_n_0_[6]\,
      R => MOSI_i_1_n_0
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(7),
      Q => \clk_counter_reg_n_0_[7]\,
      R => MOSI_i_1_n_0
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_1_n_0\,
      D => clk_counter(8),
      Q => \clk_counter_reg_n_0_[8]\,
      S => MOSI_i_1_n_0
    );
\data_out1_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out3_carry_n_12,
      CI_TOP => '0',
      CO(7) => \data_out1_inferred__0/i__carry_n_0\,
      CO(6) => \data_out1_inferred__0/i__carry_n_1\,
      CO(5) => \data_out1_inferred__0/i__carry_n_2\,
      CO(4) => \data_out1_inferred__0/i__carry_n_3\,
      CO(3) => \data_out1_inferred__0/i__carry_n_4\,
      CO(2) => \data_out1_inferred__0/i__carry_n_5\,
      CO(1) => \data_out1_inferred__0/i__carry_n_6\,
      CO(0) => \data_out1_inferred__0/i__carry_n_7\,
      DI(7) => \i__carry_i_1_n_0\,
      DI(6) => \i__carry_i_2__0_n_0\,
      DI(5) => \data_out3_carry__0_n_14\,
      DI(4) => \data_out3_carry__0_n_15\,
      DI(3) => data_out3_carry_n_8,
      DI(2) => data_out3_carry_n_9,
      DI(1) => data_out3_carry_n_10,
      DI(0) => data_out3_carry_n_11,
      O(7 downto 0) => data_out1(8 downto 1),
      S(7) => \data_out3_carry__0_n_5\,
      S(6) => \data_out3_carry__0_n_5\,
      S(5) => \i__carry_i_3__0_n_0\,
      S(4) => \i__carry_i_4__0_n_0\,
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\data_out1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out1_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out1_inferred__0/i__carry__0_n_0\,
      CO(6) => \data_out1_inferred__0/i__carry__0_n_1\,
      CO(5) => \data_out1_inferred__0/i__carry__0_n_2\,
      CO(4) => \data_out1_inferred__0/i__carry__0_n_3\,
      CO(3) => \data_out1_inferred__0/i__carry__0_n_4\,
      CO(2) => \data_out1_inferred__0/i__carry__0_n_5\,
      CO(1) => \data_out1_inferred__0/i__carry__0_n_6\,
      CO(0) => \data_out1_inferred__0/i__carry__0_n_7\,
      DI(7) => \i__carry__0_i_1__0_n_0\,
      DI(6) => \i__carry__0_i_2__0_n_0\,
      DI(5) => \i__carry__0_i_3__0_n_0\,
      DI(4) => \i__carry__0_i_4__0_n_0\,
      DI(3) => \i__carry__0_i_5__0_n_0\,
      DI(2) => \i__carry__0_i_6__0_n_0\,
      DI(1) => \i__carry__0_i_7__0_n_0\,
      DI(0) => \i__carry__0_i_8__0_n_0\,
      O(7 downto 0) => data_out1(16 downto 9),
      S(7) => \data_out3_carry__0_n_5\,
      S(6) => \data_out3_carry__0_n_5\,
      S(5) => \data_out3_carry__0_n_5\,
      S(4) => \data_out3_carry__0_n_5\,
      S(3) => \data_out3_carry__0_n_5\,
      S(2) => \data_out3_carry__0_n_5\,
      S(1) => \data_out3_carry__0_n_5\,
      S(0) => \data_out3_carry__0_n_5\
    );
\data_out1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out1_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out1_inferred__0/i__carry__1_n_0\,
      CO(6) => \data_out1_inferred__0/i__carry__1_n_1\,
      CO(5) => \data_out1_inferred__0/i__carry__1_n_2\,
      CO(4) => \data_out1_inferred__0/i__carry__1_n_3\,
      CO(3) => \data_out1_inferred__0/i__carry__1_n_4\,
      CO(2) => \data_out1_inferred__0/i__carry__1_n_5\,
      CO(1) => \data_out1_inferred__0/i__carry__1_n_6\,
      CO(0) => \data_out1_inferred__0/i__carry__1_n_7\,
      DI(7) => \i__carry__1_i_1_n_0\,
      DI(6) => \i__carry__1_i_2_n_0\,
      DI(5) => \i__carry__1_i_3_n_0\,
      DI(4) => \i__carry__1_i_4_n_0\,
      DI(3) => \i__carry__1_i_5_n_0\,
      DI(2) => \i__carry__1_i_6_n_0\,
      DI(1) => \i__carry__1_i_7_n_0\,
      DI(0) => \i__carry__1_i_8_n_0\,
      O(7 downto 0) => data_out1(24 downto 17),
      S(7) => \data_out3_carry__0_n_5\,
      S(6) => \data_out3_carry__0_n_5\,
      S(5) => \data_out3_carry__0_n_5\,
      S(4) => \data_out3_carry__0_n_5\,
      S(3) => \data_out3_carry__0_n_5\,
      S(2) => \data_out3_carry__0_n_5\,
      S(1) => \data_out3_carry__0_n_5\,
      S(0) => \data_out3_carry__0_n_5\
    );
\data_out1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out1_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_data_out1_inferred__0/i__carry__2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \data_out1_inferred__0/i__carry__2_n_3\,
      CO(3) => \NLW_data_out1_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \data_out1_inferred__0/i__carry__2_n_5\,
      CO(1) => \data_out1_inferred__0/i__carry__2_n_6\,
      CO(0) => \data_out1_inferred__0/i__carry__2_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(7 downto 4) => \NLW_data_out1_inferred__0/i__carry__2_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => data_out1(28 downto 25),
      S(7 downto 4) => B"0001",
      S(3) => \data_out3_carry__0_n_5\,
      S(2) => \data_out3_carry__0_n_5\,
      S(1) => \data_out3_carry__0_n_5\,
      S(0) => \data_out3_carry__0_n_5\
    );
data_out2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_data_out2_carry_CO_UNCONNECTED(7 downto 5),
      CO(4) => data_out2,
      CO(3) => data_out2_carry_n_4,
      CO(2) => data_out2_carry_n_5,
      CO(1) => data_out2_carry_n_6,
      CO(0) => data_out2_carry_n_7,
      DI(7 downto 5) => B"000",
      DI(4) => data_out2_carry_i_1_n_0,
      DI(3) => data_out2_carry_i_2_n_0,
      DI(2) => data_out2_carry_i_3_n_0,
      DI(1) => data_out2_carry_i_4_n_0,
      DI(0) => data_out2_carry_i_5_n_0,
      O(7 downto 0) => NLW_data_out2_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => data_out2_carry_i_6_n_0,
      S(3) => data_out2_carry_i_7_n_0,
      S(2) => data_out2_carry_i_8_n_0,
      S(1) => data_out2_carry_i_9_n_0,
      S(0) => data_out2_carry_i_10_n_0
    );
data_out2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => oversample_offset(7),
      I1 => \clk_counter[8]_i_3_n_0\,
      I2 => data_out2_carry_i_11_n_0,
      O => data_out2_carry_i_1_n_0
    );
data_out2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8412"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[1]\,
      I1 => \clk_counter_reg_n_0_[0]\,
      I2 => oversample_offset(1),
      I3 => oversample_offset(0),
      O => data_out2_carry_i_10_n_0
    );
data_out2_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015555555"
    )
        port map (
      I0 => oversample_offset(5),
      I1 => oversample_offset(3),
      I2 => oversample_offset(1),
      I3 => oversample_offset(2),
      I4 => oversample_offset(4),
      I5 => oversample_offset(6),
      O => data_out2_carry_i_11_n_0
    );
data_out2_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => oversample_offset(4),
      I1 => oversample_offset(2),
      I2 => oversample_offset(1),
      I3 => oversample_offset(3),
      I4 => oversample_offset(5),
      O => data_out2_carry_i_12_n_0
    );
data_out2_carry_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => oversample_offset(2),
      I1 => oversample_offset(1),
      I2 => oversample_offset(3),
      O => data_out2_carry_i_13_n_0
    );
data_out2_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"955555556AAAAAAA"
    )
        port map (
      I0 => oversample_offset(5),
      I1 => oversample_offset(3),
      I2 => oversample_offset(1),
      I3 => oversample_offset(2),
      I4 => oversample_offset(4),
      I5 => \clk_counter[5]_i_2_n_0\,
      O => data_out2_carry_i_14_n_0
    );
data_out2_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2CF0082"
    )
        port map (
      I0 => \clk_counter[6]_i_2_n_0\,
      I1 => oversample_offset(6),
      I2 => data_out2_carry_i_12_n_0,
      I3 => oversample_offset(7),
      I4 => \clk_counter[7]_i_2_n_0\,
      O => data_out2_carry_i_2_n_0
    );
data_out2_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB2C2008"
    )
        port map (
      I0 => \clk_counter[4]_i_2_n_0\,
      I1 => oversample_offset(4),
      I2 => data_out2_carry_i_13_n_0,
      I3 => oversample_offset(5),
      I4 => \clk_counter[5]_i_2_n_0\,
      O => data_out2_carry_i_3_n_0
    );
data_out2_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2BF8002"
    )
        port map (
      I0 => \i__carry_i_16_n_0\,
      I1 => oversample_offset(2),
      I2 => oversample_offset(1),
      I3 => oversample_offset(3),
      I4 => data_out3_carry_i_14_n_0,
      O => data_out2_carry_i_4_n_0
    );
data_out2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4CD0"
    )
        port map (
      I0 => oversample_offset(0),
      I1 => oversample_offset(1),
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      O => data_out2_carry_i_5_n_0
    );
data_out2_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \clk_counter[8]_i_3_n_0\,
      I1 => oversample_offset(7),
      I2 => data_out2_carry_i_11_n_0,
      O => data_out2_carry_i_6_n_0
    );
data_out2_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24188241"
    )
        port map (
      I0 => oversample_offset(7),
      I1 => data_out2_carry_i_12_n_0,
      I2 => oversample_offset(6),
      I3 => \clk_counter[7]_i_2_n_0\,
      I4 => \clk_counter[6]_i_2_n_0\,
      O => data_out2_carry_i_7_n_0
    );
data_out2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888882222222"
    )
        port map (
      I0 => data_out2_carry_i_14_n_0,
      I1 => oversample_offset(4),
      I2 => oversample_offset(2),
      I3 => oversample_offset(1),
      I4 => oversample_offset(3),
      I5 => \clk_counter[4]_i_2_n_0\,
      O => data_out2_carry_i_8_n_0
    );
data_out2_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28144281"
    )
        port map (
      I0 => oversample_offset(3),
      I1 => oversample_offset(1),
      I2 => oversample_offset(2),
      I3 => data_out3_carry_i_14_n_0,
      I4 => \i__carry_i_16_n_0\,
      O => data_out2_carry_i_9_n_0
    );
data_out3_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out3_carry_n_0,
      CO(6) => data_out3_carry_n_1,
      CO(5) => data_out3_carry_n_2,
      CO(4) => data_out3_carry_n_3,
      CO(3) => data_out3_carry_n_4,
      CO(2) => data_out3_carry_n_5,
      CO(1) => data_out3_carry_n_6,
      CO(0) => data_out3_carry_n_7,
      DI(7) => data_out3_carry_i_1_n_0,
      DI(6) => data_out3_carry_i_2_n_0,
      DI(5) => data_out3_carry_i_3_n_0,
      DI(4) => data_out3_carry_i_4_n_0,
      DI(3) => oversample_offset(2),
      DI(2) => data_out3_carry_i_5_n_0,
      DI(1 downto 0) => oversample_offset(1 downto 0),
      O(7) => data_out3_carry_n_8,
      O(6) => data_out3_carry_n_9,
      O(5) => data_out3_carry_n_10,
      O(4) => data_out3_carry_n_11,
      O(3) => data_out3_carry_n_12,
      O(2) => data_out3_carry_n_13,
      O(1) => data_out3_carry_n_14,
      O(0) => data_out3_carry_n_15,
      S(7) => data_out3_carry_i_6_n_0,
      S(6) => data_out3_carry_i_7_n_0,
      S(5) => data_out3_carry_i_8_n_0,
      S(4) => data_out3_carry_i_9_n_0,
      S(3) => data_out3_carry_i_10_n_0,
      S(2) => data_out3_carry_i_11_n_0,
      S(1) => data_out3_carry_i_12_n_0,
      S(0) => data_out3_carry_i_13_n_0
    );
\data_out3_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out3_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out3_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \data_out3_carry__0_n_5\,
      CO(1) => \NLW_data_out3_carry__0_CO_UNCONNECTED\(1),
      CO(0) => \data_out3_carry__0_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \data_out3_carry__0_i_1_n_0\,
      DI(0) => \data_out3_carry__0_i_2_n_0\,
      O(7 downto 2) => \NLW_data_out3_carry__0_O_UNCONNECTED\(7 downto 2),
      O(1) => \data_out3_carry__0_n_14\,
      O(0) => \data_out3_carry__0_n_15\,
      S(7 downto 2) => B"000001",
      S(1) => \data_out3_carry__0_i_3_n_0\,
      S(0) => \data_out3_carry__0_i_4_n_0\
    );
\data_out3_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_counter[8]_i_3_n_0\,
      O => \data_out3_carry__0_i_1_n_0\
    );
\data_out3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => oversample_offset(7),
      I1 => \clk_counter[7]_i_2_n_0\,
      O => \data_out3_carry__0_i_2_n_0\
    );
\data_out3_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[7]\,
      I1 => \data_out3_carry__0_i_5_n_0\,
      I2 => \clk_counter_reg_n_0_[6]\,
      I3 => \clk_counter_reg_n_0_[8]\,
      O => \data_out3_carry__0_i_3_n_0\
    );
\data_out3_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \clk_counter[7]_i_2_n_0\,
      I1 => oversample_offset(7),
      I2 => \clk_counter[8]_i_3_n_0\,
      O => \data_out3_carry__0_i_4_n_0\
    );
\data_out3_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[4]\,
      I1 => \clk_counter_reg_n_0_[2]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      I4 => \clk_counter_reg_n_0_[3]\,
      I5 => \clk_counter_reg_n_0_[5]\,
      O => \data_out3_carry__0_i_5_n_0\
    );
data_out3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \clk_counter[6]_i_2_n_0\,
      O => data_out3_carry_i_1_n_0
    );
data_out3_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA955565556AAA9"
    )
        port map (
      I0 => oversample_offset(2),
      I1 => \clk_counter_reg_n_0_[2]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      I4 => \clk_counter_reg_n_0_[3]\,
      I5 => oversample_offset(3),
      O => data_out3_carry_i_10_n_0
    );
data_out3_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => oversample_offset(2),
      I1 => \clk_counter_reg_n_0_[2]\,
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      O => data_out3_carry_i_11_n_0
    );
data_out3_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[1]\,
      I1 => \clk_counter_reg_n_0_[0]\,
      I2 => oversample_offset(1),
      O => data_out3_carry_i_12_n_0
    );
data_out3_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[0]\,
      I1 => oversample_offset(0),
      O => data_out3_carry_i_13_n_0
    );
data_out3_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[2]\,
      I1 => \clk_counter_reg_n_0_[0]\,
      I2 => \clk_counter_reg_n_0_[1]\,
      I3 => \clk_counter_reg_n_0_[3]\,
      O => data_out3_carry_i_14_n_0
    );
data_out3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => oversample_offset(5),
      I1 => \clk_counter[5]_i_2_n_0\,
      O => data_out3_carry_i_2_n_0
    );
data_out3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => oversample_offset(5),
      I1 => \clk_counter[5]_i_2_n_0\,
      O => data_out3_carry_i_3_n_0
    );
data_out3_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => oversample_offset(3),
      I1 => \clk_counter_reg_n_0_[3]\,
      I2 => \clk_counter_reg_n_0_[1]\,
      I3 => \clk_counter_reg_n_0_[0]\,
      I4 => \clk_counter_reg_n_0_[2]\,
      O => data_out3_carry_i_4_n_0
    );
data_out3_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oversample_offset(2),
      O => data_out3_carry_i_5_n_0
    );
data_out3_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_out3_carry_i_1_n_0,
      I1 => \clk_counter[7]_i_2_n_0\,
      I2 => oversample_offset(7),
      O => data_out3_carry_i_6_n_0
    );
data_out3_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \clk_counter[6]_i_2_n_0\,
      I2 => data_out3_carry_i_2_n_0,
      O => data_out3_carry_i_7_n_0
    );
data_out3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => oversample_offset(5),
      I1 => \clk_counter[5]_i_2_n_0\,
      I2 => \clk_counter[4]_i_2_n_0\,
      I3 => oversample_offset(4),
      O => data_out3_carry_i_8_n_0
    );
data_out3_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data_out3_carry_i_14_n_0,
      I1 => oversample_offset(3),
      I2 => \clk_counter[4]_i_2_n_0\,
      I3 => oversample_offset(4),
      O => data_out3_carry_i_9_n_0
    );
\data_out3_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \data_out3_inferred__0/i__carry_n_0\,
      CO(6) => \data_out3_inferred__0/i__carry_n_1\,
      CO(5) => \data_out3_inferred__0/i__carry_n_2\,
      CO(4) => \data_out3_inferred__0/i__carry_n_3\,
      CO(3) => \data_out3_inferred__0/i__carry_n_4\,
      CO(2) => \data_out3_inferred__0/i__carry_n_5\,
      CO(1) => \data_out3_inferred__0/i__carry_n_6\,
      CO(0) => \data_out3_inferred__0/i__carry_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \i__carry_i_1__0_n_0\,
      DI(3) => \i__carry_i_2_n_0\,
      DI(2) => \i__carry_i_3_n_0\,
      DI(1) => \i__carry_i_4_n_0\,
      DI(0) => \i__carry_i_5_n_0\,
      O(7 downto 0) => \NLW_data_out3_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_6__0_n_0\,
      S(6) => \i__carry_i_7__0_n_0\,
      S(5) => \i__carry_i_8__0_n_0\,
      S(4) => \i__carry_i_9_n_0\,
      S(3) => \i__carry_i_10_n_0\,
      S(2) => \i__carry_i_11_n_0\,
      S(1) => \i__carry_i_12_n_0\,
      S(0) => \i__carry_i_13_n_0\
    );
\data_out3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out3_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => data_out3,
      CO(6) => \data_out3_inferred__0/i__carry__0_n_1\,
      CO(5) => \data_out3_inferred__0/i__carry__0_n_2\,
      CO(4) => \data_out3_inferred__0/i__carry__0_n_3\,
      CO(3) => \data_out3_inferred__0/i__carry__0_n_4\,
      CO(2) => \data_out3_inferred__0/i__carry__0_n_5\,
      CO(1) => \data_out3_inferred__0/i__carry__0_n_6\,
      CO(0) => \data_out3_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_data_out3_inferred__0/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry__0_i_1_n_0\,
      S(6) => \i__carry__0_i_2_n_0\,
      S(5) => \i__carry__0_i_3_n_0\,
      S(4) => \i__carry__0_i_4_n_0\,
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[24]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[26]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(10),
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[27]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[28]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[29]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[30]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[31]_i_3_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(15),
      O => \data_out[15]_i_1_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \data_out[31]_i_5_n_0\,
      I1 => \data_out[31]_i_6_n_0\,
      I2 => \data_out[31]_i_7_n_0\,
      I3 => data_out1(4),
      I4 => data_out1(3),
      O => \data_out[15]_i_2_n_0\
    );
\data_out[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[24]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(16),
      O => \data_out[16]_i_1_n_0\
    );
\data_out[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[25]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(17),
      O => \data_out[17]_i_1_n_0\
    );
\data_out[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[26]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(18),
      O => \data_out[18]_i_1_n_0\
    );
\data_out[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[27]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(19),
      O => \data_out[19]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[25]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[28]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(20),
      O => \data_out[20]_i_1_n_0\
    );
\data_out[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[29]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(21),
      O => \data_out[21]_i_1_n_0\
    );
\data_out[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[30]_i_2_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(22),
      O => \data_out[22]_i_1_n_0\
    );
\data_out[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[31]_i_3_n_0\,
      I2 => \data_out[23]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(23),
      O => \data_out[23]_i_1_n_0\
    );
\data_out[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \data_out[31]_i_5_n_0\,
      I1 => \data_out[31]_i_6_n_0\,
      I2 => \data_out[31]_i_7_n_0\,
      I3 => data_out1(3),
      I4 => data_out1(4),
      O => \data_out[23]_i_2_n_0\
    );
\data_out[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[24]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(24),
      O => \data_out[24]_i_1_n_0\
    );
\data_out[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => data_out3_carry_n_12,
      I1 => data_out1(2),
      I2 => data_out1(1),
      O => \data_out[24]_i_2_n_0\
    );
\data_out[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[25]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(25),
      O => \data_out[25]_i_1_n_0\
    );
\data_out[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data_out1(2),
      I1 => data_out3_carry_n_12,
      I2 => data_out1(1),
      O => \data_out[25]_i_2_n_0\
    );
\data_out[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[26]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(26),
      O => \data_out[26]_i_1_n_0\
    );
\data_out[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => data_out3_carry_n_12,
      I1 => data_out1(2),
      I2 => data_out1(1),
      O => \data_out[26]_i_2_n_0\
    );
\data_out[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[27]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(27),
      O => \data_out[27]_i_1_n_0\
    );
\data_out[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => data_out1(1),
      I1 => data_out1(2),
      I2 => data_out3_carry_n_12,
      O => \data_out[27]_i_2_n_0\
    );
\data_out[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[28]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(28),
      O => \data_out[28]_i_1_n_0\
    );
\data_out[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => data_out3_carry_n_12,
      I1 => data_out1(1),
      I2 => data_out1(2),
      O => \data_out[28]_i_2_n_0\
    );
\data_out[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[29]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(29),
      O => \data_out[29]_i_1_n_0\
    );
\data_out[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => data_out3_carry_n_12,
      I1 => data_out1(1),
      I2 => data_out1(2),
      O => \data_out[29]_i_2_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[26]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[30]_i_2_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(30),
      O => \data_out[30]_i_1_n_0\
    );
\data_out[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => data_out3_carry_n_12,
      I1 => data_out1(1),
      I2 => data_out1(2),
      O => \data_out[30]_i_2_n_0\
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[31]_i_3_n_0\,
      I2 => \data_out[31]_i_4_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(31),
      O => \data_out[31]_i_1_n_0\
    );
\data_out[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data_out1(7),
      I1 => data_out1(6),
      I2 => data_out1(14),
      O => \data_out[31]_i_10_n_0\
    );
\data_out[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(8),
      I1 => data_out1(11),
      I2 => data_out1(5),
      I3 => data_out1(9),
      O => \data_out[31]_i_11_n_0\
    );
\data_out[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(12),
      I1 => data_out1(15),
      I2 => data_out1(10),
      I3 => data_out1(13),
      O => \data_out[31]_i_12_n_0\
    );
\data_out[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => MISO,
      O => data_out1_in(31)
    );
\data_out[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => data_out1(1),
      I1 => data_out3_carry_n_12,
      I2 => data_out1(2),
      O => \data_out[31]_i_3_n_0\
    );
\data_out[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \data_out[31]_i_5_n_0\,
      I1 => \data_out[31]_i_6_n_0\,
      I2 => \data_out[31]_i_7_n_0\,
      I3 => data_out1(3),
      I4 => data_out1(4),
      O => \data_out[31]_i_4_n_0\
    );
\data_out[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^busy\,
      I1 => data_out3_carry_n_14,
      I2 => data_out3_carry_n_13,
      I3 => data_out3_carry_n_15,
      I4 => data_out3,
      I5 => data_out2,
      O => \data_out[31]_i_5_n_0\
    );
\data_out[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => data_out1(26),
      I1 => data_out1(27),
      I2 => data_out1(28),
      I3 => \data_out1_inferred__0/i__carry__2_n_3\,
      I4 => \data_out[31]_i_8_n_0\,
      O => \data_out[31]_i_6_n_0\
    );
\data_out[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[31]_i_9_n_0\,
      I1 => \data_out[31]_i_10_n_0\,
      I2 => \data_out[31]_i_11_n_0\,
      I3 => \data_out[31]_i_12_n_0\,
      I4 => data_out1(16),
      I5 => data_out1(17),
      O => \data_out[31]_i_7_n_0\
    );
\data_out[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(25),
      I1 => data_out1(24),
      I2 => data_out1(23),
      I3 => data_out1(22),
      O => \data_out[31]_i_8_n_0\
    );
\data_out[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_out1(21),
      I1 => data_out1(20),
      I2 => data_out1(19),
      I3 => data_out1(18),
      O => \data_out[31]_i_9_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[27]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[28]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[29]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[30]_i_2_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[31]_i_3_n_0\,
      I2 => \data_out[7]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \data_out[31]_i_5_n_0\,
      I1 => \data_out[31]_i_6_n_0\,
      I2 => \data_out[31]_i_7_n_0\,
      I3 => data_out1(3),
      I4 => data_out1(4),
      O => \data_out[7]_i_2_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[24]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(8),
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => data_out1_in(31),
      I1 => \data_out[25]_i_2_n_0\,
      I2 => \data_out[15]_i_2_n_0\,
      I3 => MOSI_i_3_n_0,
      I4 => \^data_out\(9),
      O => \data_out[9]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[0]_i_1_n_0\,
      Q => \^data_out\(0),
      R => MOSI_i_1_n_0
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[10]_i_1_n_0\,
      Q => \^data_out\(10),
      R => MOSI_i_1_n_0
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[11]_i_1_n_0\,
      Q => \^data_out\(11),
      R => MOSI_i_1_n_0
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[12]_i_1_n_0\,
      Q => \^data_out\(12),
      R => MOSI_i_1_n_0
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[13]_i_1_n_0\,
      Q => \^data_out\(13),
      R => MOSI_i_1_n_0
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[14]_i_1_n_0\,
      Q => \^data_out\(14),
      R => MOSI_i_1_n_0
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[15]_i_1_n_0\,
      Q => \^data_out\(15),
      R => MOSI_i_1_n_0
    );
\data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[16]_i_1_n_0\,
      Q => \^data_out\(16),
      R => MOSI_i_1_n_0
    );
\data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[17]_i_1_n_0\,
      Q => \^data_out\(17),
      R => MOSI_i_1_n_0
    );
\data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[18]_i_1_n_0\,
      Q => \^data_out\(18),
      R => MOSI_i_1_n_0
    );
\data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[19]_i_1_n_0\,
      Q => \^data_out\(19),
      R => MOSI_i_1_n_0
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[1]_i_1_n_0\,
      Q => \^data_out\(1),
      R => MOSI_i_1_n_0
    );
\data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[20]_i_1_n_0\,
      Q => \^data_out\(20),
      R => MOSI_i_1_n_0
    );
\data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[21]_i_1_n_0\,
      Q => \^data_out\(21),
      R => MOSI_i_1_n_0
    );
\data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[22]_i_1_n_0\,
      Q => \^data_out\(22),
      R => MOSI_i_1_n_0
    );
\data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[23]_i_1_n_0\,
      Q => \^data_out\(23),
      R => MOSI_i_1_n_0
    );
\data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[24]_i_1_n_0\,
      Q => \^data_out\(24),
      R => MOSI_i_1_n_0
    );
\data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[25]_i_1_n_0\,
      Q => \^data_out\(25),
      R => MOSI_i_1_n_0
    );
\data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[26]_i_1_n_0\,
      Q => \^data_out\(26),
      R => MOSI_i_1_n_0
    );
\data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[27]_i_1_n_0\,
      Q => \^data_out\(27),
      R => MOSI_i_1_n_0
    );
\data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[28]_i_1_n_0\,
      Q => \^data_out\(28),
      R => MOSI_i_1_n_0
    );
\data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[29]_i_1_n_0\,
      Q => \^data_out\(29),
      R => MOSI_i_1_n_0
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[2]_i_1_n_0\,
      Q => \^data_out\(2),
      R => MOSI_i_1_n_0
    );
\data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[30]_i_1_n_0\,
      Q => \^data_out\(30),
      R => MOSI_i_1_n_0
    );
\data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[31]_i_1_n_0\,
      Q => \^data_out\(31),
      R => MOSI_i_1_n_0
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[3]_i_1_n_0\,
      Q => \^data_out\(3),
      R => MOSI_i_1_n_0
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[4]_i_1_n_0\,
      Q => \^data_out\(4),
      R => MOSI_i_1_n_0
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[5]_i_1_n_0\,
      Q => \^data_out\(5),
      R => MOSI_i_1_n_0
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[6]_i_1_n_0\,
      Q => \^data_out\(6),
      R => MOSI_i_1_n_0
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[7]_i_1_n_0\,
      Q => \^data_out\(7),
      R => MOSI_i_1_n_0
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[8]_i_1_n_0\,
      Q => \^data_out\(8),
      R => MOSI_i_1_n_0
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_out[9]_i_1_n_0\,
      Q => \^data_out\(9),
      R => MOSI_i_1_n_0
    );
done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => done
    );
\done_cs_hold_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \done_cs_hold_counter_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      O => done_cs_hold_counter(0)
    );
\done_cs_hold_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \done_cs_hold_counter_reg_n_0_[1]\,
      I2 => \done_cs_hold_counter_reg_n_0_[0]\,
      O => done_cs_hold_counter(1)
    );
\done_cs_hold_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \done_cs_hold_counter_reg_n_0_[1]\,
      I2 => \done_cs_hold_counter_reg_n_0_[0]\,
      I3 => \done_cs_hold_counter_reg_n_0_[2]\,
      O => done_cs_hold_counter(2)
    );
\done_cs_hold_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540001"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \done_cs_hold_counter_reg_n_0_[2]\,
      I2 => \done_cs_hold_counter_reg_n_0_[0]\,
      I3 => \done_cs_hold_counter_reg_n_0_[1]\,
      I4 => \done_cs_hold_counter_reg_n_0_[3]\,
      O => done_cs_hold_counter(3)
    );
\done_cs_hold_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFF0001"
    )
        port map (
      I0 => \done_cs_hold_counter_reg_n_0_[2]\,
      I1 => \done_cs_hold_counter_reg_n_0_[0]\,
      I2 => \done_cs_hold_counter_reg_n_0_[1]\,
      I3 => \done_cs_hold_counter_reg_n_0_[3]\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \done_cs_hold_counter_reg_n_0_[4]\,
      O => done_cs_hold_counter(4)
    );
\done_cs_hold_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \done_cs_hold_counter[5]_i_2_n_0\,
      I2 => \done_cs_hold_counter_reg_n_0_[5]\,
      O => done_cs_hold_counter(5)
    );
\done_cs_hold_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \done_cs_hold_counter_reg_n_0_[3]\,
      I1 => \done_cs_hold_counter_reg_n_0_[1]\,
      I2 => \done_cs_hold_counter_reg_n_0_[0]\,
      I3 => \done_cs_hold_counter_reg_n_0_[2]\,
      I4 => \done_cs_hold_counter_reg_n_0_[4]\,
      O => \done_cs_hold_counter[5]_i_2_n_0\
    );
\done_cs_hold_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \done_cs_hold_counter[7]_i_3_n_0\,
      I2 => \done_cs_hold_counter_reg_n_0_[6]\,
      O => done_cs_hold_counter(6)
    );
\done_cs_hold_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \done_cs_hold_counter[7]_i_1_n_0\
    );
\done_cs_hold_counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \done_cs_hold_counter_reg_n_0_[6]\,
      I2 => \done_cs_hold_counter[7]_i_3_n_0\,
      I3 => \done_cs_hold_counter_reg_n_0_[7]\,
      O => done_cs_hold_counter(7)
    );
\done_cs_hold_counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \done_cs_hold_counter_reg_n_0_[4]\,
      I1 => \done_cs_hold_counter_reg_n_0_[2]\,
      I2 => \done_cs_hold_counter_reg_n_0_[0]\,
      I3 => \done_cs_hold_counter_reg_n_0_[1]\,
      I4 => \done_cs_hold_counter_reg_n_0_[3]\,
      I5 => \done_cs_hold_counter_reg_n_0_[5]\,
      O => \done_cs_hold_counter[7]_i_3_n_0\
    );
\done_cs_hold_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(0),
      Q => \done_cs_hold_counter_reg_n_0_[0]\,
      R => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(1),
      Q => \done_cs_hold_counter_reg_n_0_[1]\,
      R => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(2),
      Q => \done_cs_hold_counter_reg_n_0_[2]\,
      R => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(3),
      Q => \done_cs_hold_counter_reg_n_0_[3]\,
      R => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(4),
      Q => \done_cs_hold_counter_reg_n_0_[4]\,
      S => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(5),
      Q => \done_cs_hold_counter_reg_n_0_[5]\,
      R => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(6),
      Q => \done_cs_hold_counter_reg_n_0_[6]\,
      R => MOSI_i_1_n_0
    );
\done_cs_hold_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \done_cs_hold_counter[7]_i_1_n_0\,
      D => done_cs_hold_counter(7),
      Q => \done_cs_hold_counter_reg_n_0_[7]\,
      R => MOSI_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24188241"
    )
        port map (
      I0 => oversample_offset(7),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(6),
      I3 => \clk_counter[7]_i_2_n_0\,
      I4 => \clk_counter[6]_i_2_n_0\,
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906006"
    )
        port map (
      I0 => \clk_counter[5]_i_2_n_0\,
      I1 => oversample_offset(5),
      I2 => \i__carry_i_15_n_0\,
      I3 => oversample_offset(4),
      I4 => \clk_counter[4]_i_2_n_0\,
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A801540202A80154"
    )
        port map (
      I0 => oversample_offset(3),
      I1 => oversample_offset(0),
      I2 => oversample_offset(1),
      I3 => oversample_offset(2),
      I4 => data_out3_carry_i_14_n_0,
      I5 => \i__carry_i_16_n_0\,
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[1]\,
      I1 => oversample_offset(1),
      I2 => oversample_offset(0),
      I3 => \clk_counter_reg_n_0_[0]\,
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => oversample_offset(4),
      I1 => oversample_offset(2),
      I2 => oversample_offset(1),
      I3 => oversample_offset(0),
      I4 => oversample_offset(3),
      I5 => oversample_offset(5),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => oversample_offset(2),
      I1 => oversample_offset(1),
      I2 => oversample_offset(0),
      I3 => oversample_offset(3),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[1]\,
      I1 => \clk_counter_reg_n_0_[0]\,
      I2 => \clk_counter_reg_n_0_[2]\,
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      I3 => \clk_counter[8]_i_3_n_0\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0410DF34"
    )
        port map (
      I0 => \clk_counter[6]_i_2_n_0\,
      I1 => oversample_offset(6),
      I2 => \i__carry_i_14_n_0\,
      I3 => oversample_offset(7),
      I4 => \clk_counter[7]_i_2_n_0\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_5\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07103173"
    )
        port map (
      I0 => \clk_counter[4]_i_2_n_0\,
      I1 => \clk_counter[5]_i_2_n_0\,
      I2 => oversample_offset(4),
      I3 => \i__carry_i_15_n_0\,
      I4 => oversample_offset(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_14\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44400001FFFD4443"
    )
        port map (
      I0 => \i__carry_i_16_n_0\,
      I1 => oversample_offset(2),
      I2 => oversample_offset(1),
      I3 => oversample_offset(0),
      I4 => oversample_offset(3),
      I5 => data_out3_carry_i_14_n_0,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out3_carry__0_n_15\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"910B"
    )
        port map (
      I0 => oversample_offset(1),
      I1 => oversample_offset(0),
      I2 => \clk_counter_reg_n_0_[0]\,
      I3 => \clk_counter_reg_n_0_[1]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out3_carry_n_8,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out3_carry_n_9,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out3_carry_n_10,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out3_carry_n_11,
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => oversample_offset(6),
      I1 => \i__carry_i_14_n_0\,
      I2 => oversample_offset(7),
      I3 => \clk_counter[8]_i_3_n_0\,
      O => \i__carry_i_9_n_0\
    );
\padding_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \padding_counter_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      O => padding_counter(0)
    );
\padding_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \padding_counter_reg_n_0_[1]\,
      I2 => \padding_counter_reg_n_0_[0]\,
      O => padding_counter(1)
    );
\padding_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \padding_counter_reg_n_0_[1]\,
      I2 => \padding_counter_reg_n_0_[0]\,
      I3 => \padding_counter_reg_n_0_[2]\,
      O => padding_counter(2)
    );
\padding_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAB"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \padding_counter_reg_n_0_[0]\,
      I2 => \padding_counter_reg_n_0_[1]\,
      I3 => \padding_counter_reg_n_0_[2]\,
      I4 => \padding_counter_reg_n_0_[3]\,
      O => padding_counter(3)
    );
\padding_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0E00000001"
    )
        port map (
      I0 => \padding_counter_reg_n_0_[0]\,
      I1 => \padding_counter_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      I3 => \padding_counter_reg_n_0_[3]\,
      I4 => \padding_counter_reg_n_0_[2]\,
      I5 => \padding_counter_reg_n_0_[4]\,
      O => padding_counter(4)
    );
\padding_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \padding_counter[5]_i_2_n_0\,
      I2 => \padding_counter_reg_n_0_[5]\,
      O => padding_counter(5)
    );
\padding_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \padding_counter_reg_n_0_[3]\,
      I1 => \padding_counter_reg_n_0_[2]\,
      I2 => \padding_counter_reg_n_0_[1]\,
      I3 => \padding_counter_reg_n_0_[0]\,
      I4 => \padding_counter_reg_n_0_[4]\,
      O => \padding_counter[5]_i_2_n_0\
    );
\padding_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \padding_counter[7]_i_3_n_0\,
      I2 => \padding_counter_reg_n_0_[6]\,
      O => padding_counter(6)
    );
\padding_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => \padding_counter[7]_i_1_n_0\
    );
\padding_counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \padding_counter_reg_n_0_[6]\,
      I2 => \padding_counter[7]_i_3_n_0\,
      I3 => \padding_counter_reg_n_0_[7]\,
      O => padding_counter(7)
    );
\padding_counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \padding_counter_reg_n_0_[4]\,
      I1 => \padding_counter_reg_n_0_[0]\,
      I2 => \padding_counter_reg_n_0_[1]\,
      I3 => \padding_counter_reg_n_0_[2]\,
      I4 => \padding_counter_reg_n_0_[3]\,
      I5 => \padding_counter_reg_n_0_[5]\,
      O => \padding_counter[7]_i_3_n_0\
    );
\padding_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(0),
      Q => \padding_counter_reg_n_0_[0]\,
      R => MOSI_i_1_n_0
    );
\padding_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(1),
      Q => \padding_counter_reg_n_0_[1]\,
      R => MOSI_i_1_n_0
    );
\padding_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(2),
      Q => \padding_counter_reg_n_0_[2]\,
      R => MOSI_i_1_n_0
    );
\padding_counter_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(3),
      Q => \padding_counter_reg_n_0_[3]\,
      S => MOSI_i_1_n_0
    );
\padding_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(4),
      Q => \padding_counter_reg_n_0_[4]\,
      R => MOSI_i_1_n_0
    );
\padding_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(5),
      Q => \padding_counter_reg_n_0_[5]\,
      R => MOSI_i_1_n_0
    );
\padding_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(6),
      Q => \padding_counter_reg_n_0_[6]\,
      R => MOSI_i_1_n_0
    );
\padding_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \padding_counter[7]_i_1_n_0\,
      D => padding_counter(7),
      Q => \padding_counter_reg_n_0_[7]\,
      R => MOSI_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    MOSI : out STD_LOGIC;
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MISO : in STD_LOGIC;
    clk : in STD_LOGIC;
    busy : out STD_LOGIC;
    rstn : in STD_LOGIC;
    start : in STD_LOGIC;
    done : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    oversample_offset : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cable_delay_tester_rhs_spi_master_0_0,rhs_spi_master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rhs_spi_master,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 39012767, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cable_delay_tester_clk_wiz_0_0_clk_18M, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhs_spi_master
     port map (
      CS => CS,
      MISO => MISO,
      MOSI => MOSI,
      SCLK => SCLK,
      busy => busy,
      clk => clk,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_out(31 downto 0) => data_out(31 downto 0),
      done => done,
      oversample_offset(7 downto 0) => oversample_offset(7 downto 0),
      rstn => rstn,
      start => start
    );
end STRUCTURE;
