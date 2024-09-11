-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Sep 10 15:19:48 2024
-- Host        : GramForGram running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhd_spi_master_0_0/cable_delay_tester_rhd_spi_master_0_0_stub.vhdl
-- Design      : cable_delay_tester_rhd_spi_master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cable_delay_tester_rhd_spi_master_0_0 is
  Port ( 
    MOSI : out STD_LOGIC;
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MISO : in STD_LOGIC;
    clk : in STD_LOGIC;
    busy : out STD_LOGIC;
    rstn : in STD_LOGIC;
    start : in STD_LOGIC;
    done : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    b_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    oversample_offset : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end cable_delay_tester_rhd_spi_master_0_0;

architecture stub of cable_delay_tester_rhd_spi_master_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "MOSI,CS,SCLK,MISO,clk,busy,rstn,start,done,data_in[15:0],a_data_out[15:0],b_data_out[15:0],oversample_offset[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rhd_spi_master,Vivado 2023.1";
begin
end;
