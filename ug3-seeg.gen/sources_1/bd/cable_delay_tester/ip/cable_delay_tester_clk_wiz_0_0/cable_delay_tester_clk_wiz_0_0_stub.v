// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Sep 13 16:27:50 2024
// Host        : GramForGram running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_clk_wiz_0_0/cable_delay_tester_clk_wiz_0_0_stub.v
// Design      : cable_delay_tester_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module cable_delay_tester_clk_wiz_0_0(clk_78M, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_78M" */;
  output clk_78M /* synthesis syn_isclock = 1 */;
  output locked;
  input clk_in1;
endmodule
