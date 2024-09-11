// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 10 11:47:51 2024
// Host        : GramForGram running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/jtag_axi_test/ip/jtag_axi_test_seeg_top_0_0/jtag_axi_test_seeg_top_0_0_stub.v
// Design      : jtag_axi_test_seeg_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "seeg_top,Vivado 2023.1" *)
module jtag_axi_test_seeg_top_0_0(M_AXIS_ACLK, M_AXIS_ARESETN, M_AXIS_tdata, 
  M_AXIS_tvalid, M_AXIS_tready, M_AXIS_tlast, S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, 
  S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, 
  S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, RHD_CS, 
  RHD_MOSI, RHD_SCLK, RHD_MISO1_A, RHD_MISO2_A, RHD_MISO1_B, RHD_MISO2_B, RHD_MISO1_C, 
  RHD_MISO2_C, RHD_MISO1_D, RHD_MISO2_D, RHD_MISO1_E, RHD_MISO2_E, RHD_MISO1_F, RHD_MISO2_F, 
  RHD_MISO1_G, RHD_MISO2_G, RHD_MISO1_H, RHD_MISO2_H, RHD_MISO1_I, RHD_MISO2_I, RHD_MISO1_J, 
  RHD_MISO2_J, RHD_MISO1_K, RHD_MISO2_K, RHD_MISO1_L, RHD_MISO2_L, RHD_MISO1_M, RHD_MISO2_M, 
  RHD_MISO1_N, RHD_MISO2_N, RHD_MISO1_O, RHD_MISO2_O, RHD_MISO1_P, RHD_MISO2_P, RHD_MISO1_I_P, 
  RHD_MISO1_I_N, RHD_MISO2_I_P, RHD_MISO2_I_N, RHD_MISO1_J_P, RHD_MISO1_J_N, RHD_MISO2_J_P, 
  RHD_MISO2_J_N, RHD_MISO1_K_P, RHD_MISO1_K_N, RHD_MISO2_K_P, RHD_MISO2_K_N, RHD_MISO1_L_P, 
  RHD_MISO1_L_N, RHD_MISO2_L_P, RHD_MISO2_L_N, RHD_MISO1_M_P, RHD_MISO1_M_N, RHD_MISO2_M_P, 
  RHD_MISO2_M_N, RHD_MISO1_N_P, RHD_MISO1_N_N, RHD_MISO2_N_P, RHD_MISO2_N_N, RHD_MISO1_O_P, 
  RHD_MISO1_O_N, RHD_MISO2_O_P, RHD_MISO2_O_N, RHD_MISO1_P_P, RHD_MISO1_P_N, RHD_MISO2_P_P, 
  RHD_MISO2_P_N, RHS_CS, RHS_SCLK, RHS_MOSI_A, RHS_MOSI_B, RHS_MOSI_C, RHS_MOSI_D, RHS_MOSI_E, 
  RHS_MOSI_F, RHS_MOSI_G, RHS_MOSI_H, RHS_MOSI_I, RHS_MOSI_J, RHS_MOSI_K, RHS_MOSI_L, RHS_MOSI_M, 
  RHS_MOSI_N, RHS_MOSI_O, RHS_MOSI_P, RHS_MISO_A, RHS_MISO_B, RHS_MISO_C, RHS_MISO_D, RHS_MISO_E, 
  RHS_MISO_F, RHS_MISO_G, RHS_MISO_H, RHS_MISO_I, RHS_MISO_J, RHS_MISO_K, RHS_MISO_L, RHS_MISO_M, 
  RHS_MISO_N, RHS_MISO_O, RHS_MISO_P, reg0_debug)
