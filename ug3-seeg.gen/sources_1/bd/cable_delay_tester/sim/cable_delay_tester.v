//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sun Sep 15 21:16:24 2024
//Host        : Gingham running 64-bit major release  (build 9200)
//Command     : generate_target cable_delay_tester.bd
//Design      : cable_delay_tester
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cable_delay_tester,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cable_delay_tester,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cable_delay_tester.hwdef" *) 
module cable_delay_tester
   (CS_RHS,
    MISO_RHS,
    MOSI_RHS,
    SCLK_RHS);
  output CS_RHS;
  input MISO_RHS;
  output MOSI_RHS;
  output SCLK_RHS;

  wire MISO_RHS_1;
  wire clk_wiz_0_clk_39M;
  wire clk_wiz_0_locked;
  wire [0:0]reset_rhs_peripheral_aresetn;
  wire rhs_spi_master_0_CS;
  wire rhs_spi_master_0_MOSI;
  wire rhs_spi_master_0_SCLK;
  wire rhs_spi_master_0_busy;
  wire [31:0]rhs_spi_master_0_data_out;
  wire rhs_spi_master_0_done;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [0:0]xlconstant_0_dout;
  wire [7:0]xlconstant_1_dout;
  wire [31:0]xlconstant_3_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign CS_RHS = rhs_spi_master_0_CS;
  assign MISO_RHS_1 = MISO_RHS;
  assign MOSI_RHS = rhs_spi_master_0_MOSI;
  assign SCLK_RHS = rhs_spi_master_0_SCLK;
  cable_delay_tester_clk_wiz_0_0 clk_wiz_0
       (.clk_78M(clk_wiz_0_clk_39M),
        .clk_in1(zynq_ultra_ps_e_0_pl_clk0),
        .locked(clk_wiz_0_locked));
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
        .probe8(clk_wiz_0_clk_39M));
  cable_delay_tester_proc_sys_reset_1_0 reset_rhs
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(reset_rhs_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_39M));
  cable_delay_tester_rhd_2048_0_0 rhd_2048_0
       (.MISO1_A(1'b0),
        .MISO1_B(1'b0),
        .MISO1_C(1'b0),
        .MISO1_D(1'b0),
        .MISO1_E(1'b0),
        .MISO1_F(1'b0),
        .MISO1_G(1'b0),
        .MISO1_H(1'b0),
        .MISO1_I(1'b0),
        .MISO1_J(1'b0),
        .MISO1_K(1'b0),
        .MISO1_L(1'b0),
        .MISO1_M(1'b0),
        .MISO1_N(1'b0),
        .MISO1_O(1'b0),
        .MISO1_P(1'b0),
        .MISO2_A(1'b0),
        .MISO2_B(1'b0),
        .MISO2_C(1'b0),
        .MISO2_D(1'b0),
        .MISO2_E(1'b0),
        .MISO2_F(1'b0),
        .MISO2_G(1'b0),
        .MISO2_H(1'b0),
        .MISO2_I(1'b0),
        .MISO2_J(1'b0),
        .MISO2_K(1'b0),
        .MISO2_L(1'b0),
        .MISO2_M(1'b0),
        .MISO2_N(1'b0),
        .MISO2_O(1'b0),
        .MISO2_P(1'b0),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_start(1'b0),
        .fifo_read_en(1'b0),
        .fifo_rst(1'b0),
        .fifo_write_en_external(1'b0),
        .oversample_offset_A1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_A2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_B1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_B2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_C1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_C2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_E1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_E2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_F1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_F2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_G1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_G2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_H1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_H2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_I1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_I2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_J1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_J2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_K1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_K2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_L1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_L2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_M1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_M2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_N1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_N2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_O1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_O2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_P1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_P2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .record_start(1'b0),
        .rstn(rst_ps8_0_99M_peripheral_aresetn),
        .sampling_rate_20k(1'b0),
        .zcheck_global_channel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .zcheck_scale({1'b0,1'b0}),
        .zcheck_start(1'b0));
  cable_delay_tester_rhs_256_0_0 rhs_256_0
       (.MISO_A(1'b0),
        .MISO_B(1'b0),
        .MISO_C(1'b0),
        .MISO_D(1'b0),
        .MISO_E(1'b0),
        .MISO_F(1'b0),
        .MISO_G(1'b0),
        .MISO_H(1'b0),
        .MISO_I(1'b0),
        .MISO_J(1'b0),
        .MISO_K(1'b0),
        .MISO_L(1'b0),
        .MISO_M(1'b0),
        .MISO_N(1'b0),
        .MISO_O(1'b0),
        .MISO_P(1'b0),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .config_start(1'b0),
        .fifo_read_en(1'b0),
        .fifo_rst(1'b0),
        .fifo_write_en_external(1'b0),
        .oversample_offset_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_E({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_F({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_G({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_H({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_J({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_K({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_M({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_N({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_O({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .oversample_offset_P({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .record_start(1'b0),
        .rstn(rst_ps8_0_99M_peripheral_aresetn),
        .stim_bipolar_mode(1'b0),
        .stim_bipulses_per_train_count({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_charge_recovery_time({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_current_step_size({1'b0,1'b0,1'b0,1'b0}),
        .stim_finite_mode_start(1'b0),
        .stim_infinite_mode_start(1'b0),
        .stim_infinite_mode_stop(1'b0),
        .stim_inter_bipulse_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_inter_pulse_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_inter_train_delay({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_mask_channel_negative({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_mask_channel_positive({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_mask_probe_select({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_pulse_length({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_pulse_magnitude({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .stim_rising_edge_first(1'b0),
        .stim_train_count({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .zcheck_global_channel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .zcheck_scale({1'b0,1'b0}),
        .zcheck_start(1'b0));
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
        .oversample_offset(xlconstant_1_dout),
        .rstn(reset_rhs_peripheral_aresetn),
        .start(xlconstant_0_dout));
  cable_delay_tester_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  cable_delay_tester_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  cable_delay_tester_xlconstant_1_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  cable_delay_tester_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
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
