// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:seeg_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module tb_seeg_top_seeg_top_0_0 (
  M_AXIS_ACLK,
  M_AXIS_ARESETN,
  M_AXIS_tdata,
  M_AXIS_tvalid,
  M_AXIS_tready,
  M_AXIS_tlast,
  S_AXI_ACLK,
  S_AXI_ARESETN,
  S_AXI_AWADDR,
  S_AXI_AWPROT,
  S_AXI_AWVALID,
  S_AXI_AWREADY,
  S_AXI_WDATA,
  S_AXI_WSTRB,
  S_AXI_WVALID,
  S_AXI_WREADY,
  S_AXI_BRESP,
  S_AXI_BVALID,
  S_AXI_BREADY,
  S_AXI_ARADDR,
  S_AXI_ARPROT,
  S_AXI_ARVALID,
  S_AXI_ARREADY,
  S_AXI_RDATA,
  S_AXI_RRESP,
  S_AXI_RVALID,
  S_AXI_RREADY,
  RHD_CS,
  RHD_MOSI,
  RHD_SCLK,
  RHD_MISO1_A,
  RHD_MISO2_A,
  RHD_MISO1_B,
  RHD_MISO2_B,
  RHD_MISO1_C,
  RHD_MISO2_C,
  RHD_MISO1_D,
  RHD_MISO2_D,
  RHD_MISO1_E,
  RHD_MISO2_E,
  RHD_MISO1_F,
  RHD_MISO2_F,
  RHD_MISO1_G,
  RHD_MISO2_G,
  RHD_MISO1_H,
  RHD_MISO2_H,
  RHD_MISO1_I_P,
  RHD_MISO1_I_N,
  RHD_MISO2_I_P,
  RHD_MISO2_I_N,
  RHD_MISO1_J_P,
  RHD_MISO1_J_N,
  RHD_MISO2_J_P,
  RHD_MISO2_J_N,
  RHD_MISO1_K_P,
  RHD_MISO1_K_N,
  RHD_MISO2_K_P,
  RHD_MISO2_K_N,
  RHD_MISO1_L_P,
  RHD_MISO1_L_N,
  RHD_MISO2_L_P,
  RHD_MISO2_L_N,
  RHD_MISO1_M_P,
  RHD_MISO1_M_N,
  RHD_MISO2_M_P,
  RHD_MISO2_M_N,
  RHD_MISO1_N_P,
  RHD_MISO1_N_N,
  RHD_MISO2_N_P,
  RHD_MISO2_N_N,
  RHD_MISO1_O_P,
  RHD_MISO1_O_N,
  RHD_MISO2_O_P,
  RHD_MISO2_O_N,
  RHD_MISO1_P_P,
  RHD_MISO1_P_N,
  RHD_MISO2_P_P,
  RHD_MISO2_P_N,
  RHS_CS,
  RHS_SCLK,
  RHS_MOSI_A,
  RHS_MOSI_B,
  RHS_MOSI_C,
  RHS_MOSI_D,
  RHS_MOSI_E,
  RHS_MOSI_F,
  RHS_MOSI_G,
  RHS_MOSI_H,
  RHS_MOSI_I,
  RHS_MOSI_J,
  RHS_MOSI_K,
  RHS_MOSI_L,
  RHS_MOSI_M,
  RHS_MOSI_N,
  RHS_MOSI_O,
  RHS_MOSI_P,
  RHS_MISO_A,
  RHS_MISO_B,
  RHS_MISO_C,
  RHS_MISO_D,
  RHS_MISO_E,
  RHS_MISO_F,
  RHS_MISO_G,
  RHS_MISO_H,
  RHS_MISO_I,
  RHS_MISO_J,
  RHS_MISO_K,
  RHS_MISO_L,
  RHS_MISO_M,
  RHS_MISO_N,
  RHS_MISO_O,
  RHS_MISO_P,
  aux_signal
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET M_AXIS_ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN tb_seeg_top_M_AXIS_ACLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *)
input wire M_AXIS_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_ARESETN RST" *)
input wire M_AXIS_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [63 : 0] M_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire M_AXIS_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire M_AXIS_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN tb_seeg_top_M_AXIS_ACLK, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
output wire M_AXIS_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 39000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN tb_seeg_top_S_AXI_ACLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *)
input wire S_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *)
input wire S_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [31 : 0] S_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] S_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire S_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire S_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] S_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] S_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire S_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire S_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] S_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire S_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire S_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [31 : 0] S_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] S_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire S_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire S_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] S_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] S_AXI_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire S_AXI_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 39000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN tb_seeg_top_S_AXI_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS\
 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire S_AXI_RREADY;
