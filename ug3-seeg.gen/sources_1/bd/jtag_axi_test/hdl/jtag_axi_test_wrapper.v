//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Thu Sep 19 16:00:25 2024
//Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target jtag_axi_test_wrapper.bd
//Design      : jtag_axi_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module jtag_axi_test_wrapper
   (RHD_CS,
    RHD_MISO1_A,
    RHD_MISO1_B,
    RHD_MISO1_C,
    RHD_MISO1_D,
    RHD_MISO1_E,
    RHD_MISO1_F,
    RHD_MISO1_G,
    RHD_MISO1_H,
    RHD_MISO1_I_N,
    RHD_MISO1_I_P,
    RHD_MISO1_J_N,
    RHD_MISO1_J_P,
    RHD_MISO1_K_N,
    RHD_MISO1_K_P,
    RHD_MISO1_L_N,
    RHD_MISO1_L_P,
    RHD_MISO1_M_N,
    RHD_MISO1_M_P,
    RHD_MISO1_N_N,
    RHD_MISO1_N_P,
    RHD_MISO1_O_N,
    RHD_MISO1_O_P,
    RHD_MISO1_P_N,
    RHD_MISO1_P_P,
    RHD_MISO2_A,
    RHD_MISO2_B,
    RHD_MISO2_C,
    RHD_MISO2_D,
    RHD_MISO2_E,
    RHD_MISO2_F,
    RHD_MISO2_G,
    RHD_MISO2_H,
    RHD_MISO2_I_N,
    RHD_MISO2_I_P,
    RHD_MISO2_J_N,
    RHD_MISO2_J_P,
    RHD_MISO2_K_N,
    RHD_MISO2_K_P,
    RHD_MISO2_L_N,
    RHD_MISO2_L_P,
    RHD_MISO2_M_N,
    RHD_MISO2_M_P,
    RHD_MISO2_N_N,
    RHD_MISO2_N_P,
    RHD_MISO2_O_N,
    RHD_MISO2_O_P,
    RHD_MISO2_P_N,
    RHD_MISO2_P_P,
    RHD_MOSI,
    RHD_SCLK,
    RHS_CS,
    RHS_MISO_A,
    RHS_MISO_B,
    RHS_MISO_C,
    RHS_MISO_D,
    RHS_MISO_E,
    RHS_MISO_F,
    RHS_MISO_G,
    RHS_MISO_H,
    RHS_MISO_I_N,
    RHS_MISO_I_P,
    RHS_MISO_J_N,
    RHS_MISO_J_P,
    RHS_MISO_K_N,
    RHS_MISO_K_P,
    RHS_MISO_L_N,
    RHS_MISO_L_P,
    RHS_MISO_M_N,
    RHS_MISO_M_P,
    RHS_MISO_N_N,
    RHS_MISO_N_P,
    RHS_MISO_O_N,
    RHS_MISO_O_P,
    RHS_MISO_P_N,
    RHS_MISO_P_P,
    RHS_MOSI_A,
    RHS_MOSI_B,
    RHS_MOSI_C,
    RHS_MOSI_D,
    RHS_MOSI_E,
    RHS_MOSI_F,
    RHS_MOSI_G,
    RHS_MOSI_H,
    RHS_MOSI_I_N,
    RHS_MOSI_I_P,
    RHS_MOSI_J_N,
    RHS_MOSI_J_P,
    RHS_MOSI_K_N,
    RHS_MOSI_K_P,
    RHS_MOSI_L_N,
    RHS_MOSI_L_P,
    RHS_MOSI_M_N,
    RHS_MOSI_M_P,
    RHS_MOSI_N_N,
    RHS_MOSI_N_P,
    RHS_MOSI_O_N,
    RHS_MOSI_O_P,
    RHS_MOSI_P_N,
    RHS_MOSI_P_P,
    RHS_SCLK);
  output RHD_CS;
  input RHD_MISO1_A;
  input RHD_MISO1_B;
  input RHD_MISO1_C;
  input RHD_MISO1_D;
  input RHD_MISO1_E;
  input RHD_MISO1_F;
  input RHD_MISO1_G;
  input RHD_MISO1_H;
  input RHD_MISO1_I_N;
  input RHD_MISO1_I_P;
  input RHD_MISO1_J_N;
  input RHD_MISO1_J_P;
  input RHD_MISO1_K_N;
  input RHD_MISO1_K_P;
  input RHD_MISO1_L_N;
  input RHD_MISO1_L_P;
  input RHD_MISO1_M_N;
  input RHD_MISO1_M_P;
  input RHD_MISO1_N_N;
  input RHD_MISO1_N_P;
  input RHD_MISO1_O_N;
  input RHD_MISO1_O_P;
  input RHD_MISO1_P_N;
  input RHD_MISO1_P_P;
  input RHD_MISO2_A;
  input RHD_MISO2_B;
  input RHD_MISO2_C;
  input RHD_MISO2_D;
  input RHD_MISO2_E;
  input RHD_MISO2_F;
  input RHD_MISO2_G;
  input RHD_MISO2_H;
  input RHD_MISO2_I_N;
  input RHD_MISO2_I_P;
  input RHD_MISO2_J_N;
  input RHD_MISO2_J_P;
  input RHD_MISO2_K_N;
  input RHD_MISO2_K_P;
  input RHD_MISO2_L_N;
  input RHD_MISO2_L_P;
  input RHD_MISO2_M_N;
  input RHD_MISO2_M_P;
  input RHD_MISO2_N_N;
  input RHD_MISO2_N_P;
  input RHD_MISO2_O_N;
  input RHD_MISO2_O_P;
  input RHD_MISO2_P_N;
  input RHD_MISO2_P_P;
  output RHD_MOSI;
  output RHD_SCLK;
  output RHS_CS;
  input RHS_MISO_A;
  input RHS_MISO_B;
  input RHS_MISO_C;
  input RHS_MISO_D;
  input RHS_MISO_E;
  input RHS_MISO_F;
  input RHS_MISO_G;
  input RHS_MISO_H;
  input RHS_MISO_I_N;
  input RHS_MISO_I_P;
  input RHS_MISO_J_N;
  input RHS_MISO_J_P;
  input RHS_MISO_K_N;
  input RHS_MISO_K_P;
  input RHS_MISO_L_N;
  input RHS_MISO_L_P;
  input RHS_MISO_M_N;
  input RHS_MISO_M_P;
  input RHS_MISO_N_N;
  input RHS_MISO_N_P;
  input RHS_MISO_O_N;
  input RHS_MISO_O_P;
  input RHS_MISO_P_N;
  input RHS_MISO_P_P;
  output RHS_MOSI_A;
  output RHS_MOSI_B;
  output RHS_MOSI_C;
  output RHS_MOSI_D;
  output RHS_MOSI_E;
  output RHS_MOSI_F;
  output RHS_MOSI_G;
  output RHS_MOSI_H;
  output RHS_MOSI_I_N;
  output RHS_MOSI_I_P;
  output RHS_MOSI_J_N;
  output RHS_MOSI_J_P;
  output RHS_MOSI_K_N;
  output RHS_MOSI_K_P;
  output RHS_MOSI_L_N;
  output RHS_MOSI_L_P;
  output RHS_MOSI_M_N;
  output RHS_MOSI_M_P;
  output RHS_MOSI_N_N;
  output RHS_MOSI_N_P;
  output RHS_MOSI_O_N;
  output RHS_MOSI_O_P;
  output RHS_MOSI_P_N;
  output RHS_MOSI_P_P;
  output RHS_SCLK;

  wire RHD_CS;
  wire RHD_MISO1_A;
  wire RHD_MISO1_B;
  wire RHD_MISO1_C;
  wire RHD_MISO1_D;
  wire RHD_MISO1_E;
  wire RHD_MISO1_F;
  wire RHD_MISO1_G;
  wire RHD_MISO1_H;
  wire RHD_MISO1_I_N;
  wire RHD_MISO1_I_P;
  wire RHD_MISO1_J_N;
  wire RHD_MISO1_J_P;
  wire RHD_MISO1_K_N;
  wire RHD_MISO1_K_P;
  wire RHD_MISO1_L_N;
  wire RHD_MISO1_L_P;
  wire RHD_MISO1_M_N;
  wire RHD_MISO1_M_P;
  wire RHD_MISO1_N_N;
  wire RHD_MISO1_N_P;
  wire RHD_MISO1_O_N;
  wire RHD_MISO1_O_P;
  wire RHD_MISO1_P_N;
  wire RHD_MISO1_P_P;
  wire RHD_MISO2_A;
  wire RHD_MISO2_B;
  wire RHD_MISO2_C;
  wire RHD_MISO2_D;
  wire RHD_MISO2_E;
  wire RHD_MISO2_F;
  wire RHD_MISO2_G;
  wire RHD_MISO2_H;
  wire RHD_MISO2_I_N;
  wire RHD_MISO2_I_P;
  wire RHD_MISO2_J_N;
  wire RHD_MISO2_J_P;
  wire RHD_MISO2_K_N;
  wire RHD_MISO2_K_P;
  wire RHD_MISO2_L_N;
  wire RHD_MISO2_L_P;
  wire RHD_MISO2_M_N;
  wire RHD_MISO2_M_P;
  wire RHD_MISO2_N_N;
  wire RHD_MISO2_N_P;
  wire RHD_MISO2_O_N;
  wire RHD_MISO2_O_P;
  wire RHD_MISO2_P_N;
  wire RHD_MISO2_P_P;
  wire RHD_MOSI;
  wire RHD_SCLK;
  wire RHS_CS;
  wire RHS_MISO_A;
  wire RHS_MISO_B;
  wire RHS_MISO_C;
  wire RHS_MISO_D;
  wire RHS_MISO_E;
  wire RHS_MISO_F;
  wire RHS_MISO_G;
  wire RHS_MISO_H;
  wire RHS_MISO_I_N;
  wire RHS_MISO_I_P;
  wire RHS_MISO_J_N;
  wire RHS_MISO_J_P;
  wire RHS_MISO_K_N;
  wire RHS_MISO_K_P;
  wire RHS_MISO_L_N;
  wire RHS_MISO_L_P;
  wire RHS_MISO_M_N;
  wire RHS_MISO_M_P;
  wire RHS_MISO_N_N;
  wire RHS_MISO_N_P;
  wire RHS_MISO_O_N;
  wire RHS_MISO_O_P;
  wire RHS_MISO_P_N;
  wire RHS_MISO_P_P;
  wire RHS_MOSI_A;
  wire RHS_MOSI_B;
  wire RHS_MOSI_C;
  wire RHS_MOSI_D;
  wire RHS_MOSI_E;
  wire RHS_MOSI_F;
  wire RHS_MOSI_G;
  wire RHS_MOSI_H;
  wire RHS_MOSI_I_N;
  wire RHS_MOSI_I_P;
  wire RHS_MOSI_J_N;
  wire RHS_MOSI_J_P;
  wire RHS_MOSI_K_N;
  wire RHS_MOSI_K_P;
  wire RHS_MOSI_L_N;
  wire RHS_MOSI_L_P;
  wire RHS_MOSI_M_N;
  wire RHS_MOSI_M_P;
  wire RHS_MOSI_N_N;
  wire RHS_MOSI_N_P;
  wire RHS_MOSI_O_N;
  wire RHS_MOSI_O_P;
  wire RHS_MOSI_P_N;
  wire RHS_MOSI_P_P;
  wire RHS_SCLK;

  jtag_axi_test jtag_axi_test_i
       (.RHD_CS(RHD_CS),
        .RHD_MISO1_A(RHD_MISO1_A),
        .RHD_MISO1_B(RHD_MISO1_B),
        .RHD_MISO1_C(RHD_MISO1_C),
        .RHD_MISO1_D(RHD_MISO1_D),
        .RHD_MISO1_E(RHD_MISO1_E),
        .RHD_MISO1_F(RHD_MISO1_F),
        .RHD_MISO1_G(RHD_MISO1_G),
        .RHD_MISO1_H(RHD_MISO1_H),
        .RHD_MISO1_I_N(RHD_MISO1_I_N),
        .RHD_MISO1_I_P(RHD_MISO1_I_P),
        .RHD_MISO1_J_N(RHD_MISO1_J_N),
        .RHD_MISO1_J_P(RHD_MISO1_J_P),
        .RHD_MISO1_K_N(RHD_MISO1_K_N),
        .RHD_MISO1_K_P(RHD_MISO1_K_P),
        .RHD_MISO1_L_N(RHD_MISO1_L_N),
        .RHD_MISO1_L_P(RHD_MISO1_L_P),
        .RHD_MISO1_M_N(RHD_MISO1_M_N),
        .RHD_MISO1_M_P(RHD_MISO1_M_P),
        .RHD_MISO1_N_N(RHD_MISO1_N_N),
        .RHD_MISO1_N_P(RHD_MISO1_N_P),
        .RHD_MISO1_O_N(RHD_MISO1_O_N),
        .RHD_MISO1_O_P(RHD_MISO1_O_P),
        .RHD_MISO1_P_N(RHD_MISO1_P_N),
        .RHD_MISO1_P_P(RHD_MISO1_P_P),
        .RHD_MISO2_A(RHD_MISO2_A),
        .RHD_MISO2_B(RHD_MISO2_B),
        .RHD_MISO2_C(RHD_MISO2_C),
        .RHD_MISO2_D(RHD_MISO2_D),
        .RHD_MISO2_E(RHD_MISO2_E),
        .RHD_MISO2_F(RHD_MISO2_F),
        .RHD_MISO2_G(RHD_MISO2_G),
        .RHD_MISO2_H(RHD_MISO2_H),
        .RHD_MISO2_I_N(RHD_MISO2_I_N),
        .RHD_MISO2_I_P(RHD_MISO2_I_P),
        .RHD_MISO2_J_N(RHD_MISO2_J_N),
        .RHD_MISO2_J_P(RHD_MISO2_J_P),
        .RHD_MISO2_K_N(RHD_MISO2_K_N),
        .RHD_MISO2_K_P(RHD_MISO2_K_P),
        .RHD_MISO2_L_N(RHD_MISO2_L_N),
        .RHD_MISO2_L_P(RHD_MISO2_L_P),
        .RHD_MISO2_M_N(RHD_MISO2_M_N),
        .RHD_MISO2_M_P(RHD_MISO2_M_P),
        .RHD_MISO2_N_N(RHD_MISO2_N_N),
        .RHD_MISO2_N_P(RHD_MISO2_N_P),
        .RHD_MISO2_O_N(RHD_MISO2_O_N),
        .RHD_MISO2_O_P(RHD_MISO2_O_P),
        .RHD_MISO2_P_N(RHD_MISO2_P_N),
        .RHD_MISO2_P_P(RHD_MISO2_P_P),
        .RHD_MOSI(RHD_MOSI),
        .RHD_SCLK(RHD_SCLK),
        .RHS_CS(RHS_CS),
        .RHS_MISO_A(RHS_MISO_A),
        .RHS_MISO_B(RHS_MISO_B),
        .RHS_MISO_C(RHS_MISO_C),
        .RHS_MISO_D(RHS_MISO_D),
        .RHS_MISO_E(RHS_MISO_E),
        .RHS_MISO_F(RHS_MISO_F),
        .RHS_MISO_G(RHS_MISO_G),
        .RHS_MISO_H(RHS_MISO_H),
        .RHS_MISO_I_N(RHS_MISO_I_N),
        .RHS_MISO_I_P(RHS_MISO_I_P),
        .RHS_MISO_J_N(RHS_MISO_J_N),
        .RHS_MISO_J_P(RHS_MISO_J_P),
        .RHS_MISO_K_N(RHS_MISO_K_N),
        .RHS_MISO_K_P(RHS_MISO_K_P),
        .RHS_MISO_L_N(RHS_MISO_L_N),
        .RHS_MISO_L_P(RHS_MISO_L_P),
        .RHS_MISO_M_N(RHS_MISO_M_N),
        .RHS_MISO_M_P(RHS_MISO_M_P),
        .RHS_MISO_N_N(RHS_MISO_N_N),
        .RHS_MISO_N_P(RHS_MISO_N_P),
        .RHS_MISO_O_N(RHS_MISO_O_N),
        .RHS_MISO_O_P(RHS_MISO_O_P),
        .RHS_MISO_P_N(RHS_MISO_P_N),
        .RHS_MISO_P_P(RHS_MISO_P_P),
        .RHS_MOSI_A(RHS_MOSI_A),
        .RHS_MOSI_B(RHS_MOSI_B),
        .RHS_MOSI_C(RHS_MOSI_C),
        .RHS_MOSI_D(RHS_MOSI_D),
        .RHS_MOSI_E(RHS_MOSI_E),
        .RHS_MOSI_F(RHS_MOSI_F),
        .RHS_MOSI_G(RHS_MOSI_G),
        .RHS_MOSI_H(RHS_MOSI_H),
        .RHS_MOSI_I_N(RHS_MOSI_I_N),
        .RHS_MOSI_I_P(RHS_MOSI_I_P),
        .RHS_MOSI_J_N(RHS_MOSI_J_N),
        .RHS_MOSI_J_P(RHS_MOSI_J_P),
        .RHS_MOSI_K_N(RHS_MOSI_K_N),
        .RHS_MOSI_K_P(RHS_MOSI_K_P),
        .RHS_MOSI_L_N(RHS_MOSI_L_N),
        .RHS_MOSI_L_P(RHS_MOSI_L_P),
        .RHS_MOSI_M_N(RHS_MOSI_M_N),
        .RHS_MOSI_M_P(RHS_MOSI_M_P),
        .RHS_MOSI_N_N(RHS_MOSI_N_N),
        .RHS_MOSI_N_P(RHS_MOSI_N_P),
        .RHS_MOSI_O_N(RHS_MOSI_O_N),
        .RHS_MOSI_O_P(RHS_MOSI_O_P),
        .RHS_MOSI_P_N(RHS_MOSI_P_N),
        .RHS_MOSI_P_P(RHS_MOSI_P_P),
        .RHS_SCLK(RHS_SCLK));
endmodule
