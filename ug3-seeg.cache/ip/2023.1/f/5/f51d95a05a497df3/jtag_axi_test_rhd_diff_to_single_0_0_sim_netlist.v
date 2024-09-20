// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Sep 19 15:05:45 2024
// Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jtag_axi_test_rhd_diff_to_single_0_0_sim_netlist.v
// Design      : jtag_axi_test_rhd_diff_to_single_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jtag_axi_test_rhd_diff_to_single_0_0,rhd_diff_to_single,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rhd_diff_to_single,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (MISO1_I_P,
    MISO1_I_N,
    MISO1_I,
    MISO2_I_P,
    MISO2_I_N,
    MISO2_I,
    MISO1_J_P,
    MISO1_J_N,
    MISO1_J,
    MISO2_J_P,
    MISO2_J_N,
    MISO2_J,
    MISO1_K_P,
    MISO1_K_N,
    MISO1_K,
    MISO2_K_P,
    MISO2_K_N,
    MISO2_K,
    MISO1_L_P,
    MISO1_L_N,
    MISO1_L,
    MISO2_L_P,
    MISO2_L_N,
    MISO2_L,
    MISO1_M_P,
    MISO1_M_N,
    MISO1_M,
    MISO2_M_P,
    MISO2_M_N,
    MISO2_M,
    MISO1_N_P,
    MISO1_N_N,
    MISO1_N,
    MISO2_N_P,
    MISO2_N_N,
    MISO2_N,
    MISO1_O_P,
    MISO1_O_N,
    MISO1_O,
    MISO2_O_P,
    MISO2_O_N,
    MISO2_O,
    MISO1_P_P,
    MISO1_P_N,
    MISO1_P,
    MISO2_P_P,
    MISO2_P_N,
    MISO2_P);
  input MISO1_I_P;
  input MISO1_I_N;
  output MISO1_I;
  input MISO2_I_P;
  input MISO2_I_N;
  output MISO2_I;
  input MISO1_J_P;
  input MISO1_J_N;
  output MISO1_J;
  input MISO2_J_P;
  input MISO2_J_N;
  output MISO2_J;
  input MISO1_K_P;
  input MISO1_K_N;
  output MISO1_K;
  input MISO2_K_P;
  input MISO2_K_N;
  output MISO2_K;
  input MISO1_L_P;
  input MISO1_L_N;
  output MISO1_L;
  input MISO2_L_P;
  input MISO2_L_N;
  output MISO2_L;
  input MISO1_M_P;
  input MISO1_M_N;
  output MISO1_M;
  input MISO2_M_P;
  input MISO2_M_N;
  output MISO2_M;
  input MISO1_N_P;
  input MISO1_N_N;
  output MISO1_N;
  input MISO2_N_P;
  input MISO2_N_N;
  output MISO2_N;
  input MISO1_O_P;
  input MISO1_O_N;
  output MISO1_O;
  input MISO2_O_P;
  input MISO2_O_N;
  output MISO2_O;
  input MISO1_P_P;
  input MISO1_P_N;
  output MISO1_P;
  input MISO2_P_P;
  input MISO2_P_N;
  output MISO2_P;

  (* IBUF_LOW_PWR *) wire MISO1_I;
  (* IBUF_LOW_PWR *) wire MISO1_I_N;
  (* IBUF_LOW_PWR *) wire MISO1_I_P;
  (* IBUF_LOW_PWR *) wire MISO1_J;
  (* IBUF_LOW_PWR *) wire MISO1_J_N;
  (* IBUF_LOW_PWR *) wire MISO1_J_P;
  (* IBUF_LOW_PWR *) wire MISO1_K;
  (* IBUF_LOW_PWR *) wire MISO1_K_N;
  (* IBUF_LOW_PWR *) wire MISO1_K_P;
  (* IBUF_LOW_PWR *) wire MISO1_L;
  (* IBUF_LOW_PWR *) wire MISO1_L_N;
  (* IBUF_LOW_PWR *) wire MISO1_L_P;
  (* IBUF_LOW_PWR *) wire MISO1_M;
  (* IBUF_LOW_PWR *) wire MISO1_M_N;
  (* IBUF_LOW_PWR *) wire MISO1_M_P;
  (* IBUF_LOW_PWR *) wire MISO1_N;
  (* IBUF_LOW_PWR *) wire MISO1_N_N;
  (* IBUF_LOW_PWR *) wire MISO1_N_P;
  (* IBUF_LOW_PWR *) wire MISO1_O;
  (* IBUF_LOW_PWR *) wire MISO1_O_N;
  (* IBUF_LOW_PWR *) wire MISO1_O_P;
  (* IBUF_LOW_PWR *) wire MISO1_P;
  (* IBUF_LOW_PWR *) wire MISO1_P_N;
  (* IBUF_LOW_PWR *) wire MISO1_P_P;
  (* IBUF_LOW_PWR *) wire MISO2_I;
  (* IBUF_LOW_PWR *) wire MISO2_I_N;
  (* IBUF_LOW_PWR *) wire MISO2_I_P;
  (* IBUF_LOW_PWR *) wire MISO2_J;
  (* IBUF_LOW_PWR *) wire MISO2_J_N;
  (* IBUF_LOW_PWR *) wire MISO2_J_P;
  (* IBUF_LOW_PWR *) wire MISO2_K;
  (* IBUF_LOW_PWR *) wire MISO2_K_N;
  (* IBUF_LOW_PWR *) wire MISO2_K_P;
  (* IBUF_LOW_PWR *) wire MISO2_L;
  (* IBUF_LOW_PWR *) wire MISO2_L_N;
  (* IBUF_LOW_PWR *) wire MISO2_L_P;
  (* IBUF_LOW_PWR *) wire MISO2_M;
  (* IBUF_LOW_PWR *) wire MISO2_M_N;
  (* IBUF_LOW_PWR *) wire MISO2_M_P;
  (* IBUF_LOW_PWR *) wire MISO2_N;
  (* IBUF_LOW_PWR *) wire MISO2_N_N;
  (* IBUF_LOW_PWR *) wire MISO2_N_P;
  (* IBUF_LOW_PWR *) wire MISO2_O;
  (* IBUF_LOW_PWR *) wire MISO2_O_N;
  (* IBUF_LOW_PWR *) wire MISO2_O_P;
  (* IBUF_LOW_PWR *) wire MISO2_P;
  (* IBUF_LOW_PWR *) wire MISO2_P_N;
  (* IBUF_LOW_PWR *) wire MISO2_P_P;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhd_diff_to_single inst
       (.MISO1_I(MISO1_I),
        .MISO1_I_N(MISO1_I_N),
        .MISO1_I_P(MISO1_I_P),
        .MISO1_J(MISO1_J),
        .MISO1_J_N(MISO1_J_N),
        .MISO1_J_P(MISO1_J_P),
        .MISO1_K(MISO1_K),
        .MISO1_K_N(MISO1_K_N),
        .MISO1_K_P(MISO1_K_P),
        .MISO1_L(MISO1_L),
        .MISO1_L_N(MISO1_L_N),
        .MISO1_L_P(MISO1_L_P),
        .MISO1_M(MISO1_M),
        .MISO1_M_N(MISO1_M_N),
        .MISO1_M_P(MISO1_M_P),
        .MISO1_N(MISO1_N),
        .MISO1_N_N(MISO1_N_N),
        .MISO1_N_P(MISO1_N_P),
        .MISO1_O(MISO1_O),
        .MISO1_O_N(MISO1_O_N),
        .MISO1_O_P(MISO1_O_P),
        .MISO1_P(MISO1_P),
        .MISO1_P_N(MISO1_P_N),
        .MISO1_P_P(MISO1_P_P),
        .MISO2_I(MISO2_I),
        .MISO2_I_N(MISO2_I_N),
        .MISO2_I_P(MISO2_I_P),
        .MISO2_J(MISO2_J),
        .MISO2_J_N(MISO2_J_N),
        .MISO2_J_P(MISO2_J_P),
        .MISO2_K(MISO2_K),
        .MISO2_K_N(MISO2_K_N),
        .MISO2_K_P(MISO2_K_P),
        .MISO2_L(MISO2_L),
        .MISO2_L_N(MISO2_L_N),
        .MISO2_L_P(MISO2_L_P),
        .MISO2_M(MISO2_M),
        .MISO2_M_N(MISO2_M_N),
        .MISO2_M_P(MISO2_M_P),
        .MISO2_N(MISO2_N),
        .MISO2_N_N(MISO2_N_N),
        .MISO2_N_P(MISO2_N_P),
        .MISO2_O(MISO2_O),
        .MISO2_O_N(MISO2_O_N),
        .MISO2_O_P(MISO2_O_P),
        .MISO2_P(MISO2_P),
        .MISO2_P_N(MISO2_P_N),
        .MISO2_P_P(MISO2_P_P));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rhd_diff_to_single
   (MISO1_I,
    MISO2_I,
    MISO1_J,
    MISO2_J,
    MISO1_K,
    MISO2_K,
    MISO1_L,
    MISO2_L,
    MISO1_M,
    MISO2_M,
    MISO1_N,
    MISO2_N,
    MISO1_O,
    MISO2_O,
    MISO1_P,
    MISO2_P,
    MISO1_I_P,
    MISO1_I_N,
    MISO2_I_P,
    MISO2_I_N,
    MISO1_J_P,
    MISO1_J_N,
    MISO2_J_P,
    MISO2_J_N,
    MISO1_K_P,
    MISO1_K_N,
    MISO2_K_P,
    MISO2_K_N,
    MISO1_L_P,
    MISO1_L_N,
    MISO2_L_P,
    MISO2_L_N,
    MISO1_M_P,
    MISO1_M_N,
    MISO2_M_P,
    MISO2_M_N,
    MISO1_N_P,
    MISO1_N_N,
    MISO2_N_P,
    MISO2_N_N,
    MISO1_O_P,
    MISO1_O_N,
    MISO2_O_P,
    MISO2_O_N,
    MISO1_P_P,
    MISO1_P_N,
    MISO2_P_P,
    MISO2_P_N);
  output MISO1_I;
  output MISO2_I;
  output MISO1_J;
  output MISO2_J;
  output MISO1_K;
  output MISO2_K;
  output MISO1_L;
  output MISO2_L;
  output MISO1_M;
  output MISO2_M;
  output MISO1_N;
  output MISO2_N;
  output MISO1_O;
  output MISO2_O;
  output MISO1_P;
  output MISO2_P;
  input MISO1_I_P;
  input MISO1_I_N;
  input MISO2_I_P;
  input MISO2_I_N;
  input MISO1_J_P;
  input MISO1_J_N;
  input MISO2_J_P;
  input MISO2_J_N;
  input MISO1_K_P;
  input MISO1_K_N;
  input MISO2_K_P;
  input MISO2_K_N;
  input MISO1_L_P;
  input MISO1_L_N;
  input MISO2_L_P;
  input MISO2_L_N;
  input MISO1_M_P;
  input MISO1_M_N;
  input MISO2_M_P;
  input MISO2_M_N;
  input MISO1_N_P;
  input MISO1_N_N;
  input MISO2_N_P;
  input MISO2_N_N;
  input MISO1_O_P;
  input MISO1_O_N;
  input MISO2_O_P;
  input MISO2_O_N;
  input MISO1_P_P;
  input MISO1_P_N;
  input MISO2_P_P;
  input MISO2_P_N;

  wire MISO1_I;
  wire MISO1_I_N;
  wire MISO1_I_P;
  wire MISO1_J;
  wire MISO1_J_N;
  wire MISO1_J_P;
  wire MISO1_K;
  wire MISO1_K_N;
  wire MISO1_K_P;
  wire MISO1_L;
  wire MISO1_L_N;
  wire MISO1_L_P;
  wire MISO1_M;
  wire MISO1_M_N;
  wire MISO1_M_P;
  wire MISO1_N;
  wire MISO1_N_N;
  wire MISO1_N_P;
  wire MISO1_O;
  wire MISO1_O_N;
  wire MISO1_O_P;
  wire MISO1_P;
  wire MISO1_P_N;
  wire MISO1_P_P;
  wire MISO2_I;
  wire MISO2_I_N;
  wire MISO2_I_P;
  wire MISO2_J;
  wire MISO2_J_N;
  wire MISO2_J_P;
  wire MISO2_K;
  wire MISO2_K_N;
  wire MISO2_K_P;
  wire MISO2_L;
  wire MISO2_L_N;
  wire MISO2_L_P;
  wire MISO2_M;
  wire MISO2_M_N;
  wire MISO2_M_P;
  wire MISO2_N;
  wire MISO2_N_N;
  wire MISO2_N_P;
  wire MISO2_O;
  wire MISO2_O_N;
  wire MISO2_O_P;
  wire MISO2_P;
  wire MISO2_P_N;
  wire MISO2_P_P;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_I
       (.I(MISO1_I_P),
        .IB(MISO1_I_N),
        .O(MISO1_I));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_J
       (.I(MISO1_J_P),
        .IB(MISO1_J_N),
        .O(MISO1_J));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_K
       (.I(MISO1_K_P),
        .IB(MISO1_K_N),
        .O(MISO1_K));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_L
       (.I(MISO1_L_P),
        .IB(MISO1_L_N),
        .O(MISO1_L));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_M
       (.I(MISO1_M_P),
        .IB(MISO1_M_N),
        .O(MISO1_M));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_N
       (.I(MISO1_N_P),
        .IB(MISO1_N_N),
        .O(MISO1_N));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_O
       (.I(MISO1_O_P),
        .IB(MISO1_O_N),
        .O(MISO1_O));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO1_P
       (.I(MISO1_P_P),
        .IB(MISO1_P_N),
        .O(MISO1_P));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_I
       (.I(MISO2_I_P),
        .IB(MISO2_I_N),
        .O(MISO2_I));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_J
       (.I(MISO2_J_P),
        .IB(MISO2_J_N),
        .O(MISO2_J));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_K
       (.I(MISO2_K_P),
        .IB(MISO2_K_N),
        .O(MISO2_K));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_L
       (.I(MISO2_L_P),
        .IB(MISO2_L_N),
        .O(MISO2_L));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_M
       (.I(MISO2_M_P),
        .IB(MISO2_M_N),
        .O(MISO2_M));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_N
       (.I(MISO2_N_P),
        .IB(MISO2_N_N),
        .O(MISO2_N));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_O
       (.I(MISO2_O_P),
        .IB(MISO2_O_N),
        .O(MISO2_O));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUF_MISO2_P
       (.I(MISO2_P_P),
        .IB(MISO2_P_N),
        .O(MISO2_P));
endmodule
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
