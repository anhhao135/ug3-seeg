// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Oct  7 11:38:36 2024
// Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/seeg_zynq/ip/seeg_zynq_clk_wiz_0_0/seeg_zynq_clk_wiz_0_0_stub.v
// Design      : seeg_zynq_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module seeg_zynq_clk_wiz_0_0(clk_78M, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_78M" */;
  output clk_78M /* synthesis syn_isclock = 1 */;
  output locked;
  input clk_in1;
endmodule
