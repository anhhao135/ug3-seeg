//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Mon Oct  7 11:43:57 2024
//Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target seeg_zynq.bd
//Design      : seeg_zynq
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "seeg_zynq,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=seeg_zynq,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "seeg_zynq.hwdef" *) 
module seeg_zynq
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
  wire [63:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [63:0]axi_dma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_ARPROT;
  wire axi_dma_0_M_AXI_SG_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_ARSIZE;
  wire axi_dma_0_M_AXI_SG_ARVALID;
  wire [63:0]axi_dma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_AWPROT;
  wire axi_dma_0_M_AXI_SG_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_AWSIZE;
  wire axi_dma_0_M_AXI_SG_AWVALID;
  wire axi_dma_0_M_AXI_SG_BREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_BRESP;
  wire axi_dma_0_M_AXI_SG_BVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_RDATA;
  wire axi_dma_0_M_AXI_SG_RLAST;
  wire axi_dma_0_M_AXI_SG_RREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_RRESP;
  wire axi_dma_0_M_AXI_SG_RVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_WDATA;
  wire axi_dma_0_M_AXI_SG_WLAST;
  wire axi_dma_0_M_AXI_SG_WREADY;
  wire [3:0]axi_dma_0_M_AXI_SG_WSTRB;
  wire axi_dma_0_M_AXI_SG_WVALID;
  wire axi_dma_0_s2mm_introut;
  wire clk_wiz_0_clk_39M;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [63:0]seeg_top_0_M_AXIS_TDATA;
  wire seeg_top_0_M_AXIS_TLAST;
  wire seeg_top_0_M_AXIS_TREADY;
  wire seeg_top_0_M_AXIS_TVALID;
  wire seeg_top_0_RHD_CS;
  wire seeg_top_0_RHD_MOSI;
  wire seeg_top_0_RHD_SCLK;
  wire seeg_top_0_RHS_CS;
  wire seeg_top_0_RHS_MOSI_A;
  wire seeg_top_0_RHS_MOSI_B;
  wire seeg_top_0_RHS_MOSI_C;
  wire seeg_top_0_RHS_MOSI_D;
  wire seeg_top_0_RHS_MOSI_E;
  wire seeg_top_0_RHS_MOSI_F;
  wire seeg_top_0_RHS_MOSI_G;
  wire seeg_top_0_RHS_MOSI_H;
  wire seeg_top_0_RHS_MOSI_I_N;
  wire seeg_top_0_RHS_MOSI_I_P;
  wire seeg_top_0_RHS_MOSI_J_N;
  wire seeg_top_0_RHS_MOSI_J_P;
  wire seeg_top_0_RHS_MOSI_K_N;
  wire seeg_top_0_RHS_MOSI_K_P;
  wire seeg_top_0_RHS_MOSI_L_N;
  wire seeg_top_0_RHS_MOSI_L_P;
  wire seeg_top_0_RHS_MOSI_M_N;
  wire seeg_top_0_RHS_MOSI_M_P;
  wire seeg_top_0_RHS_MOSI_N_N;
  wire seeg_top_0_RHS_MOSI_N_P;
  wire seeg_top_0_RHS_MOSI_O_N;
  wire seeg_top_0_RHS_MOSI_O_P;
  wire seeg_top_0_RHS_MOSI_P_N;
  wire seeg_top_0_RHS_MOSI_P_P;
  wire seeg_top_0_RHS_SCLK;
  wire [48:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [48:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [127:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [127:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [15:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]smartconnect_1_M00_AXI_ARADDR;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [31:0]smartconnect_1_M00_AXI_AWADDR;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [3:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [9:0]smartconnect_1_M01_AXI_ARADDR;
  wire smartconnect_1_M01_AXI_ARREADY;
  wire smartconnect_1_M01_AXI_ARVALID;
  wire [9:0]smartconnect_1_M01_AXI_AWADDR;
  wire smartconnect_1_M01_AXI_AWREADY;
  wire smartconnect_1_M01_AXI_AWVALID;
  wire smartconnect_1_M01_AXI_BREADY;
  wire [1:0]smartconnect_1_M01_AXI_BRESP;
  wire smartconnect_1_M01_AXI_BVALID;
  wire [31:0]smartconnect_1_M01_AXI_RDATA;
  wire smartconnect_1_M01_AXI_RREADY;
  wire [1:0]smartconnect_1_M01_AXI_RRESP;
  wire smartconnect_1_M01_AXI_RVALID;
  wire [31:0]smartconnect_1_M01_AXI_WDATA;
  wire smartconnect_1_M01_AXI_WREADY;
  wire smartconnect_1_M01_AXI_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
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
  seeg_zynq_axi_dma_0_1 axi_dma_0
       (.axi_resetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_s2mm_aclk(clk_wiz_0_clk_39M),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(clk_wiz_0_clk_39M),
        .m_axi_sg_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(clk_wiz_0_clk_39M),
        .s_axi_lite_araddr(smartconnect_1_M01_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_1_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_1_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_1_M01_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_1_M01_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_1_M01_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_1_M01_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_1_M01_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_1_M01_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_1_M01_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_1_M01_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_1_M01_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_1_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(seeg_top_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(seeg_top_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(seeg_top_0_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(seeg_top_0_M_AXIS_TVALID));
  seeg_zynq_clk_wiz_0_0 clk_wiz_0
       (.clk_78M(clk_wiz_0_clk_39M),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk0),
        .locked(clk_wiz_0_locked));
  seeg_zynq_proc_sys_reset_0_0 proc_sys_reset_78M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_39M));
  seeg_zynq_seeg_top_0_0 seeg_top_0
       (.M_AXIS_ACLK(clk_wiz_0_clk_39M),
        .M_AXIS_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M_AXIS_tdata(seeg_top_0_M_AXIS_TDATA),
        .M_AXIS_tlast(seeg_top_0_M_AXIS_TLAST),
        .M_AXIS_tready(seeg_top_0_M_AXIS_TREADY),
        .M_AXIS_tvalid(seeg_top_0_M_AXIS_TVALID),
        .RHD_CS(seeg_top_0_RHD_CS),
        .RHD_MISO1_A(RHD_MISO1_A_1),
        .RHD_MISO1_B(RHD_MISO1_B_1),
        .RHD_MISO1_C(RHD_MISO1_C_1),
        .RHD_MISO1_D(RHD_MISO1_D_1),
        .RHD_MISO1_E(RHD_MISO1_E_1),
        .RHD_MISO1_F(RHD_MISO1_F_1),
        .RHD_MISO1_G(RHD_MISO1_G_1),
        .RHD_MISO1_H(RHD_MISO1_H_1),
        .RHD_MISO1_I_N(RHD_MISO1_I_N_1),
        .RHD_MISO1_I_P(RHD_MISO1_I_P_1),
        .RHD_MISO1_J_N(RHD_MISO1_J_N_1),
        .RHD_MISO1_J_P(RHD_MISO1_J_P_1),
        .RHD_MISO1_K_N(RHD_MISO1_K_N_1),
        .RHD_MISO1_K_P(RHD_MISO1_K_P_1),
        .RHD_MISO1_L_N(RHD_MISO1_L_N_1),
        .RHD_MISO1_L_P(RHD_MISO1_L_P_1),
        .RHD_MISO1_M_N(RHD_MISO1_M_N_1),
        .RHD_MISO1_M_P(RHD_MISO1_M_P_1),
        .RHD_MISO1_N_N(RHD_MISO1_N_N_1),
        .RHD_MISO1_N_P(RHD_MISO1_N_P_1),
        .RHD_MISO1_O_N(RHD_MISO1_O_N_1),
        .RHD_MISO1_O_P(RHD_MISO1_O_P_1),
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
        .RHD_MISO2_I_N(RHD_MISO2_I_N_1),
        .RHD_MISO2_I_P(RHD_MISO2_I_P_1),
        .RHD_MISO2_J_N(RHD_MISO2_J_N_1),
        .RHD_MISO2_J_P(RHD_MISO2_J_P_1),
        .RHD_MISO2_K_N(RHD_MISO2_K_N_1),
        .RHD_MISO2_K_P(RHD_MISO2_K_P_1),
        .RHD_MISO2_L_N(RHD_MISO2_L_N_1),
        .RHD_MISO2_L_P(RHD_MISO2_L_P_1),
        .RHD_MISO2_M_N(RHD_MISO2_M_N_1),
        .RHD_MISO2_M_P(RHD_MISO2_M_P_1),
        .RHD_MISO2_N_N(RHD_MISO2_N_N_1),
        .RHD_MISO2_N_P(RHD_MISO2_N_P_1),
        .RHD_MISO2_O_N(RHD_MISO2_O_N_1),
        .RHD_MISO2_O_P(RHD_MISO2_O_P_1),
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
        .RHS_MISO_I_N(RHS_MISO_I_N_1),
        .RHS_MISO_I_P(RHS_MISO_I_P_1),
        .RHS_MISO_J_N(RHS_MISO_J_N_1),
        .RHS_MISO_J_P(RHS_MISO_J_P_1),
        .RHS_MISO_K_N(RHS_MISO_K_N_1),
        .RHS_MISO_K_P(RHS_MISO_K_P_1),
        .RHS_MISO_L_N(RHS_MISO_L_N_1),
        .RHS_MISO_L_P(RHS_MISO_L_P_1),
        .RHS_MISO_M_N(RHS_MISO_M_N_1),
        .RHS_MISO_M_P(RHS_MISO_M_P_1),
        .RHS_MISO_N_N(RHS_MISO_N_N_1),
        .RHS_MISO_N_P(RHS_MISO_N_P_1),
        .RHS_MISO_O_N(RHS_MISO_O_N_1),
        .RHS_MISO_O_P(RHS_MISO_O_P_1),
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
        .RHS_MOSI_I_N(seeg_top_0_RHS_MOSI_I_N),
        .RHS_MOSI_I_P(seeg_top_0_RHS_MOSI_I_P),
        .RHS_MOSI_J_N(seeg_top_0_RHS_MOSI_J_N),
        .RHS_MOSI_J_P(seeg_top_0_RHS_MOSI_J_P),
        .RHS_MOSI_K_N(seeg_top_0_RHS_MOSI_K_N),
        .RHS_MOSI_K_P(seeg_top_0_RHS_MOSI_K_P),
        .RHS_MOSI_L_N(seeg_top_0_RHS_MOSI_L_N),
        .RHS_MOSI_L_P(seeg_top_0_RHS_MOSI_L_P),
        .RHS_MOSI_M_N(seeg_top_0_RHS_MOSI_M_N),
        .RHS_MOSI_M_P(seeg_top_0_RHS_MOSI_M_P),
        .RHS_MOSI_N_N(seeg_top_0_RHS_MOSI_N_N),
        .RHS_MOSI_N_P(seeg_top_0_RHS_MOSI_N_P),
        .RHS_MOSI_O_N(seeg_top_0_RHS_MOSI_O_N),
        .RHS_MOSI_O_P(seeg_top_0_RHS_MOSI_O_P),
        .RHS_MOSI_P_N(seeg_top_0_RHS_MOSI_P_N),
        .RHS_MOSI_P_P(seeg_top_0_RHS_MOSI_P_P),
        .RHS_SCLK(seeg_top_0_RHS_SCLK),
        .S_AXI_ACLK(clk_wiz_0_clk_39M),
        .S_AXI_ARADDR(smartconnect_1_M00_AXI_ARADDR),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(smartconnect_1_M00_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_1_M00_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_1_M00_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_1_M00_AXI_AWADDR),
        .S_AXI_AWPROT(smartconnect_1_M00_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_1_M00_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_1_M00_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_1_M00_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_1_M00_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_1_M00_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_1_M00_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_1_M00_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_1_M00_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_1_M00_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_1_M00_AXI_WDATA),
        .S_AXI_WREADY(smartconnect_1_M00_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_1_M00_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_1_M00_AXI_WVALID),
        .aux_signal(1'b0));
  seeg_zynq_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_dma_0_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_dma_0_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .aclk(clk_wiz_0_clk_39M),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  seeg_zynq_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_1_M01_AXI_WREADY),
        .M01_AXI_wvalid(smartconnect_1_M01_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .aclk(clk_wiz_0_clk_39M),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  seeg_zynq_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_gpio_i({1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(clk_wiz_0_clk_39M),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(axi_dma_0_s2mm_introut),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(smartconnect_0_M00_AXI_ARADDR),
        .saxigp0_arburst(smartconnect_0_M00_AXI_ARBURST),
        .saxigp0_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(smartconnect_0_M00_AXI_ARLEN),
        .saxigp0_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .saxigp0_arprot(smartconnect_0_M00_AXI_ARPROT),
        .saxigp0_arqos(smartconnect_0_M00_AXI_ARQOS),
        .saxigp0_arready(smartconnect_0_M00_AXI_ARREADY),
        .saxigp0_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .saxigp0_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .saxigp0_awburst(smartconnect_0_M00_AXI_AWBURST),
        .saxigp0_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(smartconnect_0_M00_AXI_AWLEN),
        .saxigp0_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .saxigp0_awprot(smartconnect_0_M00_AXI_AWPROT),
        .saxigp0_awqos(smartconnect_0_M00_AXI_AWQOS),
        .saxigp0_awready(smartconnect_0_M00_AXI_AWREADY),
        .saxigp0_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .saxigp0_bready(smartconnect_0_M00_AXI_BREADY),
        .saxigp0_bresp(smartconnect_0_M00_AXI_BRESP),
        .saxigp0_bvalid(smartconnect_0_M00_AXI_BVALID),
        .saxigp0_rdata(smartconnect_0_M00_AXI_RDATA),
        .saxigp0_rlast(smartconnect_0_M00_AXI_RLAST),
        .saxigp0_rready(smartconnect_0_M00_AXI_RREADY),
        .saxigp0_rresp(smartconnect_0_M00_AXI_RRESP),
        .saxigp0_rvalid(smartconnect_0_M00_AXI_RVALID),
        .saxigp0_wdata(smartconnect_0_M00_AXI_WDATA),
        .saxigp0_wlast(smartconnect_0_M00_AXI_WLAST),
        .saxigp0_wready(smartconnect_0_M00_AXI_WREADY),
        .saxigp0_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .saxigp0_wvalid(smartconnect_0_M00_AXI_WVALID),
        .saxihpc0_fpd_aclk(clk_wiz_0_clk_39M));
endmodule
