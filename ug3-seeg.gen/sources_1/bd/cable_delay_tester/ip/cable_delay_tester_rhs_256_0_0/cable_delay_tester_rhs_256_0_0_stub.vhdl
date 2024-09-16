-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Sep 15 21:19:35 2024
-- Host        : Gingham running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhs_256_0_0/cable_delay_tester_rhs_256_0_0_stub.vhdl
-- Design      : cable_delay_tester_rhs_256_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cable_delay_tester_rhs_256_0_0 is
  Port ( 
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC;
    config_start : in STD_LOGIC;
    record_start : in STD_LOGIC;
    zcheck_start : in STD_LOGIC;
    zcheck_global_channel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    zcheck_scale : in STD_LOGIC_VECTOR ( 1 downto 0 );
    busy : out STD_LOGIC;
    busy_stim : out STD_LOGIC;
    done : out STD_LOGIC;
    oversample_offset_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_E : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_F : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_G : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_H : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_I : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_J : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_K : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_L : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_M : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_O : in STD_LOGIC_VECTOR ( 7 downto 0 );
    oversample_offset_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_read_en : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    fifo_write_en_external : in STD_LOGIC;
    fifo_valid_out : out STD_LOGIC;
    fifo_data_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MOSI_A : out STD_LOGIC;
    MOSI_B : out STD_LOGIC;
    MOSI_C : out STD_LOGIC;
    MOSI_D : out STD_LOGIC;
    MOSI_E : out STD_LOGIC;
    MOSI_F : out STD_LOGIC;
    MOSI_G : out STD_LOGIC;
    MOSI_H : out STD_LOGIC;
    MOSI_I : out STD_LOGIC;
    MOSI_J : out STD_LOGIC;
    MOSI_K : out STD_LOGIC;
    MOSI_L : out STD_LOGIC;
    MOSI_M : out STD_LOGIC;
    MOSI_N : out STD_LOGIC;
    MOSI_O : out STD_LOGIC;
    MOSI_P : out STD_LOGIC;
    MISO_A : in STD_LOGIC;
    MISO_B : in STD_LOGIC;
    MISO_C : in STD_LOGIC;
    MISO_D : in STD_LOGIC;
    MISO_E : in STD_LOGIC;
    MISO_F : in STD_LOGIC;
    MISO_G : in STD_LOGIC;
    MISO_H : in STD_LOGIC;
    MISO_I : in STD_LOGIC;
    MISO_J : in STD_LOGIC;
    MISO_K : in STD_LOGIC;
    MISO_L : in STD_LOGIC;
    MISO_M : in STD_LOGIC;
    MISO_N : in STD_LOGIC;
    MISO_O : in STD_LOGIC;
    MISO_P : in STD_LOGIC;
    stim_mask_probe_select : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_mask_channel_positive : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_mask_channel_negative : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_bipolar_mode : in STD_LOGIC;
    stim_current_step_size : in STD_LOGIC_VECTOR ( 3 downto 0 );
    channel_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stim_pulse_length : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_pulse_magnitude : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stim_inter_bipulse_delay : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_inter_pulse_delay : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_inter_train_delay : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_bipulses_per_train_count : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_train_count : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_charge_recovery_time : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stim_rising_edge_first : in STD_LOGIC;
    stim_finite_mode_done : out STD_LOGIC;
    stim_finite_mode_start : in STD_LOGIC;
    stim_infinite_mode_start : in STD_LOGIC;
    stim_infinite_mode_stop : in STD_LOGIC;
    stim_waveform_data_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end cable_delay_tester_rhs_256_0_0;

architecture stub of cable_delay_tester_rhs_256_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rstn,clk,config_start,record_start,zcheck_start,zcheck_global_channel[11:0],zcheck_scale[1:0],busy,busy_stim,done,oversample_offset_A[7:0],oversample_offset_B[7:0],oversample_offset_C[7:0],oversample_offset_D[7:0],oversample_offset_E[7:0],oversample_offset_F[7:0],oversample_offset_G[7:0],oversample_offset_H[7:0],oversample_offset_I[7:0],oversample_offset_J[7:0],oversample_offset_K[7:0],oversample_offset_L[7:0],oversample_offset_M[7:0],oversample_offset_N[7:0],oversample_offset_O[7:0],oversample_offset_P[7:0],fifo_read_en,fifo_rst,fifo_write_en_external,fifo_valid_out,fifo_data_out[63:0],CS,SCLK,MOSI_A,MOSI_B,MOSI_C,MOSI_D,MOSI_E,MOSI_F,MOSI_G,MOSI_H,MOSI_I,MOSI_J,MOSI_K,MOSI_L,MOSI_M,MOSI_N,MOSI_O,MOSI_P,MISO_A,MISO_B,MISO_C,MISO_D,MISO_E,MISO_F,MISO_G,MISO_H,MISO_I,MISO_J,MISO_K,MISO_L,MISO_M,MISO_N,MISO_O,MISO_P,stim_mask_probe_select[15:0],stim_mask_channel_positive[15:0],stim_mask_channel_negative[15:0],stim_bipolar_mode,stim_current_step_size[3:0],channel_out[7:0],stim_pulse_length[15:0],stim_pulse_magnitude[7:0],stim_inter_bipulse_delay[15:0],stim_inter_pulse_delay[15:0],stim_inter_train_delay[15:0],stim_bipulses_per_train_count[15:0],stim_train_count[15:0],stim_charge_recovery_time[15:0],stim_rising_edge_first,stim_finite_mode_done,stim_finite_mode_start,stim_infinite_mode_start,stim_infinite_mode_stop,stim_waveform_data_out[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rhs_256,Vivado 2023.1";
begin
end;
