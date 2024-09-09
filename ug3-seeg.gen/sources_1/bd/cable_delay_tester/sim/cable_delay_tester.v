//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Sep  9 13:00:02 2024
//Host        : DESKTOP-JS8NSUT running 64-bit major release  (build 9200)
//Command     : generate_target cable_delay_tester.bd
//Design      : cable_delay_tester
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cable_delay_tester,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cable_delay_tester,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cable_delay_tester.hwdef" *) 
module cable_delay_tester
   (CS_RHD,
    CS_RHS,
    MISO_RHD,
    MISO_RHS,
    MOSI_RHD,
    MOSI_RHS,
    SCLK_RHD,
    SCLK_RHS);
  output CS_RHD;
  output CS_RHS;
  input MISO_RHD;
  input MISO_RHS;
  output MOSI_RHD;
  output MOSI_RHS;
  output SCLK_RHD;
  output SCLK_RHS;

  wire MISO_1;
  wire MISO_RHS_1;
  wire clk_wiz_0_clk_18M;
  wire clk_wiz_0_clk_39M;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]reset_rhs_peripheral_aresetn;
  wire rhd_spi_master_0_CS;
  wire rhd_spi_master_0_MOSI;
  wire rhd_spi_master_0_SCLK;
  wire [15:0]rhd_spi_master_0_a_data_out;
  wire [15:0]rhd_spi_master_0_b_data_out;
  wire rhd_spi_master_0_busy;
  wire rhd_spi_master_0_done;
  wire rhs_spi_master_0_CS;
  wire rhs_spi_master_0_MOSI;
  wire rhs_spi_master_0_SCLK;
  wire rhs_spi_master_0_busy;
  wire [31:0]rhs_spi_master_0_data_out;
  wire rhs_spi_master_0_done;
  wire [0:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;
  wire [7:0]xlconstant_2_dout;
  wire [31:0]xlconstant_3_dout;
  wire [0:0]xlconstant_4_dout;
  wire [7:0]xlconstant_5_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign CS_RHD = rhd_spi_master_0_CS;
  assign CS_RHS = rhs_spi_master_0_CS;
  assign MISO_1 = MISO_RHD;
  assign MISO_RHS_1 = MISO_RHS;
  assign MOSI_RHD = rhd_spi_master_0_MOSI;
  assign MOSI_RHS = rhs_spi_master_0_MOSI;
  assign SCLK_RHD = rhd_spi_master_0_SCLK;
  assign SCLK_RHS = rhs_spi_master_0_SCLK;
  cable_delay_tester_clk_wiz_0_0 clk_wiz_0
       (.clk_18M(clk_wiz_0_clk_18M),
        .clk_39M(clk_wiz_0_clk_39M),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk0),
        .locked(clk_wiz_0_locked));
  cable_delay_tester_ila_0_0 ila_rhd
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe0(rhd_spi_master_0_a_data_out),
        .probe1(rhd_spi_master_0_b_data_out),
        .probe10(xlconstant_1_dout),
        .probe2(rhd_spi_master_0_done),
        .probe3(rhd_spi_master_0_busy),
        .probe4(rhd_spi_master_0_SCLK),
        .probe5(rhd_spi_master_0_CS),
        .probe6(rhd_spi_master_0_MOSI),
        .probe7(MISO_1),
        .probe8(proc_sys_reset_0_peripheral_aresetn),
        .probe9(clk_wiz_0_clk_18M));
  cable_delay_tester_ila_0_1 ila_rhs
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe0(xlconstant_3_dout),
        .probe1(rhs_spi_master_0_data_out),
        .probe2(MISO_RHS_1),
        .probe3(rhs_spi_master_0_MOSI),
        .probe4(rhs_spi_master_0_CS),
        .probe5(rhs_spi_master_0_SCLK),
        .probe6(rhs_spi_master_0_busy),
        .probe7(rhs_spi_master_0_done),
        .probe8(clk_wiz_0_clk_39M),
        .probe9(proc_sys_reset_0_peripheral_aresetn));
  cable_delay_tester_proc_sys_reset_0_1 reset_rhd
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_18M));
  cable_delay_tester_proc_sys_reset_1_0 reset_rhs
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(reset_rhs_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_39M));
  cable_delay_tester_rhd_spi_master_0_0 rhd_spi_master_0
       (.CS(rhd_spi_master_0_CS),
        .MISO(MISO_1),
        .MOSI(rhd_spi_master_0_MOSI),
        .SCLK(rhd_spi_master_0_SCLK),
        .a_data_out(rhd_spi_master_0_a_data_out),
        .b_data_out(rhd_spi_master_0_b_data_out),
        .busy(rhd_spi_master_0_busy),
        .clk(clk_wiz_0_clk_18M),
        .data_in(xlconstant_1_dout),
        .done(rhd_spi_master_0_done),
        .oversample_offset(xlconstant_2_dout),
        .rstn(proc_sys_reset_0_peripheral_aresetn),
        .start(xlconstant_0_dout));
  cable_delay_tester_rhs_spi_master_0_0 rhs_spi_master_0
       (.CS(rhs_spi_master_0_CS),
        .MISO(MISO_RHS_1),
        .MOSI(rhs_spi_master_0_MOSI),
        .SCLK(rhs_spi_master_0_SCLK),
        .busy(rhs_spi_master_0_busy),
        .clk(clk_wiz_0_clk_39M),
        .data_in(xlconstant_3_dout),
        .data_out(rhs_spi_master_0_data_out),
        .done(rhs_spi_master_0_done),
        .oversample_offset(xlconstant_5_dout),
        .rstn(reset_rhs_peripheral_aresetn),
        .start(xlconstant_4_dout));
  cable_delay_tester_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  cable_delay_tester_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  cable_delay_tester_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  cable_delay_tester_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  cable_delay_tester_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  cable_delay_tester_xlconstant_5_0 xlconstant_5
       (.dout(xlconstant_5_dout));
  cable_delay_tester_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
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
