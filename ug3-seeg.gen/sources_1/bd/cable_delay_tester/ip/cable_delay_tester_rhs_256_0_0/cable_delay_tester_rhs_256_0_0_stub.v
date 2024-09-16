// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Sep 15 21:19:35 2024
// Host        : Gingham running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhs_256_0_0/cable_delay_tester_rhs_256_0_0_stub.v
// Design      : cable_delay_tester_rhs_256_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rhs_256,Vivado 2023.1" *)
module cable_delay_tester_rhs_256_0_0(rstn, clk, config_start, record_start, 
  zcheck_start, zcheck_global_channel, zcheck_scale, busy, busy_stim, done, 
  oversample_offset_A, oversample_offset_B, oversample_offset_C, oversample_offset_D, 
  oversample_offset_E, oversample_offset_F, oversample_offset_G, oversample_offset_H, 
  oversample_offset_I, oversample_offset_J, oversample_offset_K, oversample_offset_L, 
  oversample_offset_M, oversample_offset_N, oversample_offset_O, oversample_offset_P, 
  fifo_read_en, fifo_rst, fifo_write_en_external, fifo_valid_out, fifo_data_out, CS, SCLK, 
  MOSI_A, MOSI_B, MOSI_C, MOSI_D, MOSI_E, MOSI_F, MOSI_G, MOSI_H, MOSI_I, MOSI_J, MOSI_K, MOSI_L, MOSI_M, 
  MOSI_N, MOSI_O, MOSI_P, MISO_A, MISO_B, MISO_C, MISO_D, MISO_E, MISO_F, MISO_G, MISO_H, MISO_I, MISO_J, 
  MISO_K, MISO_L, MISO_M, MISO_N, MISO_O, MISO_P, stim_mask_probe_select, 
  stim_mask_channel_positive, stim_mask_channel_negative, stim_bipolar_mode, 
  stim_current_step_size, channel_out, stim_pulse_length, stim_pulse_magnitude, 
  stim_inter_bipulse_delay, stim_inter_pulse_delay, stim_inter_train_delay, 
  stim_bipulses_per_train_count, stim_train_count, stim_charge_recovery_time, 
  stim_rising_edge_first, stim_finite_mode_done, stim_finite_mode_start, 
  stim_infinite_mode_start, stim_infinite_mode_stop, stim_waveform_data_out)
/* synthesis syn_black_box black_box_pad_pin="rstn,config_start,record_start,zcheck_start,zcheck_global_channel[11:0],zcheck_scale[1:0],busy,busy_stim,done,oversample_offset_A[7:0],oversample_offset_B[7:0],oversample_offset_C[7:0],oversample_offset_D[7:0],oversample_offset_E[7:0],oversample_offset_F[7:0],oversample_offset_G[7:0],oversample_offset_H[7:0],oversample_offset_I[7:0],oversample_offset_J[7:0],oversample_offset_K[7:0],oversample_offset_L[7:0],oversample_offset_M[7:0],oversample_offset_N[7:0],oversample_offset_O[7:0],oversample_offset_P[7:0],fifo_read_en,fifo_rst,fifo_write_en_external,fifo_valid_out,fifo_data_out[63:0],CS,MOSI_A,MOSI_B,MOSI_C,MOSI_D,MOSI_E,MOSI_F,MOSI_G,MOSI_H,MOSI_I,MOSI_J,MOSI_K,MOSI_L,MOSI_M,MOSI_N,MOSI_O,MOSI_P,MISO_A,MISO_B,MISO_C,MISO_D,MISO_E,MISO_F,MISO_G,MISO_H,MISO_I,MISO_J,MISO_K,MISO_L,MISO_M,MISO_N,MISO_O,MISO_P,stim_mask_probe_select[15:0],stim_mask_channel_positive[15:0],stim_mask_channel_negative[15:0],stim_bipolar_mode,stim_current_step_size[3:0],channel_out[7:0],stim_pulse_length[15:0],stim_pulse_magnitude[7:0],stim_inter_bipulse_delay[15:0],stim_inter_pulse_delay[15:0],stim_inter_train_delay[15:0],stim_bipulses_per_train_count[15:0],stim_train_count[15:0],stim_charge_recovery_time[15:0],stim_rising_edge_first,stim_finite_mode_done,stim_finite_mode_start,stim_infinite_mode_start,stim_infinite_mode_stop,stim_waveform_data_out[1:0]" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="SCLK" */;
  input rstn;
  input clk /* synthesis syn_isclock = 1 */;
  input config_start;
  input record_start;
  input zcheck_start;
  input [11:0]zcheck_global_channel;
  input [1:0]zcheck_scale;
  output busy;
  output busy_stim;
  output done;
  input [7:0]oversample_offset_A;
  input [7:0]oversample_offset_B;
  input [7:0]oversample_offset_C;
  input [7:0]oversample_offset_D;
  input [7:0]oversample_offset_E;
  input [7:0]oversample_offset_F;
  input [7:0]oversample_offset_G;
  input [7:0]oversample_offset_H;
  input [7:0]oversample_offset_I;
  input [7:0]oversample_offset_J;
  input [7:0]oversample_offset_K;
  input [7:0]oversample_offset_L;
  input [7:0]oversample_offset_M;
  input [7:0]oversample_offset_N;
  input [7:0]oversample_offset_O;
  input [7:0]oversample_offset_P;
  input fifo_read_en;
  input fifo_rst;
  input fifo_write_en_external;
  output fifo_valid_out;
  output [63:0]fifo_data_out;
  output CS;
  output SCLK /* synthesis syn_isclock = 1 */;
  output MOSI_A;
  output MOSI_B;
  output MOSI_C;
  output MOSI_D;
  output MOSI_E;
  output MOSI_F;
  output MOSI_G;
  output MOSI_H;
  output MOSI_I;
  output MOSI_J;
  output MOSI_K;
  output MOSI_L;
  output MOSI_M;
  output MOSI_N;
  output MOSI_O;
  output MOSI_P;
  input MISO_A;
  input MISO_B;
  input MISO_C;
  input MISO_D;
  input MISO_E;
  input MISO_F;
  input MISO_G;
  input MISO_H;
  input MISO_I;
  input MISO_J;
  input MISO_K;
  input MISO_L;
  input MISO_M;
  input MISO_N;
  input MISO_O;
  input MISO_P;
  input [15:0]stim_mask_probe_select;
  input [15:0]stim_mask_channel_positive;
  input [15:0]stim_mask_channel_negative;
  input stim_bipolar_mode;
  input [3:0]stim_current_step_size;
  output [7:0]channel_out;
  input [15:0]stim_pulse_length;
  input [7:0]stim_pulse_magnitude;
  input [15:0]stim_inter_bipulse_delay;
  input [15:0]stim_inter_pulse_delay;
  input [15:0]stim_inter_train_delay;
  input [15:0]stim_bipulses_per_train_count;
  input [15:0]stim_train_count;
  input [15:0]stim_charge_recovery_time;
  input stim_rising_edge_first;
  output stim_finite_mode_done;
  input stim_finite_mode_start;
  input stim_infinite_mode_start;
  input stim_infinite_mode_stop;
  output [1:0]stim_waveform_data_out;
endmodule
