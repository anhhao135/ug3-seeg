//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Oct  3 09:24:27 2024
//Host        : GramForGram running 64-bit major release  (build 9200)
//Command     : generate_target tb_seeg_top.bd
//Design      : tb_seeg_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "tb_seeg_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tb_seeg_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "tb_seeg_top.hwdef" *) 
module tb_seeg_top
   (M_AXIS_ACLK,
    M_AXIS_ARESETN,
    M_AXIS_tready,
    S_AXI_ACLK,
    S_AXI_ARESETN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXIS_ACLK, ASSOCIATED_RESET M_AXIS_ARESETN, CLK_DOMAIN tb_seeg_top_M_AXIS_ACLK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input M_AXIS_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.M_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.M_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input M_AXIS_ARESETN;
  input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_RESET S_AXI_ARESETN, CLK_DOMAIN tb_seeg_top_S_AXI_ACLK, FREQ_HZ 39000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input S_AXI_ARESETN;

  wire M_AXIS_ACLK_1;
  wire M_AXIS_ARESETN_1;
  wire M_AXIS_tready_1;
  wire S_AXI_ACLK_1;
  wire S_AXI_ARESETN_1;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;

  assign M_AXIS_ACLK_1 = M_AXIS_ACLK;
  assign M_AXIS_ARESETN_1 = M_AXIS_ARESETN;
  assign M_AXIS_tready_1 = M_AXIS_tready;
  assign S_AXI_ACLK_1 = S_AXI_ACLK;
  assign S_AXI_ARESETN_1 = S_AXI_ARESETN;
  tb_seeg_top_axi_vip_0_0 axi_vip_0
       (.aclk(S_AXI_ACLK_1),
        .aresetn(S_AXI_ARESETN_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  tb_seeg_top_seeg_top_0_0 seeg_top_0
       (.M_AXIS_ACLK(M_AXIS_ACLK_1),
        .M_AXIS_ARESETN(M_AXIS_ARESETN_1),
        .M_AXIS_tready(M_AXIS_tready_1),
        .RHD_MISO1_A(1'b0),
        .RHD_MISO1_B(1'b0),
        .RHD_MISO1_C(1'b0),
        .RHD_MISO1_D(1'b0),
        .RHD_MISO1_E(1'b0),
        .RHD_MISO1_F(1'b0),
        .RHD_MISO1_G(1'b0),
        .RHD_MISO1_H(1'b0),
        .RHD_MISO1_I_N(1'b0),
        .RHD_MISO1_I_P(1'b0),
        .RHD_MISO1_J_N(1'b0),
        .RHD_MISO1_J_P(1'b0),
        .RHD_MISO1_K_N(1'b0),
        .RHD_MISO1_K_P(1'b0),
        .RHD_MISO1_L_N(1'b0),
        .RHD_MISO1_L_P(1'b0),
        .RHD_MISO1_M_N(1'b0),
        .RHD_MISO1_M_P(1'b0),
        .RHD_MISO1_N_N(1'b0),
        .RHD_MISO1_N_P(1'b0),
        .RHD_MISO1_O_N(1'b0),
        .RHD_MISO1_O_P(1'b0),
        .RHD_MISO1_P_N(1'b0),
        .RHD_MISO1_P_P(1'b0),
        .RHD_MISO2_A(1'b0),
        .RHD_MISO2_B(1'b0),
        .RHD_MISO2_C(1'b0),
        .RHD_MISO2_D(1'b0),
        .RHD_MISO2_E(1'b0),
        .RHD_MISO2_F(1'b0),
        .RHD_MISO2_G(1'b0),
        .RHD_MISO2_H(1'b0),
        .RHD_MISO2_I_N(1'b0),
        .RHD_MISO2_I_P(1'b0),
        .RHD_MISO2_J_N(1'b0),
        .RHD_MISO2_J_P(1'b0),
        .RHD_MISO2_K_N(1'b0),
        .RHD_MISO2_K_P(1'b0),
        .RHD_MISO2_L_N(1'b0),
        .RHD_MISO2_L_P(1'b0),
        .RHD_MISO2_M_N(1'b0),
        .RHD_MISO2_M_P(1'b0),
        .RHD_MISO2_N_N(1'b0),
        .RHD_MISO2_N_P(1'b0),
        .RHD_MISO2_O_N(1'b0),
        .RHD_MISO2_O_P(1'b0),
        .RHD_MISO2_P_N(1'b0),
        .RHD_MISO2_P_P(1'b0),
        .RHS_MISO_A(1'b0),
        .RHS_MISO_B(1'b0),
        .RHS_MISO_C(1'b0),
        .RHS_MISO_D(1'b0),
        .RHS_MISO_E(1'b0),
        .RHS_MISO_F(1'b0),
        .RHS_MISO_G(1'b0),
        .RHS_MISO_H(1'b0),
        .RHS_MISO_I_N(1'b0),
        .RHS_MISO_I_P(1'b0),
        .RHS_MISO_J_N(1'b0),
        .RHS_MISO_J_P(1'b0),
        .RHS_MISO_K_N(1'b0),
        .RHS_MISO_K_P(1'b0),
        .RHS_MISO_L_N(1'b0),
        .RHS_MISO_L_P(1'b0),
        .RHS_MISO_M_N(1'b0),
        .RHS_MISO_M_P(1'b0),
        .RHS_MISO_N_N(1'b0),
        .RHS_MISO_N_P(1'b0),
        .RHS_MISO_O_N(1'b0),
        .RHS_MISO_O_P(1'b0),
        .RHS_MISO_P_N(1'b0),
        .RHS_MISO_P_P(1'b0),
        .S_AXI_ACLK(S_AXI_ACLK_1),
        .S_AXI_ARADDR(axi_vip_0_M_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN_1),
        .S_AXI_ARPROT(axi_vip_0_M_AXI_ARPROT),
        .S_AXI_ARREADY(axi_vip_0_M_AXI_ARREADY),
        .S_AXI_ARVALID(axi_vip_0_M_AXI_ARVALID),
        .S_AXI_AWADDR(axi_vip_0_M_AXI_AWADDR),
        .S_AXI_AWPROT(axi_vip_0_M_AXI_AWPROT),
        .S_AXI_AWREADY(axi_vip_0_M_AXI_AWREADY),
        .S_AXI_AWVALID(axi_vip_0_M_AXI_AWVALID),
        .S_AXI_BREADY(axi_vip_0_M_AXI_BREADY),
        .S_AXI_BRESP(axi_vip_0_M_AXI_BRESP),
        .S_AXI_BVALID(axi_vip_0_M_AXI_BVALID),
        .S_AXI_RDATA(axi_vip_0_M_AXI_RDATA),
        .S_AXI_RREADY(axi_vip_0_M_AXI_RREADY),
        .S_AXI_RRESP(axi_vip_0_M_AXI_RRESP),
        .S_AXI_RVALID(axi_vip_0_M_AXI_RVALID),
        .S_AXI_WDATA(axi_vip_0_M_AXI_WDATA),
        .S_AXI_WREADY(axi_vip_0_M_AXI_WREADY),
        .S_AXI_WSTRB(axi_vip_0_M_AXI_WSTRB),
        .S_AXI_WVALID(axi_vip_0_M_AXI_WVALID),
        .aux_signal(1'b0));
endmodule
