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


// IP VLNV: xilinx.com:module_ref:rhs_256:1.0
// IP Revision: 1

(* X_CORE_INFO = "rhs_256,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "cable_delay_tester_rhs_256_0_0,rhs_256,{}" *)
(* CORE_GENERATION_INFO = "cable_delay_tester_rhs_256_0_0,rhs_256,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rhs_256,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cable_delay_tester_rhs_256_0_0 (
  rstn,
  clk,
  config_start,
  record_start,
  zcheck_start,
  zcheck_global_channel,
  zcheck_scale,
  busy,
  busy_stim,
  done,
  oversample_offset_A,
  oversample_offset_B,
  oversample_offset_C,
  oversample_offset_D,
  oversample_offset_E,
  oversample_offset_F,
  oversample_offset_G,
  oversample_offset_H,
  oversample_offset_I,
  oversample_offset_J,
  oversample_offset_K,
  oversample_offset_L,
  oversample_offset_M,
  oversample_offset_N,
  oversample_offset_O,
  oversample_offset_P,
  fifo_read_en,
  fifo_rst,
  fifo_write_en_external,
  fifo_valid_out,
  fifo_data_out,
  CS,
  SCLK,
  MOSI_A,
  MOSI_B,
  MOSI_C,
  MOSI_D,
  MOSI_E,
  MOSI_F,
  MOSI_G,
  MOSI_H,
  MOSI_I,
  MOSI_J,
  MOSI_K,
  MOSI_L,
  MOSI_M,
  MOSI_N,
  MOSI_O,
  MOSI_P,
  MISO_A,
  MISO_B,
  MISO_C,
  MISO_D,
  MISO_E,
  MISO_F,
  MISO_G,
  MISO_H,
  MISO_I,
  MISO_J,
  MISO_K,
  MISO_L,
  MISO_M,
  MISO_N,
  MISO_O,
  MISO_P,
  stim_mask_probe_select,
  stim_mask_channel_positive,
  stim_mask_channel_negative,
  stim_bipolar_mode,
  stim_current_step_size,
  channel_out,
  stim_pulse_length,
  stim_pulse_magnitude,
  stim_inter_bipulse_delay,
  stim_inter_pulse_delay,
  stim_inter_train_delay,
  stim_bipulses_per_train_count,
  stim_train_count,
  stim_charge_recovery_time,
  stim_rising_edge_first,
  stim_finite_mode_done,
  stim_finite_mode_start,
  stim_infinite_mode_start,
  stim_infinite_mode_stop,
  stim_waveform_data_out
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
output wire busy;
output wire busy_stim;
output wire done;
input wire [7 : 0] oversample_offset_A;
input wire [7 : 0] oversample_offset_B;
input wire [7 : 0] oversample_offset_C;
input wire [7 : 0] oversample_offset_D;
input wire [7 : 0] oversample_offset_E;
input wire [7 : 0] oversample_offset_F;
input wire [7 : 0] oversample_offset_G;
input wire [7 : 0] oversample_offset_H;
input wire [7 : 0] oversample_offset_I;
input wire [7 : 0] oversample_offset_J;
input wire [7 : 0] oversample_offset_K;
input wire [7 : 0] oversample_offset_L;
input wire [7 : 0] oversample_offset_M;
input wire [7 : 0] oversample_offset_N;
input wire [7 : 0] oversample_offset_O;
input wire [7 : 0] oversample_offset_P;
input wire fifo_read_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *)
input wire fifo_rst;
input wire fifo_write_en_external;
output wire fifo_valid_out;
output wire [63 : 0] fifo_data_out;
output wire CS;
output wire SCLK;
output wire MOSI_A;
output wire MOSI_B;
output wire MOSI_C;
output wire MOSI_D;
output wire MOSI_E;
output wire MOSI_F;
output wire MOSI_G;
output wire MOSI_H;
output wire MOSI_I;
output wire MOSI_J;
output wire MOSI_K;
output wire MOSI_L;
output wire MOSI_M;
output wire MOSI_N;
output wire MOSI_O;
output wire MOSI_P;
input wire MISO_A;
input wire MISO_B;
input wire MISO_C;
input wire MISO_D;
input wire MISO_E;
input wire MISO_F;
input wire MISO_G;
input wire MISO_H;
input wire MISO_I;
input wire MISO_J;
input wire MISO_K;
input wire MISO_L;
input wire MISO_M;
input wire MISO_N;
input wire MISO_O;
input wire MISO_P;
input wire [15 : 0] stim_mask_probe_select;
input wire [15 : 0] stim_mask_channel_positive;
input wire [15 : 0] stim_mask_channel_negative;
input wire stim_bipolar_mode;
input wire [3 : 0] stim_current_step_size;
output wire [7 : 0] channel_out;
input wire [15 : 0] stim_pulse_length;
input wire [7 : 0] stim_pulse_magnitude;
input wire [15 : 0] stim_inter_bipulse_delay;
input wire [15 : 0] stim_inter_pulse_delay;
input wire [15 : 0] stim_inter_train_delay;
input wire [15 : 0] stim_bipulses_per_train_count;
input wire [15 : 0] stim_train_count;
input wire [15 : 0] stim_charge_recovery_time;
input wire stim_rising_edge_first;
output wire stim_finite_mode_done;
input wire stim_finite_mode_start;
input wire stim_infinite_mode_start;
input wire stim_infinite_mode_stop;
output wire [1 : 0] stim_waveform_data_out;

  rhs_256 inst (
    .rstn(rstn),
    .clk(clk),
    .config_start(config_start),
    .record_start(record_start),
    .zcheck_start(zcheck_start),
    .zcheck_global_channel(zcheck_global_channel),
    .zcheck_scale(zcheck_scale),
    .busy(busy),
    .busy_stim(busy_stim),
    .done(done),
    .oversample_offset_A(oversample_offset_A),
    .oversample_offset_B(oversample_offset_B),
    .oversample_offset_C(oversample_offset_C),
    .oversample_offset_D(oversample_offset_D),
    .oversample_offset_E(oversample_offset_E),
    .oversample_offset_F(oversample_offset_F),
    .oversample_offset_G(oversample_offset_G),
    .oversample_offset_H(oversample_offset_H),
    .oversample_offset_I(oversample_offset_I),
    .oversample_offset_J(oversample_offset_J),
    .oversample_offset_K(oversample_offset_K),
    .oversample_offset_L(oversample_offset_L),
    .oversample_offset_M(oversample_offset_M),
    .oversample_offset_N(oversample_offset_N),
    .oversample_offset_O(oversample_offset_O),
    .oversample_offset_P(oversample_offset_P),
    .fifo_read_en(fifo_read_en),
    .fifo_rst(fifo_rst),
    .fifo_write_en_external(fifo_write_en_external),
    .fifo_valid_out(fifo_valid_out),
    .fifo_data_out(fifo_data_out),
    .CS(CS),
    .SCLK(SCLK),
    .MOSI_A(MOSI_A),
    .MOSI_B(MOSI_B),
    .MOSI_C(MOSI_C),
    .MOSI_D(MOSI_D),
    .MOSI_E(MOSI_E),
    .MOSI_F(MOSI_F),
    .MOSI_G(MOSI_G),
    .MOSI_H(MOSI_H),
    .MOSI_I(MOSI_I),
    .MOSI_J(MOSI_J),
    .MOSI_K(MOSI_K),
    .MOSI_L(MOSI_L),
    .MOSI_M(MOSI_M),
    .MOSI_N(MOSI_N),
    .MOSI_O(MOSI_O),
    .MOSI_P(MOSI_P),
    .MISO_A(MISO_A),
    .MISO_B(MISO_B),
    .MISO_C(MISO_C),
    .MISO_D(MISO_D),
    .MISO_E(MISO_E),
    .MISO_F(MISO_F),
    .MISO_G(MISO_G),
    .MISO_H(MISO_H),
    .MISO_I(MISO_I),
    .MISO_J(MISO_J),
    .MISO_K(MISO_K),
    .MISO_L(MISO_L),
    .MISO_M(MISO_M),
    .MISO_N(MISO_N),
    .MISO_O(MISO_O),
    .MISO_P(MISO_P),
    .stim_mask_probe_select(stim_mask_probe_select),
    .stim_mask_channel_positive(stim_mask_channel_positive),
    .stim_mask_channel_negative(stim_mask_channel_negative),
    .stim_bipolar_mode(stim_bipolar_mode),
    .stim_current_step_size(stim_current_step_size),
    .channel_out(channel_out),
    .stim_pulse_length(stim_pulse_length),
    .stim_pulse_magnitude(stim_pulse_magnitude),
    .stim_inter_bipulse_delay(stim_inter_bipulse_delay),
    .stim_inter_pulse_delay(stim_inter_pulse_delay),
    .stim_inter_train_delay(stim_inter_train_delay),
    .stim_bipulses_per_train_count(stim_bipulses_per_train_count),
    .stim_train_count(stim_train_count),
    .stim_charge_recovery_time(stim_charge_recovery_time),
    .stim_rising_edge_first(stim_rising_edge_first),
    .stim_finite_mode_done(stim_finite_mode_done),
    .stim_finite_mode_start(stim_finite_mode_start),
    .stim_infinite_mode_start(stim_infinite_mode_start),
    .stim_infinite_mode_stop(stim_infinite_mode_stop),
    .stim_waveform_data_out(stim_waveform_data_out)
  );
endmodule
