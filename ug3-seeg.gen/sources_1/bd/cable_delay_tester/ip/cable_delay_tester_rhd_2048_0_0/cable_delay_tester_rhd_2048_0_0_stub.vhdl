-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Sep 15 21:19:48 2024
-- Host        : Gingham running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhd_2048_0_0/cable_delay_tester_rhd_2048_0_0_stub.vhdl
-- Design      : cable_delay_tester_rhd_2048_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cable_delay_tester_rhd_2048_0_0 is
  Port ( 
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    config_start : in STD_LOGIC;
    record_start : in STD_LOGIC;
    zcheck_start : in STD_LOGIC;
    zcheck_global_channel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    zcheck_scale : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_read_en : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    fifo_write_en_external : in STD_LOGIC;
    fifo_valid_out : out STD_LOGIC;
    fifo_data_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    busy : out STD_LOGIC;
    done : out STD_LOGIC;
    oversample_offset_A1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_A2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_B1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_B2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_C1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_C2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_D1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_D2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_E1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_E2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_F1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_F2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_G1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_G2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_H1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_H2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_I1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_I2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_J1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_J2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_K1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_K2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_L1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_L2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_M1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_M2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_N1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_N2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_O1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_O2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_P1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_P2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    MISO1_A : in STD_LOGIC;
    MISO2_A : in STD_LOGIC;
    MISO1_B : in STD_LOGIC;
    MISO2_B : in STD_LOGIC;
    MISO1_C : in STD_LOGIC;
    MISO2_C : in STD_LOGIC;
    MISO1_D : in STD_LOGIC;
    MISO2_D : in STD_LOGIC;
    MISO1_E : in STD_LOGIC;
    MISO2_E : in STD_LOGIC;
    MISO1_F : in STD_LOGIC;
    MISO2_F : in STD_LOGIC;
    MISO1_G : in STD_LOGIC;
    MISO2_G : in STD_LOGIC;
    MISO1_H : in STD_LOGIC;
    MISO2_H : in STD_LOGIC;
    MISO1_I : in STD_LOGIC;
    MISO2_I : in STD_LOGIC;
    MISO1_J : in STD_LOGIC;
    MISO2_J : in STD_LOGIC;
    MISO1_K : in STD_LOGIC;
    MISO2_K : in STD_LOGIC;
    MISO1_L : in STD_LOGIC;
    MISO2_L : in STD_LOGIC;
    MISO1_M : in STD_LOGIC;
    MISO2_M : in STD_LOGIC;
    MISO1_N : in STD_LOGIC;
    MISO2_N : in STD_LOGIC;
    MISO1_O : in STD_LOGIC;
    MISO2_O : in STD_LOGIC;
    MISO1_P : in STD_LOGIC;
    MISO2_P : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sampling_rate_20k : in STD_LOGIC
  );

end cable_delay_tester_rhd_2048_0_0;

architecture stub of cable_delay_tester_rhd_2048_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rstn,clk,config_start,record_start,zcheck_start,zcheck_global_channel[11:0],zcheck_scale[1:0],fifo_read_en,fifo_rst,fifo_write_en_external,fifo_valid_out,fifo_data_out[63:0],busy,done,oversample_offset_A1[7:0],oversample_offset_A2[7:0],oversample_offset_B1[7:0],oversample_offset_B2[7:0],oversample_offset_C1[7:0],oversample_offset_C2[7:0],oversample_offset_D1[7:0],oversample_offset_D2[7:0],oversample_offset_E1[7:0],oversample_offset_E2[7:0],oversample_offset_F1[7:0],oversample_offset_F2[7:0],oversample_offset_G1[7:0],oversample_offset_G2[7:0],oversample_offset_H1[7:0],oversample_offset_H2[7:0],oversample_offset_I1[7:0],oversample_offset_I2[7:0],oversample_offset_J1[7:0],oversample_offset_J2[7:0],oversample_offset_K1[7:0],oversample_offset_K2[7:0],oversample_offset_L1[7:0],oversample_offset_L2[7:0],oversample_offset_M1[7:0],oversample_offset_M2[7:0],oversample_offset_N1[7:0],oversample_offset_N2[7:0],oversample_offset_O1[7:0],oversample_offset_O2[7:0],oversample_offset_P1[7:0],oversample_offset_P2[7:0],CS,SCLK,MOSI,MISO1_A,MISO2_A,MISO1_B,MISO2_B,MISO1_C,MISO2_C,MISO1_D,MISO2_D,MISO1_E,MISO2_E,MISO1_F,MISO2_F,MISO1_G,MISO2_G,MISO1_H,MISO2_H,MISO1_I,MISO2_I,MISO1_J,MISO2_J,MISO1_K,MISO2_K,MISO1_L,MISO2_L,MISO1_M,MISO2_M,MISO1_N,MISO2_N,MISO1_O,MISO2_O,MISO1_P,MISO2_P,channel_out[7:0],sampling_rate_20k";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rhd_2048,Vivado 2023.1";
begin
end;
