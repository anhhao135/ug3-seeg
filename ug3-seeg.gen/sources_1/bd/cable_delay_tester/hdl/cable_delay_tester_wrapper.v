//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Fri Sep  6 17:07:09 2024
//Host        : DESKTOP-JS8NSUT running 64-bit major release  (build 9200)
//Command     : generate_target cable_delay_tester_wrapper.bd
//Design      : cable_delay_tester_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cable_delay_tester_wrapper
   (CS,
    MISO,
    MOSI,
    SCLK);
  output CS;
  input MISO;
  output MOSI;
  output SCLK;

  wire CS;
  wire MISO;
  wire MOSI;
  wire SCLK;

  cable_delay_tester cable_delay_tester_i
       (.CS(CS),
        .MISO(MISO),
        .MOSI(MOSI),
        .SCLK(SCLK));
endmodule
