// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Sep 13 16:28:18 2024
// Host        : GramForGram running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/ip/fifo_zcheck/fifo_zcheck_sim_netlist.v
// Design      : fifo_zcheck
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_zcheck,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fifo_zcheck
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
  fifo_zcheck_fifo_generator_v13_2_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70480)
`pragma protect data_block
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
Dwq35rD29ft/IjdqDZEiyZVOAetjcoalr6Z87g==
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
