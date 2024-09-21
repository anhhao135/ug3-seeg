//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Fri Sep 20 16:43:31 2024
//Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target jtag_axi_test.bd
//Design      : jtag_axi_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "jtag_axi_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=jtag_axi_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "jtag_axi_test.hwdef" *) 
module jtag_axi_test
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

  wire [0:0]Net;
  wire RHD_MISO1_A_1;
  wire RHD_MISO1_B_1;
  wire RHD_MISO1_C_1;
  wire RHD_MISO1_D_1;
  wire RHD_MISO1_E_1;
  wire RHD_MISO1_F_1;
  wire RHD_MISO1_G_1;
  wire RHD_MISO1_H_1;
  wire RHD_MISO1_I_N_1;
  wire RHD_MISO1_I_P_1;
  wire RHD_MISO1_J_N_1;
  wire RHD_MISO1_J_P_1;
  wire RHD_MISO1_K_N_1;
  wire RHD_MISO1_K_P_1;
  wire RHD_MISO1_L_N_1;
  wire RHD_MISO1_L_P_1;
  wire RHD_MISO1_M_N_1;
  wire RHD_MISO1_M_P_1;
  wire RHD_MISO1_N_N_1;
  wire RHD_MISO1_N_P_1;
  wire RHD_MISO1_O_N_1;
  wire RHD_MISO1_O_P_1;
  wire RHD_MISO1_P_N_1;
  wire RHD_MISO1_P_P_1;
  wire RHD_MISO2_A_1;
  wire RHD_MISO2_B_1;
  wire RHD_MISO2_C_1;
  wire RHD_MISO2_D_1;
  wire RHD_MISO2_E_1;
  wire RHD_MISO2_F_1;
  wire RHD_MISO2_G_1;
  wire RHD_MISO2_H_1;
  wire RHD_MISO2_I_N_1;
  wire RHD_MISO2_I_P_1;
  wire RHD_MISO2_J_N_1;
  wire RHD_MISO2_J_P_1;
  wire RHD_MISO2_K_N_1;
  wire RHD_MISO2_K_P_1;
  wire RHD_MISO2_L_N_1;
  wire RHD_MISO2_L_P_1;
  wire RHD_MISO2_M_N_1;
  wire RHD_MISO2_M_P_1;
  wire RHD_MISO2_N_N_1;
  wire RHD_MISO2_N_P_1;
  wire RHD_MISO2_O_N_1;
  wire RHD_MISO2_O_P_1;
  wire RHD_MISO2_P_N_1;
  wire RHD_MISO2_P_P_1;
  wire RHS_MISO_A_1;
  wire RHS_MISO_B_1;
  wire RHS_MISO_C_1;
  wire RHS_MISO_D_1;
  wire RHS_MISO_E_1;
  wire RHS_MISO_F_1;
  wire RHS_MISO_G_1;
  wire RHS_MISO_H_1;
  wire RHS_MISO_I_N_1;
  wire RHS_MISO_I_P_1;
  wire RHS_MISO_J_N_1;
  wire RHS_MISO_J_P_1;
  wire RHS_MISO_K_N_1;
  wire RHS_MISO_K_P_1;
  wire RHS_MISO_L_N_1;
  wire RHS_MISO_L_P_1;
  wire RHS_MISO_M_N_1;
  wire RHS_MISO_M_P_1;
  wire RHS_MISO_N_N_1;
  wire RHS_MISO_N_P_1;
  wire RHS_MISO_O_N_1;
  wire RHS_MISO_O_P_1;
  wire RHS_MISO_P_N_1;
  wire RHS_MISO_P_P_1;
  wire clk_wiz_0_clk_39M;
  wire clk_wiz_0_locked;
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire [2:0]jtag_axi_0_M_AXI_ARPROT;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire [2:0]jtag_axi_0_M_AXI_AWPROT;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire seeg_top_0_RHD_CS;
  wire seeg_top_0_RHD_MISO1_I_DEBUG;
  wire seeg_top_0_RHD_MISO1_J_DEBUG;
  wire seeg_top_0_RHD_MISO1_K_DEBUG;
  wire seeg_top_0_RHD_MISO1_L_DEBUG;
  wire seeg_top_0_RHD_MISO1_M_DEBUG;
  wire seeg_top_0_RHD_MISO1_N_DEBUG;
  wire seeg_top_0_RHD_MISO1_O_DEBUG;
  wire seeg_top_0_RHD_MISO1_P_DEBUG;
  wire seeg_top_0_RHD_MISO2_I_DEBUG;
  wire seeg_top_0_RHD_MISO2_J_DEBUG;
  wire seeg_top_0_RHD_MISO2_K_DEBUG;
  wire seeg_top_0_RHD_MISO2_L_DEBUG;
  wire seeg_top_0_RHD_MISO2_M_DEBUG;
  wire seeg_top_0_RHD_MISO2_N_DEBUG;
  wire seeg_top_0_RHD_MISO2_O_DEBUG;
  wire seeg_top_0_RHD_MISO2_P_DEBUG;
  wire seeg_top_0_RHD_MOSI;
  wire seeg_top_0_RHD_SCLK;
  wire seeg_top_0_RHS_CS;
  wire seeg_top_0_RHS_MISO_I_DEBUG;
  wire seeg_top_0_RHS_MISO_J_DEBUG;
  wire seeg_top_0_RHS_MISO_K_DEBUG;
  wire seeg_top_0_RHS_MISO_L_DEBUG;
  wire seeg_top_0_RHS_MISO_M_DEBUG;
  wire seeg_top_0_RHS_MISO_N_DEBUG;
  wire seeg_top_0_RHS_MISO_O_DEBUG;
  wire seeg_top_0_RHS_MISO_P_DEBUG;
  wire seeg_top_0_RHS_MOSI_A;
  wire seeg_top_0_RHS_MOSI_B;
  wire seeg_top_0_RHS_MOSI_C;
  wire seeg_top_0_RHS_MOSI_D;
  wire seeg_top_0_RHS_MOSI_E;
  wire seeg_top_0_RHS_MOSI_F;
  wire seeg_top_0_RHS_MOSI_G;
  wire seeg_top_0_RHS_MOSI_H;
  wire seeg_top_0_RHS_MOSI_I_DEBUG;
  wire seeg_top_0_RHS_MOSI_I_N;
  wire seeg_top_0_RHS_MOSI_I_P;
  wire seeg_top_0_RHS_MOSI_J_DEBUG;
  wire seeg_top_0_RHS_MOSI_J_N;
  wire seeg_top_0_RHS_MOSI_J_P;
  wire seeg_top_0_RHS_MOSI_K_DEBUG;
  wire seeg_top_0_RHS_MOSI_K_N;
  wire seeg_top_0_RHS_MOSI_K_P;
  wire seeg_top_0_RHS_MOSI_L_DEBUG;
  wire seeg_top_0_RHS_MOSI_L_N;
  wire seeg_top_0_RHS_MOSI_L_P;
  wire seeg_top_0_RHS_MOSI_M_DEBUG;
  wire seeg_top_0_RHS_MOSI_M_N;
  wire seeg_top_0_RHS_MOSI_M_P;
  wire seeg_top_0_RHS_MOSI_N_DEBUG;
  wire seeg_top_0_RHS_MOSI_N_N;
  wire seeg_top_0_RHS_MOSI_N_P;
  wire seeg_top_0_RHS_MOSI_O_DEBUG;
  wire seeg_top_0_RHS_MOSI_O_N;
  wire seeg_top_0_RHS_MOSI_O_P;
  wire seeg_top_0_RHS_MOSI_P_DEBUG;
  wire seeg_top_0_RHS_MOSI_P_N;
  wire seeg_top_0_RHS_MOSI_P_P;
  wire seeg_top_0_RHS_SCLK;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign RHD_CS = seeg_top_0_RHD_CS;
  assign RHD_MISO1_A_1 = RHD_MISO1_A;
  assign RHD_MISO1_B_1 = RHD_MISO1_B;
  assign RHD_MISO1_C_1 = RHD_MISO1_C;
  assign RHD_MISO1_D_1 = RHD_MISO1_D;
  assign RHD_MISO1_E_1 = RHD_MISO1_E;
  assign RHD_MISO1_F_1 = RHD_MISO1_F;
  assign RHD_MISO1_G_1 = RHD_MISO1_G;
  assign RHD_MISO1_H_1 = RHD_MISO1_H;
  assign RHD_MISO1_I_N_1 = RHD_MISO1_I_N;
  assign RHD_MISO1_I_P_1 = RHD_MISO1_I_P;
  assign RHD_MISO1_J_N_1 = RHD_MISO1_J_N;
  assign RHD_MISO1_J_P_1 = RHD_MISO1_J_P;
  assign RHD_MISO1_K_N_1 = RHD_MISO1_K_N;
  assign RHD_MISO1_K_P_1 = RHD_MISO1_K_P;
  assign RHD_MISO1_L_N_1 = RHD_MISO1_L_N;
  assign RHD_MISO1_L_P_1 = RHD_MISO1_L_P;
  assign RHD_MISO1_M_N_1 = RHD_MISO1_M_N;
  assign RHD_MISO1_M_P_1 = RHD_MISO1_M_P;
  assign RHD_MISO1_N_N_1 = RHD_MISO1_N_N;
  assign RHD_MISO1_N_P_1 = RHD_MISO1_N_P;
  assign RHD_MISO1_O_N_1 = RHD_MISO1_O_N;
  assign RHD_MISO1_O_P_1 = RHD_MISO1_O_P;
  assign RHD_MISO1_P_N_1 = RHD_MISO1_P_N;
  assign RHD_MISO1_P_P_1 = RHD_MISO1_P_P;
  assign RHD_MISO2_A_1 = RHD_MISO2_A;
  assign RHD_MISO2_B_1 = RHD_MISO2_B;
  assign RHD_MISO2_C_1 = RHD_MISO2_C;
  assign RHD_MISO2_D_1 = RHD_MISO2_D;
  assign RHD_MISO2_E_1 = RHD_MISO2_E;
  assign RHD_MISO2_F_1 = RHD_MISO2_F;
  assign RHD_MISO2_G_1 = RHD_MISO2_G;
  assign RHD_MISO2_H_1 = RHD_MISO2_H;
  assign RHD_MISO2_I_N_1 = RHD_MISO2_I_N;
  assign RHD_MISO2_I_P_1 = RHD_MISO2_I_P;
  assign RHD_MISO2_J_N_1 = RHD_MISO2_J_N;
  assign RHD_MISO2_J_P_1 = RHD_MISO2_J_P;
  assign RHD_MISO2_K_N_1 = RHD_MISO2_K_N;
  assign RHD_MISO2_K_P_1 = RHD_MISO2_K_P;
  assign RHD_MISO2_L_N_1 = RHD_MISO2_L_N;
  assign RHD_MISO2_L_P_1 = RHD_MISO2_L_P;
  assign RHD_MISO2_M_N_1 = RHD_MISO2_M_N;
  assign RHD_MISO2_M_P_1 = RHD_MISO2_M_P;
  assign RHD_MISO2_N_N_1 = RHD_MISO2_N_N;
  assign RHD_MISO2_N_P_1 = RHD_MISO2_N_P;
  assign RHD_MISO2_O_N_1 = RHD_MISO2_O_N;
  assign RHD_MISO2_O_P_1 = RHD_MISO2_O_P;
  assign RHD_MISO2_P_N_1 = RHD_MISO2_P_N;
  assign RHD_MISO2_P_P_1 = RHD_MISO2_P_P;
  assign RHD_MOSI = seeg_top_0_RHD_MOSI;
  assign RHD_SCLK = seeg_top_0_RHD_SCLK;
  assign RHS_CS = seeg_top_0_RHS_CS;
  assign RHS_MISO_A_1 = RHS_MISO_A;
  assign RHS_MISO_B_1 = RHS_MISO_B;
  assign RHS_MISO_C_1 = RHS_MISO_C;
  assign RHS_MISO_D_1 = RHS_MISO_D;
  assign RHS_MISO_E_1 = RHS_MISO_E;
  assign RHS_MISO_F_1 = RHS_MISO_F;
  assign RHS_MISO_G_1 = RHS_MISO_G;
  assign RHS_MISO_H_1 = RHS_MISO_H;
  assign RHS_MISO_I_N_1 = RHS_MISO_I_N;
  assign RHS_MISO_I_P_1 = RHS_MISO_I_P;
  assign RHS_MISO_J_N_1 = RHS_MISO_J_N;
  assign RHS_MISO_J_P_1 = RHS_MISO_J_P;
  assign RHS_MISO_K_N_1 = RHS_MISO_K_N;
  assign RHS_MISO_K_P_1 = RHS_MISO_K_P;
  assign RHS_MISO_L_N_1 = RHS_MISO_L_N;
  assign RHS_MISO_L_P_1 = RHS_MISO_L_P;
  assign RHS_MISO_M_N_1 = RHS_MISO_M_N;
  assign RHS_MISO_M_P_1 = RHS_MISO_M_P;
  assign RHS_MISO_N_N_1 = RHS_MISO_N_N;
  assign RHS_MISO_N_P_1 = RHS_MISO_N_P;
  assign RHS_MISO_O_N_1 = RHS_MISO_O_N;
  assign RHS_MISO_O_P_1 = RHS_MISO_O_P;
  assign RHS_MISO_P_N_1 = RHS_MISO_P_N;
  assign RHS_MISO_P_P_1 = RHS_MISO_P_P;
  assign RHS_MOSI_A = seeg_top_0_RHS_MOSI_A;
  assign RHS_MOSI_B = seeg_top_0_RHS_MOSI_B;
  assign RHS_MOSI_C = seeg_top_0_RHS_MOSI_C;
  assign RHS_MOSI_D = seeg_top_0_RHS_MOSI_D;
  assign RHS_MOSI_E = seeg_top_0_RHS_MOSI_E;
  assign RHS_MOSI_F = seeg_top_0_RHS_MOSI_F;
  assign RHS_MOSI_G = seeg_top_0_RHS_MOSI_G;
  assign RHS_MOSI_H = seeg_top_0_RHS_MOSI_H;
  assign RHS_MOSI_I_N = seeg_top_0_RHS_MOSI_I_N;
  assign RHS_MOSI_I_P = seeg_top_0_RHS_MOSI_I_P;
  assign RHS_MOSI_J_N = seeg_top_0_RHS_MOSI_J_N;
  assign RHS_MOSI_J_P = seeg_top_0_RHS_MOSI_J_P;
  assign RHS_MOSI_K_N = seeg_top_0_RHS_MOSI_K_N;
  assign RHS_MOSI_K_P = seeg_top_0_RHS_MOSI_K_P;
  assign RHS_MOSI_L_N = seeg_top_0_RHS_MOSI_L_N;
  assign RHS_MOSI_L_P = seeg_top_0_RHS_MOSI_L_P;
  assign RHS_MOSI_M_N = seeg_top_0_RHS_MOSI_M_N;
  assign RHS_MOSI_M_P = seeg_top_0_RHS_MOSI_M_P;
  assign RHS_MOSI_N_N = seeg_top_0_RHS_MOSI_N_N;
  assign RHS_MOSI_N_P = seeg_top_0_RHS_MOSI_N_P;
  assign RHS_MOSI_O_N = seeg_top_0_RHS_MOSI_O_N;
  assign RHS_MOSI_O_P = seeg_top_0_RHS_MOSI_O_P;
  assign RHS_MOSI_P_N = seeg_top_0_RHS_MOSI_P_N;
  assign RHS_MOSI_P_P = seeg_top_0_RHS_MOSI_P_P;
  assign RHS_SCLK = seeg_top_0_RHS_SCLK;
  jtag_axi_test_clk_wiz_0_0 clk_wiz_0
       (.clk_78M(clk_wiz_0_clk_39M),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk0),
        .locked(clk_wiz_0_locked));
  jtag_axi_test_ila_rhd_0 ila_rhd
       (.clk(clk_wiz_0_clk_39M),
        .probe0(seeg_top_0_RHD_MOSI),
        .probe1(seeg_top_0_RHD_SCLK),
        .probe10(RHD_MISO1_E_1),
        .probe11(RHD_MISO2_E_1),
        .probe12(RHD_MISO1_F_1),
        .probe13(RHD_MISO2_F_1),
        .probe14(RHD_MISO1_G_1),
        .probe15(RHD_MISO2_G_1),
        .probe16(RHD_MISO1_H_1),
        .probe17(RHD_MISO2_H_1),
        .probe18(seeg_top_0_RHD_MISO1_I_DEBUG),
        .probe19(seeg_top_0_RHD_MISO2_I_DEBUG),
        .probe2(RHD_MISO1_A_1),
        .probe20(seeg_top_0_RHD_MISO1_J_DEBUG),
        .probe21(seeg_top_0_RHD_MISO2_J_DEBUG),
        .probe22(seeg_top_0_RHD_MISO1_K_DEBUG),
        .probe23(seeg_top_0_RHD_MISO2_K_DEBUG),
        .probe24(seeg_top_0_RHD_MISO1_L_DEBUG),
        .probe25(seeg_top_0_RHD_MISO2_L_DEBUG),
        .probe26(seeg_top_0_RHD_MISO1_M_DEBUG),
        .probe27(seeg_top_0_RHD_MISO2_M_DEBUG),
        .probe28(seeg_top_0_RHD_MISO1_N_DEBUG),
        .probe29(seeg_top_0_RHD_MISO2_N_DEBUG),
        .probe3(RHD_MISO2_A_1),
        .probe30(seeg_top_0_RHD_MISO1_O_DEBUG),
        .probe31(seeg_top_0_RHD_MISO2_O_DEBUG),
        .probe32(seeg_top_0_RHD_MISO1_P_DEBUG),
        .probe33(seeg_top_0_RHD_MISO2_P_DEBUG),
        .probe34(seeg_top_0_RHD_CS),
        .probe4(RHD_MISO1_B_1),
        .probe5(RHD_MISO2_B_1),
        .probe6(RHD_MISO1_C_1),
        .probe7(RHD_MISO2_C_1),
        .probe8(RHD_MISO1_D_1),
        .probe9(RHD_MISO2_D_1));
  jtag_axi_test_ila_rhs_0 ila_rhs
       (.clk(clk_wiz_0_clk_39M),
        .probe0(seeg_top_0_RHS_MOSI_A),
        .probe1(seeg_top_0_RHS_MOSI_B),
        .probe10(seeg_top_0_RHS_MOSI_K_DEBUG),
        .probe11(seeg_top_0_RHS_MOSI_L_DEBUG),
        .probe12(seeg_top_0_RHS_MOSI_M_DEBUG),
        .probe13(seeg_top_0_RHS_MOSI_N_DEBUG),
        .probe14(seeg_top_0_RHS_MOSI_O_DEBUG),
        .probe15(seeg_top_0_RHS_MOSI_P_DEBUG),
        .probe16(RHS_MISO_A_1),
        .probe17(RHS_MISO_B_1),
        .probe18(RHS_MISO_C_1),
        .probe19(RHS_MISO_D_1),
        .probe2(seeg_top_0_RHS_MOSI_C),
        .probe20(RHS_MISO_E_1),
        .probe21(RHS_MISO_F_1),
        .probe22(RHS_MISO_G_1),
        .probe23(RHS_MISO_H_1),
        .probe24(seeg_top_0_RHS_MISO_I_DEBUG),
        .probe25(seeg_top_0_RHS_MISO_J_DEBUG),
        .probe26(seeg_top_0_RHS_MISO_K_DEBUG),
        .probe27(seeg_top_0_RHS_MISO_L_DEBUG),
        .probe28(seeg_top_0_RHS_MISO_M_DEBUG),
        .probe29(seeg_top_0_RHS_MISO_N_DEBUG),
        .probe3(seeg_top_0_RHS_MOSI_D),
        .probe30(seeg_top_0_RHS_MISO_O_DEBUG),
        .probe31(seeg_top_0_RHS_MISO_P_DEBUG),
        .probe32(seeg_top_0_RHS_SCLK),
        .probe33(seeg_top_0_RHS_CS),
        .probe4(seeg_top_0_RHS_MOSI_E),
        .probe5(seeg_top_0_RHS_MOSI_F),
        .probe6(seeg_top_0_RHS_MOSI_G),
        .probe7(seeg_top_0_RHS_MOSI_H),
        .probe8(seeg_top_0_RHS_MOSI_I_DEBUG),
        .probe9(seeg_top_0_RHS_MOSI_J_DEBUG));
  jtag_axi_test_jtag_axi_0_0 jtag_axi_0
       (.aclk(clk_wiz_0_clk_39M),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arprot(jtag_axi_0_M_AXI_ARPROT),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awprot(jtag_axi_0_M_AXI_AWPROT),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  jtag_axi_test_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_39M));
  jtag_axi_test_seeg_top_0_0 seeg_top_0
       (.M_AXIS_ACLK(clk_wiz_0_clk_39M),
        .M_AXIS_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M_AXIS_tready(Net),
        .RHD_CS(seeg_top_0_RHD_CS),
        .RHD_MISO1_A(RHD_MISO1_A_1),
        .RHD_MISO1_B(RHD_MISO1_B_1),
        .RHD_MISO1_C(RHD_MISO1_C_1),
        .RHD_MISO1_D(RHD_MISO1_D_1),
        .RHD_MISO1_E(RHD_MISO1_E_1),
        .RHD_MISO1_F(RHD_MISO1_F_1),
        .RHD_MISO1_G(RHD_MISO1_G_1),
        .RHD_MISO1_H(RHD_MISO1_H_1),
        .RHD_MISO1_I_DEBUG(seeg_top_0_RHD_MISO1_I_DEBUG),
        .RHD_MISO1_I_N(RHD_MISO1_I_N_1),
        .RHD_MISO1_I_P(RHD_MISO1_I_P_1),
        .RHD_MISO1_J_DEBUG(seeg_top_0_RHD_MISO1_J_DEBUG),
        .RHD_MISO1_J_N(RHD_MISO1_J_N_1),
        .RHD_MISO1_J_P(RHD_MISO1_J_P_1),
        .RHD_MISO1_K_DEBUG(seeg_top_0_RHD_MISO1_K_DEBUG),
        .RHD_MISO1_K_N(RHD_MISO1_K_N_1),
        .RHD_MISO1_K_P(RHD_MISO1_K_P_1),
        .RHD_MISO1_L_DEBUG(seeg_top_0_RHD_MISO1_L_DEBUG),
        .RHD_MISO1_L_N(RHD_MISO1_L_N_1),
        .RHD_MISO1_L_P(RHD_MISO1_L_P_1),
        .RHD_MISO1_M_DEBUG(seeg_top_0_RHD_MISO1_M_DEBUG),
        .RHD_MISO1_M_N(RHD_MISO1_M_N_1),
        .RHD_MISO1_M_P(RHD_MISO1_M_P_1),
        .RHD_MISO1_N_DEBUG(seeg_top_0_RHD_MISO1_N_DEBUG),
        .RHD_MISO1_N_N(RHD_MISO1_N_N_1),
        .RHD_MISO1_N_P(RHD_MISO1_N_P_1),
        .RHD_MISO1_O_DEBUG(seeg_top_0_RHD_MISO1_O_DEBUG),
        .RHD_MISO1_O_N(RHD_MISO1_O_N_1),
        .RHD_MISO1_O_P(RHD_MISO1_O_P_1),
        .RHD_MISO1_P_DEBUG(seeg_top_0_RHD_MISO1_P_DEBUG),
        .RHD_MISO1_P_N(RHD_MISO1_P_N_1),
        .RHD_MISO1_P_P(RHD_MISO1_P_P_1),
        .RHD_MISO2_A(RHD_MISO2_A_1),
        .RHD_MISO2_B(RHD_MISO2_B_1),
        .RHD_MISO2_C(RHD_MISO2_C_1),
        .RHD_MISO2_D(RHD_MISO2_D_1),
        .RHD_MISO2_E(RHD_MISO2_E_1),
        .RHD_MISO2_F(RHD_MISO2_F_1),
        .RHD_MISO2_G(RHD_MISO2_G_1),
        .RHD_MISO2_H(RHD_MISO2_H_1),
        .RHD_MISO2_I_DEBUG(seeg_top_0_RHD_MISO2_I_DEBUG),
        .RHD_MISO2_I_N(RHD_MISO2_I_N_1),
        .RHD_MISO2_I_P(RHD_MISO2_I_P_1),
        .RHD_MISO2_J_DEBUG(seeg_top_0_RHD_MISO2_J_DEBUG),
        .RHD_MISO2_J_N(RHD_MISO2_J_N_1),
        .RHD_MISO2_J_P(RHD_MISO2_J_P_1),
        .RHD_MISO2_K_DEBUG(seeg_top_0_RHD_MISO2_K_DEBUG),
        .RHD_MISO2_K_N(RHD_MISO2_K_N_1),
        .RHD_MISO2_K_P(RHD_MISO2_K_P_1),
        .RHD_MISO2_L_DEBUG(seeg_top_0_RHD_MISO2_L_DEBUG),
        .RHD_MISO2_L_N(RHD_MISO2_L_N_1),
        .RHD_MISO2_L_P(RHD_MISO2_L_P_1),
        .RHD_MISO2_M_DEBUG(seeg_top_0_RHD_MISO2_M_DEBUG),
        .RHD_MISO2_M_N(RHD_MISO2_M_N_1),
        .RHD_MISO2_M_P(RHD_MISO2_M_P_1),
        .RHD_MISO2_N_DEBUG(seeg_top_0_RHD_MISO2_N_DEBUG),
        .RHD_MISO2_N_N(RHD_MISO2_N_N_1),
        .RHD_MISO2_N_P(RHD_MISO2_N_P_1),
        .RHD_MISO2_O_DEBUG(seeg_top_0_RHD_MISO2_O_DEBUG),
        .RHD_MISO2_O_N(RHD_MISO2_O_N_1),
        .RHD_MISO2_O_P(RHD_MISO2_O_P_1),
        .RHD_MISO2_P_DEBUG(seeg_top_0_RHD_MISO2_P_DEBUG),
        .RHD_MISO2_P_N(RHD_MISO2_P_N_1),
        .RHD_MISO2_P_P(RHD_MISO2_P_P_1),
        .RHD_MOSI(seeg_top_0_RHD_MOSI),
        .RHD_SCLK(seeg_top_0_RHD_SCLK),
        .RHS_CS(seeg_top_0_RHS_CS),
        .RHS_MISO_A(RHS_MISO_A_1),
        .RHS_MISO_B(RHS_MISO_B_1),
        .RHS_MISO_C(RHS_MISO_C_1),
        .RHS_MISO_D(RHS_MISO_D_1),
        .RHS_MISO_E(RHS_MISO_E_1),
        .RHS_MISO_F(RHS_MISO_F_1),
        .RHS_MISO_G(RHS_MISO_G_1),
        .RHS_MISO_H(RHS_MISO_H_1),
        .RHS_MISO_I_DEBUG(seeg_top_0_RHS_MISO_I_DEBUG),
        .RHS_MISO_I_N(RHS_MISO_I_N_1),
        .RHS_MISO_I_P(RHS_MISO_I_P_1),
        .RHS_MISO_J_DEBUG(seeg_top_0_RHS_MISO_J_DEBUG),
        .RHS_MISO_J_N(RHS_MISO_J_N_1),
        .RHS_MISO_J_P(RHS_MISO_J_P_1),
        .RHS_MISO_K_DEBUG(seeg_top_0_RHS_MISO_K_DEBUG),
        .RHS_MISO_K_N(RHS_MISO_K_N_1),
        .RHS_MISO_K_P(RHS_MISO_K_P_1),
        .RHS_MISO_L_DEBUG(seeg_top_0_RHS_MISO_L_DEBUG),
        .RHS_MISO_L_N(RHS_MISO_L_N_1),
        .RHS_MISO_L_P(RHS_MISO_L_P_1),
        .RHS_MISO_M_DEBUG(seeg_top_0_RHS_MISO_M_DEBUG),
        .RHS_MISO_M_N(RHS_MISO_M_N_1),
        .RHS_MISO_M_P(RHS_MISO_M_P_1),
        .RHS_MISO_N_DEBUG(seeg_top_0_RHS_MISO_N_DEBUG),
        .RHS_MISO_N_N(RHS_MISO_N_N_1),
        .RHS_MISO_N_P(RHS_MISO_N_P_1),
        .RHS_MISO_O_DEBUG(seeg_top_0_RHS_MISO_O_DEBUG),
        .RHS_MISO_O_N(RHS_MISO_O_N_1),
        .RHS_MISO_O_P(RHS_MISO_O_P_1),
        .RHS_MISO_P_DEBUG(seeg_top_0_RHS_MISO_P_DEBUG),
        .RHS_MISO_P_N(RHS_MISO_P_N_1),
        .RHS_MISO_P_P(RHS_MISO_P_P_1),
        .RHS_MOSI_A(seeg_top_0_RHS_MOSI_A),
        .RHS_MOSI_B(seeg_top_0_RHS_MOSI_B),
        .RHS_MOSI_C(seeg_top_0_RHS_MOSI_C),
        .RHS_MOSI_D(seeg_top_0_RHS_MOSI_D),
        .RHS_MOSI_E(seeg_top_0_RHS_MOSI_E),
        .RHS_MOSI_F(seeg_top_0_RHS_MOSI_F),
        .RHS_MOSI_G(seeg_top_0_RHS_MOSI_G),
        .RHS_MOSI_H(seeg_top_0_RHS_MOSI_H),
        .RHS_MOSI_I_DEBUG(seeg_top_0_RHS_MOSI_I_DEBUG),
        .RHS_MOSI_I_N(seeg_top_0_RHS_MOSI_I_N),
        .RHS_MOSI_I_P(seeg_top_0_RHS_MOSI_I_P),
        .RHS_MOSI_J_DEBUG(seeg_top_0_RHS_MOSI_J_DEBUG),
        .RHS_MOSI_J_N(seeg_top_0_RHS_MOSI_J_N),
        .RHS_MOSI_J_P(seeg_top_0_RHS_MOSI_J_P),
        .RHS_MOSI_K_DEBUG(seeg_top_0_RHS_MOSI_K_DEBUG),
        .RHS_MOSI_K_N(seeg_top_0_RHS_MOSI_K_N),
        .RHS_MOSI_K_P(seeg_top_0_RHS_MOSI_K_P),
        .RHS_MOSI_L_DEBUG(seeg_top_0_RHS_MOSI_L_DEBUG),
        .RHS_MOSI_L_N(seeg_top_0_RHS_MOSI_L_N),
        .RHS_MOSI_L_P(seeg_top_0_RHS_MOSI_L_P),
        .RHS_MOSI_M_DEBUG(seeg_top_0_RHS_MOSI_M_DEBUG),
        .RHS_MOSI_M_N(seeg_top_0_RHS_MOSI_M_N),
        .RHS_MOSI_M_P(seeg_top_0_RHS_MOSI_M_P),
        .RHS_MOSI_N_DEBUG(seeg_top_0_RHS_MOSI_N_DEBUG),
        .RHS_MOSI_N_N(seeg_top_0_RHS_MOSI_N_N),
        .RHS_MOSI_N_P(seeg_top_0_RHS_MOSI_N_P),
        .RHS_MOSI_O_DEBUG(seeg_top_0_RHS_MOSI_O_DEBUG),
        .RHS_MOSI_O_N(seeg_top_0_RHS_MOSI_O_N),
        .RHS_MOSI_O_P(seeg_top_0_RHS_MOSI_O_P),
        .RHS_MOSI_P_DEBUG(seeg_top_0_RHS_MOSI_P_DEBUG),
        .RHS_MOSI_P_N(seeg_top_0_RHS_MOSI_P_N),
        .RHS_MOSI_P_P(seeg_top_0_RHS_MOSI_P_P),
        .RHS_SCLK(seeg_top_0_RHS_SCLK),
        .S_AXI_ACLK(clk_wiz_0_clk_39M),
        .S_AXI_ARADDR(jtag_axi_0_M_AXI_ARADDR),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(jtag_axi_0_M_AXI_ARPROT),
        .S_AXI_ARREADY(jtag_axi_0_M_AXI_ARREADY),
        .S_AXI_ARVALID(jtag_axi_0_M_AXI_ARVALID),
        .S_AXI_AWADDR(jtag_axi_0_M_AXI_AWADDR),
        .S_AXI_AWPROT(jtag_axi_0_M_AXI_AWPROT),
        .S_AXI_AWREADY(jtag_axi_0_M_AXI_AWREADY),
        .S_AXI_AWVALID(jtag_axi_0_M_AXI_AWVALID),
        .S_AXI_BREADY(jtag_axi_0_M_AXI_BREADY),
        .S_AXI_BRESP(jtag_axi_0_M_AXI_BRESP),
        .S_AXI_BVALID(jtag_axi_0_M_AXI_BVALID),
        .S_AXI_RDATA(jtag_axi_0_M_AXI_RDATA),
        .S_AXI_RREADY(jtag_axi_0_M_AXI_RREADY),
        .S_AXI_RRESP(jtag_axi_0_M_AXI_RRESP),
        .S_AXI_RVALID(jtag_axi_0_M_AXI_RVALID),
        .S_AXI_WDATA(jtag_axi_0_M_AXI_WDATA),
        .S_AXI_WREADY(jtag_axi_0_M_AXI_WREADY),
        .S_AXI_WSTRB(jtag_axi_0_M_AXI_WSTRB),
        .S_AXI_WVALID(jtag_axi_0_M_AXI_WVALID),
        .aux_signal(1'b0));
  jtag_axi_test_xlconstant_0_0 xlconstant_0
       (.dout(Net));
  jtag_axi_test_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_gpio_i({1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_arready(1'b0),
        .maxigp2_awready(1'b0),
        .maxigp2_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_bresp({1'b0,1'b0}),
        .maxigp2_bvalid(1'b0),
        .maxigp2_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_rlast(1'b0),
        .maxigp2_rresp({1'b0,1'b0}),
        .maxigp2_rvalid(1'b0),
        .maxigp2_wready(1'b0),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arburst({1'b0,1'b1}),
        .saxigp0_arcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlock(1'b0),
        .saxigp0_arprot({1'b0,1'b0,1'b0}),
        .saxigp0_arqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arsize({1'b1,1'b0,1'b0}),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(1'b0),
        .saxigp0_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awburst({1'b0,1'b1}),
        .saxigp0_awcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlock(1'b0),
        .saxigp0_awprot({1'b0,1'b0,1'b0}),
        .saxigp0_awqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awsize({1'b1,1'b0,1'b0}),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(1'b0),
        .saxigp0_bready(1'b0),
        .saxigp0_rready(1'b0),
        .saxigp0_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_wlast(1'b0),
        .saxigp0_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .saxigp0_wvalid(1'b0),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
