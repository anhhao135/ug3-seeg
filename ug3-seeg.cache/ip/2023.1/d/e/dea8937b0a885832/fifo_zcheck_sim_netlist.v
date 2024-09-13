// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Sep 13 16:28:16 2024
// Host        : GramForGram running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_zcheck_sim_netlist.v
// Design      : fifo_zcheck
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_zcheck,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (srst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    wr_rst_busy,
    rd_rst_busy);
  input srst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 56000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4094" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4093" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "56" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "250" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70672)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
