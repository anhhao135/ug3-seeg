//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Fri Sep 13 16:23:17 2024
//Host        : GramForGram running 64-bit major release  (build 9200)
//Command     : generate_target cable_delay_tester_wrapper.bd
//Design      : cable_delay_tester_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cable_delay_tester_wrapper
   (CS_RHS,
    MISO_RHS,
    MOSI_RHS,
    SCLK_RHS);
  output CS_RHS;
  input MISO_RHS;
  output MOSI_RHS;
  output SCLK_RHS;

  wire CS_RHS;
  wire MISO_RHS;
  wire MOSI_RHS;
  wire SCLK_RHS;

  cable_delay_tester cable_delay_tester_i
       (.CS_RHS(CS_RHS),
        .MISO_RHS(MISO_RHS),
        .MOSI_RHS(MOSI_RHS),
        .SCLK_RHS(SCLK_RHS));
endmodule
