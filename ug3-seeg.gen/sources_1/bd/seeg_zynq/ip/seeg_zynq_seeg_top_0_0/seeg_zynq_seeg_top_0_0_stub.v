// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Oct  7 11:45:33 2024
// Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/seeg_zynq/ip/seeg_zynq_seeg_top_0_0/seeg_zynq_seeg_top_0_0_stub.v
// Design      : seeg_zynq_seeg_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "seeg_top,Vivado 2023.1" *)
module seeg_zynq_seeg_top_0_0(M_AXIS_ACLK, M_AXIS_ARESETN, M_AXIS_tdata, 
  M_AXIS_tvalid, M_AXIS_tready, M_AXIS_tlast, S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, 
  S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, 
  S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, RHD_CS, 
  RHD_MOSI, RHD_SCLK, RHD_MISO1_A, RHD_MISO2_A, RHD_MISO1_B, RHD_MISO2_B, RHD_MISO1_C, 
  RHD_MISO2_C, RHD_MISO1_D, RHD_MISO2_D, RHD_MISO1_E, RHD_MISO2_E, RHD_MISO1_F, RHD_MISO2_F, 
  RHD_MISO1_G, RHD_MISO2_G, RHD_MISO1_H, RHD_MISO2_H, RHD_MISO1_I_P, RHD_MISO1_I_N, 
  RHD_MISO2_I_P, RHD_MISO2_I_N, RHD_MISO1_J_P, RHD_MISO1_J_N, RHD_MISO2_J_P, RHD_MISO2_J_N, 
  RHD_MISO1_K_P, RHD_MISO1_K_N, RHD_MISO2_K_P, RHD_MISO2_K_N, RHD_MISO1_L_P, RHD_MISO1_L_N, 
  RHD_MISO2_L_P, RHD_MISO2_L_N, RHD_MISO1_M_P, RHD_MISO1_M_N, RHD_MISO2_M_P, RHD_MISO2_M_N, 
  RHD_MISO1_N_P, RHD_MISO1_N_N, RHD_MISO2_N_P, RHD_MISO2_N_N, RHD_MISO1_O_P, RHD_MISO1_O_N, 
  RHD_MISO2_O_P, RHD_MISO2_O_N, RHD_MISO1_P_P, RHD_MISO1_P_N, RHD_MISO2_P_P, RHD_MISO2_P_N, 
  RHD_MISO1_I_DEBUG, RHD_MISO2_I_DEBUG, RHD_MISO1_J_DEBUG, RHD_MISO2_J_DEBUG, 
  RHD_MISO1_K_DEBUG, RHD_MISO2_K_DEBUG, RHD_MISO1_L_DEBUG, RHD_MISO2_L_DEBUG, 
  RHD_MISO1_M_DEBUG, RHD_MISO2_M_DEBUG, RHD_MISO1_N_DEBUG, RHD_MISO2_N_DEBUG, 
  RHD_MISO1_O_DEBUG, RHD_MISO2_O_DEBUG, RHD_MISO1_P_DEBUG, RHD_MISO2_P_DEBUG, RHS_CS, 
  RHS_SCLK, RHS_MOSI_A, RHS_MOSI_B, RHS_MOSI_C, RHS_MOSI_D, RHS_MOSI_E, RHS_MOSI_F, RHS_MOSI_G, 
  RHS_MOSI_H, RHS_MOSI_I_P, RHS_MOSI_I_N, RHS_MOSI_J_P, RHS_MOSI_J_N, RHS_MOSI_K_P, 
  RHS_MOSI_K_N, RHS_MOSI_L_P, RHS_MOSI_L_N, RHS_MOSI_M_P, RHS_MOSI_M_N, RHS_MOSI_N_P, 
  RHS_MOSI_N_N, RHS_MOSI_O_P, RHS_MOSI_O_N, RHS_MOSI_P_P, RHS_MOSI_P_N, RHS_MISO_A, RHS_MISO_B, 
  RHS_MISO_C, RHS_MISO_D, RHS_MISO_E, RHS_MISO_F, RHS_MISO_G, RHS_MISO_H, RHS_MISO_I_P, 
  RHS_MISO_I_N, RHS_MISO_J_P, RHS_MISO_J_N, RHS_MISO_K_P, RHS_MISO_K_N, RHS_MISO_L_P, 
  RHS_MISO_L_N, RHS_MISO_M_P, RHS_MISO_M_N, RHS_MISO_N_P, RHS_MISO_N_N, RHS_MISO_O_P, 
  RHS_MISO_O_N, RHS_MISO_P_P, RHS_MISO_P_N, RHS_MISO_I_DEBUG, RHS_MISO_J_DEBUG, 
  RHS_MISO_K_DEBUG, RHS_MISO_L_DEBUG, RHS_MISO_M_DEBUG, RHS_MISO_N_DEBUG, RHS_MISO_O_DEBUG, 
  RHS_MISO_P_DEBUG, RHS_MOSI_I_DEBUG, RHS_MOSI_J_DEBUG, RHS_MOSI_K_DEBUG, RHS_MOSI_L_DEBUG, 
  RHS_MOSI_M_DEBUG, RHS_MOSI_N_DEBUG, RHS_MOSI_O_DEBUG, RHS_MOSI_P_DEBUG, aux_signal)
