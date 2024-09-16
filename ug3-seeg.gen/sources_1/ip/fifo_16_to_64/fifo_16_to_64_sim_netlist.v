// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Sep 15 21:18:15 2024
// Host        : Gingham running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/ip/fifo_16_to_64/fifo_16_to_64_sim_netlist.v
// Design      : fifo_16_to_64
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16_to_64,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module fifo_16_to_64
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
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
  (* C_RD_FREQ = "1" *) 
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
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_16_to_64_fifo_generator_v13_2_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70512)
`pragma protect data_block
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
+X+5
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
