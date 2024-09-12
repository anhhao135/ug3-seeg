//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Thu Sep 12 14:29:45 2024
//Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target jtag_axi_test_wrapper.bd
//Design      : jtag_axi_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module jtag_axi_test_wrapper
   (RHD_CS,
    RHD_MISO1_A,
    RHD_MISO2_A,
    RHD_MOSI,
    RHD_SCLK,
    RHS_CS,
    RHS_MISO_A,
    RHS_MOSI_A,
    RHS_SCLK);
  output RHD_CS;
  input RHD_MISO1_A;
  input RHD_MISO2_A;
  output RHD_MOSI;
  output RHD_SCLK;
  output RHS_CS;
  input RHS_MISO_A;
  output RHS_MOSI_A;
  output RHS_SCLK;

  wire RHD_CS;
  wire RHD_MISO1_A;
  wire RHD_MISO2_A;
  wire RHD_MOSI;
  wire RHD_SCLK;
  wire RHS_CS;
  wire RHS_MISO_A;
  wire RHS_MOSI_A;
  wire RHS_SCLK;

  jtag_axi_test jtag_axi_test_i
       (.RHD_CS(RHD_CS),
        .RHD_MISO1_A(RHD_MISO1_A),
        .RHD_MISO2_A(RHD_MISO2_A),
        .RHD_MOSI(RHD_MOSI),
        .RHD_SCLK(RHD_SCLK),
        .RHS_CS(RHS_CS),
        .RHS_MISO_A(RHS_MISO_A),
        .RHS_MOSI_A(RHS_MOSI_A),
        .RHS_SCLK(RHS_SCLK));
endmodule
