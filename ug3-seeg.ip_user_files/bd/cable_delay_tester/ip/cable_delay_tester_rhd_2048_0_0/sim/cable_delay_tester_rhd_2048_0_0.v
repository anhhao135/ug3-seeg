// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:rhd_2048:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cable_delay_tester_rhd_2048_0_0 (
  rstn,
  clk,
  config_start,
  record_start,
  zcheck_start,
  zcheck_global_channel,
  zcheck_scale,
  fifo_read_en,
  fifo_rst,
  fifo_write_en_external,
  fifo_valid_out,
  fifo_data_out,
  busy,
  done,
  oversample_offset_A1,
  oversample_offset_A2,
  oversample_offset_B1,
  oversample_offset_B2,
  oversample_offset_C1,
  oversample_offset_C2,
  oversample_offset_D1,
  oversample_offset_D2,
  oversample_offset_E1,
  oversample_offset_E2,
  oversample_offset_F1,
  oversample_offset_F2,
  oversample_offset_G1,
  oversample_offset_G2,
  oversample_offset_H1,
  oversample_offset_H2,
  oversample_offset_I1,
  oversample_offset_I2,
  oversample_offset_J1,
  oversample_offset_J2,
  oversample_offset_K1,
  oversample_offset_K2,
  oversample_offset_L1,
  oversample_offset_L2,
  oversample_offset_M1,
  oversample_offset_M2,
  oversample_offset_N1,
  oversample_offset_N2,
  oversample_offset_O1,
  oversample_offset_O2,
  oversample_offset_P1,
  oversample_offset_P2,
  CS,
  SCLK,
  MOSI,
  MISO1_A,
  MISO2_A,
  MISO1_B,
  MISO2_B,
  MISO1_C,
  MISO2_C,
  MISO1_D,
  MISO2_D,
  MISO1_E,
  MISO2_E,
  MISO1_F,
  MISO2_F,
  MISO1_G,
  MISO2_G,
  MISO1_H,
  MISO2_H,
  MISO1_I,
  MISO2_I,
  MISO1_J,
  MISO2_J,
  MISO1_K,
  MISO2_K,
  MISO1_L,
  MISO2_L,
  MISO1_M,
  MISO2_M,
  MISO1_N,
  MISO2_N,
  MISO1_O,
  MISO2_O,
  MISO1_P,
  MISO2_P,
  channel_out,
  sampling_rate_20k
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cable_delay_tester_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire config_start;
input wire record_start;
input wire zcheck_start;
input wire [11 : 0] zcheck_global_channel;
input wire [1 : 0] zcheck_scale;
input wire fifo_read_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *)
input wire fifo_rst;
input wire fifo_write_en_external;
output wire fifo_valid_out;
output wire [63 : 0] fifo_data_out;
output wire busy;
output wire done;
input wire [7 : 0] oversample_offset_A1;
input wire [7 : 0] oversample_offset_A2;
input wire [7 : 0] oversample_offset_B1;
input wire [7 : 0] oversample_offset_B2;
input wire [7 : 0] oversample_offset_C1;
input wire [7 : 0] oversample_offset_C2;
input wire [7 : 0] oversample_offset_D1;
input wire [7 : 0] oversample_offset_D2;
input wire [7 : 0] oversample_offset_E1;
input wire [7 : 0] oversample_offset_E2;
input wire [7 : 0] oversample_offset_F1;
input wire [7 : 0] oversample_offset_F2;
input wire [7 : 0] oversample_offset_G1;
input wire [7 : 0] oversample_offset_G2;
input wire [7 : 0] oversample_offset_H1;
input wire [7 : 0] oversample_offset_H2;
input wire [7 : 0] oversample_offset_I1;
input wire [7 : 0] oversample_offset_I2;
input wire [7 : 0] oversample_offset_J1;
input wire [7 : 0] oversample_offset_J2;
input wire [7 : 0] oversample_offset_K1;
input wire [7 : 0] oversample_offset_K2;
input wire [7 : 0] oversample_offset_L1;
input wire [7 : 0] oversample_offset_L2;
input wire [7 : 0] oversample_offset_M1;
input wire [7 : 0] oversample_offset_M2;
input wire [7 : 0] oversample_offset_N1;
input wire [7 : 0] oversample_offset_N2;
input wire [7 : 0] oversample_offset_O1;
input wire [7 : 0] oversample_offset_O2;
input wire [7 : 0] oversample_offset_P1;
input wire [7 : 0] oversample_offset_P2;
output wire CS;
output wire SCLK;
output wire MOSI;
input wire MISO1_A;
input wire MISO2_A;
input wire MISO1_B;
input wire MISO2_B;
input wire MISO1_C;
input wire MISO2_C;
input wire MISO1_D;
input wire MISO2_D;
input wire MISO1_E;
input wire MISO2_E;
input wire MISO1_F;
input wire MISO2_F;
input wire MISO1_G;
input wire MISO2_G;
input wire MISO1_H;
input wire MISO2_H;
input wire MISO1_I;
input wire MISO2_I;
input wire MISO1_J;
input wire MISO2_J;
input wire MISO1_K;
input wire MISO2_K;
input wire MISO1_L;
input wire MISO2_L;
input wire MISO1_M;
input wire MISO2_M;
input wire MISO1_N;
input wire MISO2_N;
input wire MISO1_O;
input wire MISO2_O;
input wire MISO1_P;
input wire MISO2_P;
output wire [7 : 0] channel_out;
input wire sampling_rate_20k;

  rhd_2048 inst (
    .rstn(rstn),
    .clk(clk),
    .config_start(config_start),
    .record_start(record_start),
    .zcheck_start(zcheck_start),
    .zcheck_global_channel(zcheck_global_channel),
    .zcheck_scale(zcheck_scale),
    .fifo_read_en(fifo_read_en),
    .fifo_rst(fifo_rst),
    .fifo_write_en_external(fifo_write_en_external),
    .fifo_valid_out(fifo_valid_out),
    .fifo_data_out(fifo_data_out),
    .busy(busy),
    .done(done),
    .oversample_offset_A1(oversample_offset_A1),
    .oversample_offset_A2(oversample_offset_A2),
    .oversample_offset_B1(oversample_offset_B1),
    .oversample_offset_B2(oversample_offset_B2),
    .oversample_offset_C1(oversample_offset_C1),
    .oversample_offset_C2(oversample_offset_C2),
    .oversample_offset_D1(oversample_offset_D1),
    .oversample_offset_D2(oversample_offset_D2),
    .oversample_offset_E1(oversample_offset_E1),
    .oversample_offset_E2(oversample_offset_E2),
    .oversample_offset_F1(oversample_offset_F1),
    .oversample_offset_F2(oversample_offset_F2),
    .oversample_offset_G1(oversample_offset_G1),
    .oversample_offset_G2(oversample_offset_G2),
    .oversample_offset_H1(oversample_offset_H1),
    .oversample_offset_H2(oversample_offset_H2),
    .oversample_offset_I1(oversample_offset_I1),
    .oversample_offset_I2(oversample_offset_I2),
    .oversample_offset_J1(oversample_offset_J1),
    .oversample_offset_J2(oversample_offset_J2),
    .oversample_offset_K1(oversample_offset_K1),
    .oversample_offset_K2(oversample_offset_K2),
    .oversample_offset_L1(oversample_offset_L1),
    .oversample_offset_L2(oversample_offset_L2),
    .oversample_offset_M1(oversample_offset_M1),
    .oversample_offset_M2(oversample_offset_M2),
    .oversample_offset_N1(oversample_offset_N1),
    .oversample_offset_N2(oversample_offset_N2),
    .oversample_offset_O1(oversample_offset_O1),
    .oversample_offset_O2(oversample_offset_O2),
    .oversample_offset_P1(oversample_offset_P1),
    .oversample_offset_P2(oversample_offset_P2),
    .CS(CS),
    .SCLK(SCLK),
    .MOSI(MOSI),
    .MISO1_A(MISO1_A),
    .MISO2_A(MISO2_A),
    .MISO1_B(MISO1_B),
    .MISO2_B(MISO2_B),
    .MISO1_C(MISO1_C),
    .MISO2_C(MISO2_C),
    .MISO1_D(MISO1_D),
    .MISO2_D(MISO2_D),
    .MISO1_E(MISO1_E),
    .MISO2_E(MISO2_E),
    .MISO1_F(MISO1_F),
    .MISO2_F(MISO2_F),
    .MISO1_G(MISO1_G),
    .MISO2_G(MISO2_G),
    .MISO1_H(MISO1_H),
    .MISO2_H(MISO2_H),
    .MISO1_I(MISO1_I),
    .MISO2_I(MISO2_I),
    .MISO1_J(MISO1_J),
    .MISO2_J(MISO2_J),
    .MISO1_K(MISO1_K),
    .MISO2_K(MISO2_K),
    .MISO1_L(MISO1_L),
    .MISO2_L(MISO2_L),
    .MISO1_M(MISO1_M),
    .MISO2_M(MISO2_M),
    .MISO1_N(MISO1_N),
    .MISO2_N(MISO2_N),
    .MISO1_O(MISO1_O),
    .MISO2_O(MISO2_O),
    .MISO1_P(MISO1_P),
    .MISO2_P(MISO2_P),
    .channel_out(channel_out),
    .sampling_rate_20k(sampling_rate_20k)
  );
endmodule
