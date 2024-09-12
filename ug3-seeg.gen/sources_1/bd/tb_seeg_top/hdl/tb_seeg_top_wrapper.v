//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Sep 12 14:06:46 2024
//Host        : GramForGram running 64-bit major release  (build 9200)
//Command     : generate_target tb_seeg_top_wrapper.bd
//Design      : tb_seeg_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tb_seeg_top_wrapper
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    S_AXI_ACLK,
    S_AXI_ARESETN);
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;

  wire M_AXIS_ACLK;
  wire M_AXIS_ARESETN;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;

  tb_seeg_top tb_seeg_top_i
       (.M_AXIS_ACLK(M_AXIS_ACLK),
        .M_AXIS_ARESETN(M_AXIS_ARESETN),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN));
endmodule
