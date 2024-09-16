// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Sep 15 21:19:48 2024
// Host        : Gingham running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhd_2048_0_0/cable_delay_tester_rhd_2048_0_0_stub.v
// Design      : cable_delay_tester_rhd_2048_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rhd_2048,Vivado 2023.1" *)
module cable_delay_tester_rhd_2048_0_0(rstn, clk, config_start, record_start, 
  zcheck_start, zcheck_global_channel, zcheck_scale, fifo_read_en, fifo_rst, 
  fifo_write_en_external, fifo_valid_out, fifo_data_out, busy, done, oversample_offset_A1, 
  oversample_offset_A2, oversample_offset_B1, oversample_offset_B2, oversample_offset_C1, 
  oversample_offset_C2, oversample_offset_D1, oversample_offset_D2, oversample_offset_E1, 
  oversample_offset_E2, oversample_offset_F1, oversample_offset_F2, oversample_offset_G1, 
  oversample_offset_G2, oversample_offset_H1, oversample_offset_H2, oversample_offset_I1, 
  oversample_offset_I2, oversample_offset_J1, oversample_offset_J2, oversample_offset_K1, 
  oversample_offset_K2, oversample_offset_L1, oversample_offset_L2, oversample_offset_M1, 
  oversample_offset_M2, oversample_offset_N1, oversample_offset_N2, oversample_offset_O1, 
  oversample_offset_O2, oversample_offset_P1, oversample_offset_P2, CS, SCLK, MOSI, MISO1_A, 
  MISO2_A, MISO1_B, MISO2_B, MISO1_C, MISO2_C, MISO1_D, MISO2_D, MISO1_E, MISO2_E, MISO1_F, MISO2_F, 
  MISO1_G, MISO2_G, MISO1_H, MISO2_H, MISO1_I, MISO2_I, MISO1_J, MISO2_J, MISO1_K, MISO2_K, MISO1_L, 
  MISO2_L, MISO1_M, MISO2_M, MISO1_N, MISO2_N, MISO1_O, MISO2_O, MISO1_P, MISO2_P, channel_out, 
  sampling_rate_20k)
/* synthesis syn_black_box black_box_pad_pin="rstn,config_start,record_start,zcheck_start,zcheck_global_channel[11:0],zcheck_scale[1:0],fifo_read_en,fifo_rst,fifo_write_en_external,fifo_valid_out,fifo_data_out[63:0],busy,done,oversample_offset_A1[7:0],oversample_offset_A2[7:0],oversample_offset_B1[7:0],oversample_offset_B2[7:0],oversample_offset_C1[7:0],oversample_offset_C2[7:0],oversample_offset_D1[7:0],oversample_offset_D2[7:0],oversample_offset_E1[7:0],oversample_offset_E2[7:0],oversample_offset_F1[7:0],oversample_offset_F2[7:0],oversample_offset_G1[7:0],oversample_offset_G2[7:0],oversample_offset_H1[7:0],oversample_offset_H2[7:0],oversample_offset_I1[7:0],oversample_offset_I2[7:0],oversample_offset_J1[7:0],oversample_offset_J2[7:0],oversample_offset_K1[7:0],oversample_offset_K2[7:0],oversample_offset_L1[7:0],oversample_offset_L2[7:0],oversample_offset_M1[7:0],oversample_offset_M2[7:0],oversample_offset_N1[7:0],oversample_offset_N2[7:0],oversample_offset_O1[7:0],oversample_offset_O2[7:0],oversample_offset_P1[7:0],oversample_offset_P2[7:0],CS,MOSI,MISO1_A,MISO2_A,MISO1_B,MISO2_B,MISO1_C,MISO2_C,MISO1_D,MISO2_D,MISO1_E,MISO2_E,MISO1_F,MISO2_F,MISO1_G,MISO2_G,MISO1_H,MISO2_H,MISO1_I,MISO2_I,MISO1_J,MISO2_J,MISO1_K,MISO2_K,MISO1_L,MISO2_L,MISO1_M,MISO2_M,MISO1_N,MISO2_N,MISO1_O,MISO2_O,MISO1_P,MISO2_P,channel_out[7:0],sampling_rate_20k" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="SCLK" */;
  input rstn;
  input clk /* synthesis syn_isclock = 1 */;
  input config_start;
  input record_start;
  input zcheck_start;
  input [11:0]zcheck_global_channel;
  input [1:0]zcheck_scale;
  input fifo_read_en;
  input fifo_rst;
  input fifo_write_en_external;
  output fifo_valid_out;
  output [63:0]fifo_data_out;
  output busy;
  output done;
  input [7:0]oversample_offset_A1;
  input [7:0]oversample_offset_A2;
  input [7:0]oversample_offset_B1;
  input [7:0]oversample_offset_B2;
  input [7:0]oversample_offset_C1;
  input [7:0]oversample_offset_C2;
  input [7:0]oversample_offset_D1;
  input [7:0]oversample_offset_D2;
  input [7:0]oversample_offset_E1;
  input [7:0]oversample_offset_E2;
  input [7:0]oversample_offset_F1;
  input [7:0]oversample_offset_F2;
  input [7:0]oversample_offset_G1;
  input [7:0]oversample_offset_G2;
  input [7:0]oversample_offset_H1;
  input [7:0]oversample_offset_H2;
  input [7:0]oversample_offset_I1;
  input [7:0]oversample_offset_I2;
  input [7:0]oversample_offset_J1;
  input [7:0]oversample_offset_J2;
  input [7:0]oversample_offset_K1;
  input [7:0]oversample_offset_K2;
  input [7:0]oversample_offset_L1;
  input [7:0]oversample_offset_L2;
  input [7:0]oversample_offset_M1;
  input [7:0]oversample_offset_M2;
  input [7:0]oversample_offset_N1;
  input [7:0]oversample_offset_N2;
  input [7:0]oversample_offset_O1;
  input [7:0]oversample_offset_O2;
  input [7:0]oversample_offset_P1;
  input [7:0]oversample_offset_P2;
  output CS;
  output SCLK /* synthesis syn_isclock = 1 */;
  output MOSI;
  input MISO1_A;
  input MISO2_A;
  input MISO1_B;
  input MISO2_B;
  input MISO1_C;
  input MISO2_C;
  input MISO1_D;
  input MISO2_D;
  input MISO1_E;
  input MISO2_E;
  input MISO1_F;
  input MISO2_F;
  input MISO1_G;
  input MISO2_G;
  input MISO1_H;
  input MISO2_H;
  input MISO1_I;
  input MISO2_I;
  input MISO1_J;
  input MISO2_J;
  input MISO1_K;
  input MISO2_K;
  input MISO1_L;
  input MISO2_L;
  input MISO1_M;
  input MISO2_M;
  input MISO1_N;
  input MISO2_N;
  input MISO1_O;
  input MISO2_O;
  input MISO1_P;
  input MISO2_P;
  output [7:0]channel_out;
  input sampling_rate_20k;
endmodule