output wire RHD_CS;
output wire RHD_MOSI;
output wire RHD_SCLK;
input wire RHD_MISO1_A;
input wire RHD_MISO2_A;
input wire RHD_MISO1_B;
input wire RHD_MISO2_B;
input wire RHD_MISO1_C;
input wire RHD_MISO2_C;
input wire RHD_MISO1_D;
input wire RHD_MISO2_D;
input wire RHD_MISO1_E;
input wire RHD_MISO2_E;
input wire RHD_MISO1_F;
input wire RHD_MISO2_F;
input wire RHD_MISO1_G;
input wire RHD_MISO2_G;
input wire RHD_MISO1_H;
input wire RHD_MISO2_H;
input wire RHD_MISO1_I_P;
input wire RHD_MISO1_I_N;
input wire RHD_MISO2_I_P;
input wire RHD_MISO2_I_N;
input wire RHD_MISO1_J_P;
input wire RHD_MISO1_J_N;
input wire RHD_MISO2_J_P;
input wire RHD_MISO2_J_N;
input wire RHD_MISO1_K_P;
input wire RHD_MISO1_K_N;
input wire RHD_MISO2_K_P;
input wire RHD_MISO2_K_N;
input wire RHD_MISO1_L_P;
input wire RHD_MISO1_L_N;
input wire RHD_MISO2_L_P;
input wire RHD_MISO2_L_N;
input wire RHD_MISO1_M_P;
input wire RHD_MISO1_M_N;
input wire RHD_MISO2_M_P;
input wire RHD_MISO2_M_N;
input wire RHD_MISO1_N_P;
input wire RHD_MISO1_N_N;
input wire RHD_MISO2_N_P;
input wire RHD_MISO2_N_N;
input wire RHD_MISO1_O_P;
input wire RHD_MISO1_O_N;
input wire RHD_MISO2_O_P;
input wire RHD_MISO2_O_N;
input wire RHD_MISO1_P_P;
input wire RHD_MISO1_P_N;
input wire RHD_MISO2_P_P;
input wire RHD_MISO2_P_N;
output wire RHS_CS;
output wire RHS_SCLK;
output wire RHS_MOSI_A;
output wire RHS_MOSI_B;
output wire RHS_MOSI_C;
output wire RHS_MOSI_D;
output wire RHS_MOSI_E;
output wire RHS_MOSI_F;
output wire RHS_MOSI_G;
output wire RHS_MOSI_H;
output wire RHS_MOSI_I;
output wire RHS_MOSI_J;
output wire RHS_MOSI_K;
output wire RHS_MOSI_L;
output wire RHS_MOSI_M;
output wire RHS_MOSI_N;
output wire RHS_MOSI_O;
output wire RHS_MOSI_P;
input wire RHS_MISO_A;
input wire RHS_MISO_B;
input wire RHS_MISO_C;
input wire RHS_MISO_D;
input wire RHS_MISO_E;
input wire RHS_MISO_F;
input wire RHS_MISO_G;
input wire RHS_MISO_H;
input wire RHS_MISO_I;
input wire RHS_MISO_J;
input wire RHS_MISO_K;
input wire RHS_MISO_L;
input wire RHS_MISO_M;
input wire RHS_MISO_N;
input wire RHS_MISO_O;
input wire RHS_MISO_P;
input wire aux_signal;

  seeg_top #(
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_ADDR_WIDTH(32)
  ) inst (
    .M_AXIS_ACLK(M_AXIS_ACLK),
    .M_AXIS_ARESETN(M_AXIS_ARESETN),
    .M_AXIS_tdata(M_AXIS_tdata),
    .M_AXIS_tvalid(M_AXIS_tvalid),
    .M_AXIS_tready(M_AXIS_tready),
    .M_AXIS_tlast(M_AXIS_tlast),
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN),
    .S_AXI_AWADDR(S_AXI_AWADDR),
    .S_AXI_AWPROT(S_AXI_AWPROT),
    .S_AXI_AWVALID(S_AXI_AWVALID),
    .S_AXI_AWREADY(S_AXI_AWREADY),
    .S_AXI_WDATA(S_AXI_WDATA),
    .S_AXI_WSTRB(S_AXI_WSTRB),
    .S_AXI_WVALID(S_AXI_WVALID),
    .S_AXI_WREADY(S_AXI_WREADY),
    .S_AXI_BRESP(S_AXI_BRESP),
    .S_AXI_BVALID(S_AXI_BVALID),
    .S_AXI_BREADY(S_AXI_BREADY),
    .S_AXI_ARADDR(S_AXI_ARADDR),
    .S_AXI_ARPROT(S_AXI_ARPROT),
    .S_AXI_ARVALID(S_AXI_ARVALID),
    .S_AXI_ARREADY(S_AXI_ARREADY),
    .S_AXI_RDATA(S_AXI_RDATA),
    .S_AXI_RRESP(S_AXI_RRESP),
    .S_AXI_RVALID(S_AXI_RVALID),
    .S_AXI_RREADY(S_AXI_RREADY),
    .RHD_CS(RHD_CS),
    .RHD_MOSI(RHD_MOSI),
    .RHD_SCLK(RHD_SCLK),
    .RHD_MISO1_A(RHD_MISO1_A),
    .RHD_MISO2_A(RHD_MISO2_A),
    .RHD_MISO1_B(RHD_MISO1_B),
    .RHD_MISO2_B(RHD_MISO2_B),
    .RHD_MISO1_C(RHD_MISO1_C),
    .RHD_MISO2_C(RHD_MISO2_C),
    .RHD_MISO1_D(RHD_MISO1_D),
    .RHD_MISO2_D(RHD_MISO2_D),
    .RHD_MISO1_E(RHD_MISO1_E),
    .RHD_MISO2_E(RHD_MISO2_E),
    .RHD_MISO1_F(RHD_MISO1_F),
    .RHD_MISO2_F(RHD_MISO2_F),
    .RHD_MISO1_G(RHD_MISO1_G),
    .RHD_MISO2_G(RHD_MISO2_G),
    .RHD_MISO1_H(RHD_MISO1_H),
    .RHD_MISO2_H(RHD_MISO2_H),
    .RHD_MISO1_I_P(RHD_MISO1_I_P),
    .RHD_MISO1_I_N(RHD_MISO1_I_N),
    .RHD_MISO2_I_P(RHD_MISO2_I_P),
    .RHD_MISO2_I_N(RHD_MISO2_I_N),
    .RHD_MISO1_J_P(RHD_MISO1_J_P),
    .RHD_MISO1_J_N(RHD_MISO1_J_N),
    .RHD_MISO2_J_P(RHD_MISO2_J_P),
    .RHD_MISO2_J_N(RHD_MISO2_J_N),
    .RHD_MISO1_K_P(RHD_MISO1_K_P),
    .RHD_MISO1_K_N(RHD_MISO1_K_N),
    .RHD_MISO2_K_P(RHD_MISO2_K_P),
    .RHD_MISO2_K_N(RHD_MISO2_K_N),
    .RHD_MISO1_L_P(RHD_MISO1_L_P),
    .RHD_MISO1_L_N(RHD_MISO1_L_N),
    .RHD_MISO2_L_P(RHD_MISO2_L_P),
    .RHD_MISO2_L_N(RHD_MISO2_L_N),
    .RHD_MISO1_M_P(RHD_MISO1_M_P),
    .RHD_MISO1_M_N(RHD_MISO1_M_N),
    .RHD_MISO2_M_P(RHD_MISO2_M_P),
    .RHD_MISO2_M_N(RHD_MISO2_M_N),
    .RHD_MISO1_N_P(RHD_MISO1_N_P),
    .RHD_MISO1_N_N(RHD_MISO1_N_N),
    .RHD_MISO2_N_P(RHD_MISO2_N_P),
    .RHD_MISO2_N_N(RHD_MISO2_N_N),
    .RHD_MISO1_O_P(RHD_MISO1_O_P),
    .RHD_MISO1_O_N(RHD_MISO1_O_N),
    .RHD_MISO2_O_P(RHD_MISO2_O_P),
    .RHD_MISO2_O_N(RHD_MISO2_O_N),
    .RHD_MISO1_P_P(RHD_MISO1_P_P),
    .RHD_MISO1_P_N(RHD_MISO1_P_N),
    .RHD_MISO2_P_P(RHD_MISO2_P_P),
    .RHD_MISO2_P_N(RHD_MISO2_P_N),
    .RHS_CS(RHS_CS),
    .RHS_SCLK(RHS_SCLK),
    .RHS_MOSI_A(RHS_MOSI_A),
    .RHS_MOSI_B(RHS_MOSI_B),
    .RHS_MOSI_C(RHS_MOSI_C),
    .RHS_MOSI_D(RHS_MOSI_D),
    .RHS_MOSI_E(RHS_MOSI_E),
    .RHS_MOSI_F(RHS_MOSI_F),
    .RHS_MOSI_G(RHS_MOSI_G),
    .RHS_MOSI_H(RHS_MOSI_H),
    .RHS_MOSI_I(RHS_MOSI_I),
    .RHS_MOSI_J(RHS_MOSI_J),
    .RHS_MOSI_K(RHS_MOSI_K),
    .RHS_MOSI_L(RHS_MOSI_L),
    .RHS_MOSI_M(RHS_MOSI_M),
    .RHS_MOSI_N(RHS_MOSI_N),
    .RHS_MOSI_O(RHS_MOSI_O),
    .RHS_MOSI_P(RHS_MOSI_P),
    .RHS_MISO_A(RHS_MISO_A),
    .RHS_MISO_B(RHS_MISO_B),
    .RHS_MISO_C(RHS_MISO_C),
    .RHS_MISO_D(RHS_MISO_D),
    .RHS_MISO_E(RHS_MISO_E),
    .RHS_MISO_F(RHS_MISO_F),
    .RHS_MISO_G(RHS_MISO_G),
    .RHS_MISO_H(RHS_MISO_H),
    .RHS_MISO_I(RHS_MISO_I),
    .RHS_MISO_J(RHS_MISO_J),
    .RHS_MISO_K(RHS_MISO_K),
    .RHS_MISO_L(RHS_MISO_L),
    .RHS_MISO_M(RHS_MISO_M),
    .RHS_MISO_N(RHS_MISO_N),
    .RHS_MISO_O(RHS_MISO_O),
    .RHS_MISO_P(RHS_MISO_P),
    .aux_signal(aux_signal)
  );
endmodule
