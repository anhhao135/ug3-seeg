// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Sep 19 15:13:10 2024
// Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/jtag_axi_test/ip/jtag_axi_test_diff_to_single_1_0/jtag_axi_test_diff_to_single_1_0_stub.v
// Design      : jtag_axi_test_diff_to_single_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "diff_to_single,Vivado 2023.1" *)
module jtag_axi_test_diff_to_single_1_0(in_p, in_n, out_single)
/* synthesis syn_black_box black_box_pad_pin="in_p,in_n,out_single" */;
  input in_p;
  input in_n;
  output out_single;
endmodule
