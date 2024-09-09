// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Sep  9 13:01:12 2024
// Host        : DESKTOP-JS8NSUT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhs_spi_master_0_0/cable_delay_tester_rhs_spi_master_0_0_stub.v
// Design      : cable_delay_tester_rhs_spi_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rhs_spi_master,Vivado 2023.1" *)
module cable_delay_tester_rhs_spi_master_0_0(MOSI, CS, SCLK, MISO, clk, busy, rstn, start, done, 
  data_in, data_out, oversample_offset)
/* synthesis syn_black_box black_box_pad_pin="MOSI,CS,SCLK,MISO,busy,rstn,start,done,data_in[31:0],data_out[31:0],oversample_offset[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  output MOSI;
  output CS;
  output SCLK;
  input MISO;
  input clk /* synthesis syn_isclock = 1 */;
  output busy;
  input rstn;
  input start;
  output done;
  input [31:0]data_in;
  output [31:0]data_out;
  input [7:0]oversample_offset;
endmodule
