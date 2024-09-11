//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Sep 10 11:44:26 2024
//Host        : GramForGram running 64-bit major release  (build 9200)
//Command     : generate_target jtag_axi_test.bd
//Design      : jtag_axi_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "jtag_axi_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=jtag_axi_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "jtag_axi_test.hwdef" *) 
module jtag_axi_test
   ();

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
  wire [31:0]seeg_top_0_reg0_debug;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  jtag_axi_test_clk_wiz_0_0 clk_wiz_0
       (.clk_39M(clk_wiz_0_clk_39M),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk0),
        .locked(clk_wiz_0_locked));
  jtag_axi_test_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_39M),
        .probe0(seeg_top_0_reg0_debug));
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
        .M_AXIS_tready(1'b1),
        .RHD_MISO1_A(1'b0),
        .RHD_MISO1_B(1'b0),
        .RHD_MISO1_C(1'b0),
        .RHD_MISO1_D(1'b0),
        .RHD_MISO1_E(1'b0),
        .RHD_MISO1_F(1'b0),
        .RHD_MISO1_G(1'b0),
        .RHD_MISO1_H(1'b0),
        .RHD_MISO1_I(1'b0),
        .RHD_MISO1_I_N(1'b0),
        .RHD_MISO1_I_P(1'b0),
        .RHD_MISO1_J(1'b0),
        .RHD_MISO1_J_N(1'b0),
        .RHD_MISO1_J_P(1'b0),
        .RHD_MISO1_K(1'b0),
        .RHD_MISO1_K_N(1'b0),
        .RHD_MISO1_K_P(1'b0),
        .RHD_MISO1_L(1'b0),
        .RHD_MISO1_L_N(1'b0),
        .RHD_MISO1_L_P(1'b0),
        .RHD_MISO1_M(1'b0),
        .RHD_MISO1_M_N(1'b0),
        .RHD_MISO1_M_P(1'b0),
        .RHD_MISO1_N(1'b0),
        .RHD_MISO1_N_N(1'b0),
        .RHD_MISO1_N_P(1'b0),
        .RHD_MISO1_O(1'b0),
        .RHD_MISO1_O_N(1'b0),
        .RHD_MISO1_O_P(1'b0),
        .RHD_MISO1_P(1'b0),
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
        .RHD_MISO2_I(1'b0),
        .RHD_MISO2_I_N(1'b0),
        .RHD_MISO2_I_P(1'b0),
        .RHD_MISO2_J(1'b0),
        .RHD_MISO2_J_N(1'b0),
        .RHD_MISO2_J_P(1'b0),
        .RHD_MISO2_K(1'b0),
        .RHD_MISO2_K_N(1'b0),
        .RHD_MISO2_K_P(1'b0),
        .RHD_MISO2_L(1'b0),
        .RHD_MISO2_L_N(1'b0),
        .RHD_MISO2_L_P(1'b0),
        .RHD_MISO2_M(1'b0),
        .RHD_MISO2_M_N(1'b0),
        .RHD_MISO2_M_P(1'b0),
        .RHD_MISO2_N(1'b0),
        .RHD_MISO2_N_N(1'b0),
        .RHD_MISO2_N_P(1'b0),
        .RHD_MISO2_O(1'b0),
        .RHD_MISO2_O_N(1'b0),
        .RHD_MISO2_O_P(1'b0),
        .RHD_MISO2_P(1'b0),
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
        .RHS_MISO_I(1'b0),
        .RHS_MISO_J(1'b0),
        .RHS_MISO_K(1'b0),
        .RHS_MISO_L(1'b0),
        .RHS_MISO_M(1'b0),
        .RHS_MISO_N(1'b0),
        .RHS_MISO_O(1'b0),
        .RHS_MISO_P(1'b0),
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
        .reg0_debug(seeg_top_0_reg0_debug));
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
