//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Sep  9 13:00:02 2024
//Host        : DESKTOP-JS8NSUT running 64-bit major release  (build 9200)
//Command     : generate_target cable_delay_tester_wrapper.bd
//Design      : cable_delay_tester_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cable_delay_tester_wrapper
   (CS_RHD,
    CS_RHS,
    MISO_RHD,
    MISO_RHS,
    MOSI_RHD,
    MOSI_RHS,
    SCLK_RHD,
    SCLK_RHS);
  output CS_RHD;
  output CS_RHS;
  input MISO_RHD;
  input MISO_RHS;
  output MOSI_RHD;
  output MOSI_RHS;
  output SCLK_RHD;
  output SCLK_RHS;

  wire CS_RHD;
  wire CS_RHS;
  wire MISO_RHD;
  wire MISO_RHS;
  wire MOSI_RHD;
  wire MOSI_RHS;
  wire SCLK_RHD;
  wire SCLK_RHS;

  cable_delay_tester cable_delay_tester_i
       (.CS_RHD(CS_RHD),
        .CS_RHS(CS_RHS),
        .MISO_RHD(MISO_RHD),
        .MISO_RHS(MISO_RHS),
        .MOSI_RHD(MOSI_RHD),
        .MOSI_RHS(MOSI_RHS),
        .SCLK_RHD(SCLK_RHD),
        .SCLK_RHS(SCLK_RHS));
endmodule