/* synthesis syn_black_box black_box_pad_pin="M_AXIS_ACLK,M_AXIS_ARESETN,M_AXIS_tdata[63:0],M_AXIS_tvalid,M_AXIS_tready,M_AXIS_tlast,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,RHD_CS,RHD_MOSI,RHD_SCLK,RHD_MISO1_A,RHD_MISO2_A,RHD_MISO1_B,RHD_MISO2_B,RHD_MISO1_C,RHD_MISO2_C,RHD_MISO1_D,RHD_MISO2_D,RHD_MISO1_E,RHD_MISO2_E,RHD_MISO1_F,RHD_MISO2_F,RHD_MISO1_G,RHD_MISO2_G,RHD_MISO1_H,RHD_MISO2_H,RHD_MISO1_I,RHD_MISO2_I,RHD_MISO1_J,RHD_MISO2_J,RHD_MISO1_K,RHD_MISO2_K,RHD_MISO1_L,RHD_MISO2_L,RHD_MISO1_M,RHD_MISO2_M,RHD_MISO1_N,RHD_MISO2_N,RHD_MISO1_O,RHD_MISO2_O,RHD_MISO1_P,RHD_MISO2_P,RHD_MISO1_I_P,RHD_MISO1_I_N,RHD_MISO2_I_P,RHD_MISO2_I_N,RHD_MISO1_J_P,RHD_MISO1_J_N,RHD_MISO2_J_P,RHD_MISO2_J_N,RHD_MISO1_K_P,RHD_MISO1_K_N,RHD_MISO2_K_P,RHD_MISO2_K_N,RHD_MISO1_L_P,RHD_MISO1_L_N,RHD_MISO2_L_P,RHD_MISO2_L_N,RHD_MISO1_M_P,RHD_MISO1_M_N,RHD_MISO2_M_P,RHD_MISO2_M_N,RHD_MISO1_N_P,RHD_MISO1_N_N,RHD_MISO2_N_P,RHD_MISO2_N_N,RHD_MISO1_O_P,RHD_MISO1_O_N,RHD_MISO2_O_P,RHD_MISO2_O_N,RHD_MISO1_P_P,RHD_MISO1_P_N,RHD_MISO2_P_P,RHD_MISO2_P_N,RHS_CS,RHS_SCLK,RHS_MOSI_A,RHS_MOSI_B,RHS_MOSI_C,RHS_MOSI_D,RHS_MOSI_E,RHS_MOSI_F,RHS_MOSI_G,RHS_MOSI_H,RHS_MOSI_I,RHS_MOSI_J,RHS_MOSI_K,RHS_MOSI_L,RHS_MOSI_M,RHS_MOSI_N,RHS_MOSI_O,RHS_MOSI_P,RHS_MISO_A,RHS_MISO_B,RHS_MISO_C,RHS_MISO_D,RHS_MISO_E,RHS_MISO_F,RHS_MISO_G,RHS_MISO_H,RHS_MISO_I,RHS_MISO_J,RHS_MISO_K,RHS_MISO_L,RHS_MISO_M,RHS_MISO_N,RHS_MISO_O,RHS_MISO_P,reg0_debug[31:0]" */
/* synthesis syn_force_seq_prim="S_AXI_ACLK" */;
  input M_AXIS_ACLK;
  input M_AXIS_ARESETN;
  output [63:0]M_AXIS_tdata;
  output M_AXIS_tvalid;
  input M_AXIS_tready;
  output M_AXIS_tlast;
  input S_AXI_ACLK /* synthesis syn_isclock = 1 */;
  input S_AXI_ARESETN;
  input [31:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [31:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output RHD_CS;
  output RHD_MOSI;
  output RHD_SCLK;
  input RHD_MISO1_A;
  input RHD_MISO2_A;
  input RHD_MISO1_B;
  input RHD_MISO2_B;
  input RHD_MISO1_C;
  input RHD_MISO2_C;
  input RHD_MISO1_D;
  input RHD_MISO2_D;
  input RHD_MISO1_E;
  input RHD_MISO2_E;
  input RHD_MISO1_F;
  input RHD_MISO2_F;
  input RHD_MISO1_G;
  input RHD_MISO2_G;
  input RHD_MISO1_H;
  input RHD_MISO2_H;
  input RHD_MISO1_I;
  input RHD_MISO2_I;
  input RHD_MISO1_J;
  input RHD_MISO2_J;
  input RHD_MISO1_K;
  input RHD_MISO2_K;
  input RHD_MISO1_L;
  input RHD_MISO2_L;
  input RHD_MISO1_M;
  input RHD_MISO2_M;
  input RHD_MISO1_N;
  input RHD_MISO2_N;
  input RHD_MISO1_O;
  input RHD_MISO2_O;
  input RHD_MISO1_P;
  input RHD_MISO2_P;
  input RHD_MISO1_I_P;
  input RHD_MISO1_I_N;
  input RHD_MISO2_I_P;
  input RHD_MISO2_I_N;
  input RHD_MISO1_J_P;
  input RHD_MISO1_J_N;
  input RHD_MISO2_J_P;
  input RHD_MISO2_J_N;
  input RHD_MISO1_K_P;
  input RHD_MISO1_K_N;
  input RHD_MISO2_K_P;
  input RHD_MISO2_K_N;
  input RHD_MISO1_L_P;
  input RHD_MISO1_L_N;
  input RHD_MISO2_L_P;
  input RHD_MISO2_L_N;
  input RHD_MISO1_M_P;
  input RHD_MISO1_M_N;
  input RHD_MISO2_M_P;
  input RHD_MISO2_M_N;
  input RHD_MISO1_N_P;
  input RHD_MISO1_N_N;
  input RHD_MISO2_N_P;
  input RHD_MISO2_N_N;
  input RHD_MISO1_O_P;
  input RHD_MISO1_O_N;
  input RHD_MISO2_O_P;
  input RHD_MISO2_O_N;
  input RHD_MISO1_P_P;
  input RHD_MISO1_P_N;
  input RHD_MISO2_P_P;
  input RHD_MISO2_P_N;
  output RHS_CS;
  output RHS_SCLK;
  output RHS_MOSI_A;
  output RHS_MOSI_B;
  output RHS_MOSI_C;
  output RHS_MOSI_D;
  output RHS_MOSI_E;
  output RHS_MOSI_F;
  output RHS_MOSI_G;
  output RHS_MOSI_H;
  output RHS_MOSI_I;
  output RHS_MOSI_J;
  output RHS_MOSI_K;
  output RHS_MOSI_L;
  output RHS_MOSI_M;
  output RHS_MOSI_N;
  output RHS_MOSI_O;
  output RHS_MOSI_P;
  input RHS_MISO_A;
  input RHS_MISO_B;
  input RHS_MISO_C;
  input RHS_MISO_D;
  input RHS_MISO_E;
  input RHS_MISO_F;
  input RHS_MISO_G;
  input RHS_MISO_H;
  input RHS_MISO_I;
  input RHS_MISO_J;
  input RHS_MISO_K;
  input RHS_MISO_L;
  input RHS_MISO_M;
  input RHS_MISO_N;
  input RHS_MISO_O;
  input RHS_MISO_P;
  output [31:0]reg0_debug;
endmodule