/* synthesis syn_black_box black_box_pad_pin="M_AXIS_ACLK,M_AXIS_ARESETN,M_AXIS_tdata[63:0],M_AXIS_tvalid,M_AXIS_tready,M_AXIS_tlast,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,RHD_CS,RHD_MOSI,RHD_MISO1_A,RHD_MISO2_A,RHD_MISO1_B,RHD_MISO2_B,RHD_MISO1_C,RHD_MISO2_C,RHD_MISO1_D,RHD_MISO2_D,RHD_MISO1_E,RHD_MISO2_E,RHD_MISO1_F,RHD_MISO2_F,RHD_MISO1_G,RHD_MISO2_G,RHD_MISO1_H,RHD_MISO2_H,RHD_MISO1_I_P,RHD_MISO1_I_N,RHD_MISO2_I_P,RHD_MISO2_I_N,RHD_MISO1_J_P,RHD_MISO1_J_N,RHD_MISO2_J_P,RHD_MISO2_J_N,RHD_MISO1_K_P,RHD_MISO1_K_N,RHD_MISO2_K_P,RHD_MISO2_K_N,RHD_MISO1_L_P,RHD_MISO1_L_N,RHD_MISO2_L_P,RHD_MISO2_L_N,RHD_MISO1_M_P,RHD_MISO1_M_N,RHD_MISO2_M_P,RHD_MISO2_M_N,RHD_MISO1_N_P,RHD_MISO1_N_N,RHD_MISO2_N_P,RHD_MISO2_N_N,RHD_MISO1_O_P,RHD_MISO1_O_N,RHD_MISO2_O_P,RHD_MISO2_O_N,RHD_MISO1_P_P,RHD_MISO1_P_N,RHD_MISO2_P_P,RHD_MISO2_P_N,RHD_MISO1_I_DEBUG,RHD_MISO2_I_DEBUG,RHD_MISO1_J_DEBUG,RHD_MISO2_J_DEBUG,RHD_MISO1_K_DEBUG,RHD_MISO2_K_DEBUG,RHD_MISO1_L_DEBUG,RHD_MISO2_L_DEBUG,RHD_MISO1_M_DEBUG,RHD_MISO2_M_DEBUG,RHD_MISO1_N_DEBUG,RHD_MISO2_N_DEBUG,RHD_MISO1_O_DEBUG,RHD_MISO2_O_DEBUG,RHD_MISO1_P_DEBUG,RHD_MISO2_P_DEBUG,RHS_CS,RHS_MOSI_A,RHS_MOSI_B,RHS_MOSI_C,RHS_MOSI_D,RHS_MOSI_E,RHS_MOSI_F,RHS_MOSI_G,RHS_MOSI_H,RHS_MOSI_I_P,RHS_MOSI_I_N,RHS_MOSI_J_P,RHS_MOSI_J_N,RHS_MOSI_K_P,RHS_MOSI_K_N,RHS_MOSI_L_P,RHS_MOSI_L_N,RHS_MOSI_M_P,RHS_MOSI_M_N,RHS_MOSI_N_P,RHS_MOSI_N_N,RHS_MOSI_O_P,RHS_MOSI_O_N,RHS_MOSI_P_P,RHS_MOSI_P_N,RHS_MISO_A,RHS_MISO_B,RHS_MISO_C,RHS_MISO_D,RHS_MISO_E,RHS_MISO_F,RHS_MISO_G,RHS_MISO_H,RHS_MISO_I_P,RHS_MISO_I_N,RHS_MISO_J_P,RHS_MISO_J_N,RHS_MISO_K_P,RHS_MISO_K_N,RHS_MISO_L_P,RHS_MISO_L_N,RHS_MISO_M_P,RHS_MISO_M_N,RHS_MISO_N_P,RHS_MISO_N_N,RHS_MISO_O_P,RHS_MISO_O_N,RHS_MISO_P_P,RHS_MISO_P_N,RHS_MISO_I_DEBUG,RHS_MISO_J_DEBUG,RHS_MISO_K_DEBUG,RHS_MISO_L_DEBUG,RHS_MISO_M_DEBUG,RHS_MISO_N_DEBUG,RHS_MISO_O_DEBUG,RHS_MISO_P_DEBUG,RHS_MOSI_I_DEBUG,RHS_MOSI_J_DEBUG,RHS_MOSI_K_DEBUG,RHS_MOSI_L_DEBUG,RHS_MOSI_M_DEBUG,RHS_MOSI_N_DEBUG,RHS_MOSI_O_DEBUG,RHS_MOSI_P_DEBUG,aux_signal" */
/* synthesis syn_force_seq_prim="S_AXI_ACLK" */
/* synthesis syn_force_seq_prim="RHD_SCLK" */
/* synthesis syn_force_seq_prim="RHS_SCLK" */;
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
  output RHD_SCLK /* synthesis syn_isclock = 1 */;
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
  output RHD_MISO1_I_DEBUG;
  output RHD_MISO2_I_DEBUG;
  output RHD_MISO1_J_DEBUG;
  output RHD_MISO2_J_DEBUG;
  output RHD_MISO1_K_DEBUG;
  output RHD_MISO2_K_DEBUG;
  output RHD_MISO1_L_DEBUG;
  output RHD_MISO2_L_DEBUG;
  output RHD_MISO1_M_DEBUG;
  output RHD_MISO2_M_DEBUG;
  output RHD_MISO1_N_DEBUG;
  output RHD_MISO2_N_DEBUG;
  output RHD_MISO1_O_DEBUG;
  output RHD_MISO2_O_DEBUG;
  output RHD_MISO1_P_DEBUG;
  output RHD_MISO2_P_DEBUG;
  output RHS_CS;
  output RHS_SCLK /* synthesis syn_isclock = 1 */;
  output RHS_MOSI_A;
  output RHS_MOSI_B;
  output RHS_MOSI_C;
  output RHS_MOSI_D;
  output RHS_MOSI_E;
  output RHS_MOSI_F;
  output RHS_MOSI_G;
  output RHS_MOSI_H;
  output RHS_MOSI_I_P;
  output RHS_MOSI_I_N;
  output RHS_MOSI_J_P;
  output RHS_MOSI_J_N;
  output RHS_MOSI_K_P;
  output RHS_MOSI_K_N;
  output RHS_MOSI_L_P;
  output RHS_MOSI_L_N;
  output RHS_MOSI_M_P;
  output RHS_MOSI_M_N;
  output RHS_MOSI_N_P;
  output RHS_MOSI_N_N;
  output RHS_MOSI_O_P;
  output RHS_MOSI_O_N;
  output RHS_MOSI_P_P;
  output RHS_MOSI_P_N;
  input RHS_MISO_A;
  input RHS_MISO_B;
  input RHS_MISO_C;
  input RHS_MISO_D;
  input RHS_MISO_E;
  input RHS_MISO_F;
  input RHS_MISO_G;
  input RHS_MISO_H;
  input RHS_MISO_I_P;
  input RHS_MISO_I_N;
  input RHS_MISO_J_P;
  input RHS_MISO_J_N;
  input RHS_MISO_K_P;
  input RHS_MISO_K_N;
  input RHS_MISO_L_P;
  input RHS_MISO_L_N;
  input RHS_MISO_M_P;
  input RHS_MISO_M_N;
  input RHS_MISO_N_P;
  input RHS_MISO_N_N;
  input RHS_MISO_O_P;
  input RHS_MISO_O_N;
  input RHS_MISO_P_P;
  input RHS_MISO_P_N;
  output RHS_MISO_I_DEBUG;
  output RHS_MISO_J_DEBUG;
  output RHS_MISO_K_DEBUG;
  output RHS_MISO_L_DEBUG;
  output RHS_MISO_M_DEBUG;
  output RHS_MISO_N_DEBUG;
  output RHS_MISO_O_DEBUG;
  output RHS_MISO_P_DEBUG;
  output RHS_MOSI_I_DEBUG;
  output RHS_MOSI_J_DEBUG;
  output RHS_MOSI_K_DEBUG;
  output RHS_MOSI_L_DEBUG;
  output RHS_MOSI_M_DEBUG;
  output RHS_MOSI_N_DEBUG;
  output RHS_MOSI_O_DEBUG;
  output RHS_MOSI_P_DEBUG;
  input aux_signal;
endmodule
