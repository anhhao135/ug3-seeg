// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Mar 31 12:03:38 2025
// Host        : ug3 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ seeg_zynq_clock_divider_0_0_sim_netlist.v
// Design      : seeg_zynq_clock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
   (clock_out,
    divisor,
    rstn,
    clock_in);
  output clock_out;
  input [3:0]divisor;
  input rstn;
  input clock_in;

  wire clock_in;
  wire clock_out;
  wire clock_out_pre_buff;
  wire clock_out_pre_buff_i_1_n_0;
  wire clock_out_pre_buff_reg0_carry__0_i_1_n_0;
  wire clock_out_pre_buff_reg0_carry__0_i_2_n_0;
  wire clock_out_pre_buff_reg0_carry__0_i_3_n_0;
  wire clock_out_pre_buff_reg0_carry__0_i_4_n_0;
  wire clock_out_pre_buff_reg0_carry__0_i_5_n_0;
  wire clock_out_pre_buff_reg0_carry__0_i_6_n_0;
  wire clock_out_pre_buff_reg0_carry__0_n_3;
  wire clock_out_pre_buff_reg0_carry__0_n_4;
  wire clock_out_pre_buff_reg0_carry__0_n_5;
  wire clock_out_pre_buff_reg0_carry__0_n_6;
  wire clock_out_pre_buff_reg0_carry__0_n_7;
  wire clock_out_pre_buff_reg0_carry_i_10_n_0;
  wire clock_out_pre_buff_reg0_carry_i_1_n_0;
  wire clock_out_pre_buff_reg0_carry_i_2_n_0;
  wire clock_out_pre_buff_reg0_carry_i_3_n_0;
  wire clock_out_pre_buff_reg0_carry_i_4_n_0;
  wire clock_out_pre_buff_reg0_carry_i_5_n_0;
  wire clock_out_pre_buff_reg0_carry_i_6_n_0;
  wire clock_out_pre_buff_reg0_carry_i_7_n_0;
  wire clock_out_pre_buff_reg0_carry_i_8_n_0;
  wire clock_out_pre_buff_reg0_carry_i_9_n_0;
  wire clock_out_pre_buff_reg0_carry_n_0;
  wire clock_out_pre_buff_reg0_carry_n_1;
  wire clock_out_pre_buff_reg0_carry_n_2;
  wire clock_out_pre_buff_reg0_carry_n_3;
  wire clock_out_pre_buff_reg0_carry_n_4;
  wire clock_out_pre_buff_reg0_carry_n_5;
  wire clock_out_pre_buff_reg0_carry_n_6;
  wire clock_out_pre_buff_reg0_carry_n_7;
  wire counter0_carry__0_i_10_n_0;
  wire counter0_carry__0_i_11_n_0;
  wire counter0_carry__0_i_12_n_0;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_i_5_n_0;
  wire counter0_carry__0_i_6_n_0;
  wire counter0_carry__0_i_7_n_0;
  wire counter0_carry__0_i_8_n_0;
  wire counter0_carry__0_i_9_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry_i_10_n_0;
  wire counter0_carry_i_11_n_0;
  wire counter0_carry_i_12_n_0;
  wire counter0_carry_i_13_n_0;
  wire counter0_carry_i_14_n_0;
  wire counter0_carry_i_15_n_0;
  wire counter0_carry_i_16_n_0;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_i_5_n_0;
  wire counter0_carry_i_6_n_0;
  wire counter0_carry_i_7_n_0;
  wire counter0_carry_i_8_n_0;
  wire counter0_carry_i_9_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire counter1_n_0;
  wire counter1_rep_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [27:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_10 ;
  wire \counter_reg[0]_i_2_n_11 ;
  wire \counter_reg[0]_i_2_n_12 ;
  wire \counter_reg[0]_i_2_n_13 ;
  wire \counter_reg[0]_i_2_n_14 ;
  wire \counter_reg[0]_i_2_n_15 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[0]_i_2_n_8 ;
  wire \counter_reg[0]_i_2_n_9 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_10 ;
  wire \counter_reg[16]_i_1_n_11 ;
  wire \counter_reg[16]_i_1_n_12 ;
  wire \counter_reg[16]_i_1_n_13 ;
  wire \counter_reg[16]_i_1_n_14 ;
  wire \counter_reg[16]_i_1_n_15 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_8 ;
  wire \counter_reg[16]_i_1_n_9 ;
  wire \counter_reg[24]_i_1_n_12 ;
  wire \counter_reg[24]_i_1_n_13 ;
  wire \counter_reg[24]_i_1_n_14 ;
  wire \counter_reg[24]_i_1_n_15 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_10 ;
  wire \counter_reg[8]_i_1_n_11 ;
  wire \counter_reg[8]_i_1_n_12 ;
  wire \counter_reg[8]_i_1_n_13 ;
  wire \counter_reg[8]_i_1_n_14 ;
  wire \counter_reg[8]_i_1_n_15 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_8 ;
  wire \counter_reg[8]_i_1_n_9 ;
  wire [3:0]divisor;
  wire p_1_in;
  wire rstn;
  wire [7:0]NLW_clock_out_pre_buff_reg0_carry_O_UNCONNECTED;
  wire [7:6]NLW_clock_out_pre_buff_reg0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_clock_out_pre_buff_reg0_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [7:0]NLW_counter0_carry__0_O_UNCONNECTED;
  wire [7:3]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    BUFGCE_inst
       (.CE(1'b1),
        .I(clock_out_pre_buff),
        .O(clock_out));
  LUT2 #(
    .INIT(4'h8)) 
    clock_out_pre_buff_i_1
       (.I0(rstn),
        .I1(p_1_in),
        .O(clock_out_pre_buff_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_out_pre_buff_reg
       (.C(clock_in),
        .CE(1'b1),
        .D(clock_out_pre_buff_i_1_n_0),
        .Q(clock_out_pre_buff),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 clock_out_pre_buff_reg0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({clock_out_pre_buff_reg0_carry_n_0,clock_out_pre_buff_reg0_carry_n_1,clock_out_pre_buff_reg0_carry_n_2,clock_out_pre_buff_reg0_carry_n_3,clock_out_pre_buff_reg0_carry_n_4,clock_out_pre_buff_reg0_carry_n_5,clock_out_pre_buff_reg0_carry_n_6,clock_out_pre_buff_reg0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,clock_out_pre_buff_reg0_carry_i_1_n_0,clock_out_pre_buff_reg0_carry_i_2_n_0}),
        .O(NLW_clock_out_pre_buff_reg0_carry_O_UNCONNECTED[7:0]),
        .S({clock_out_pre_buff_reg0_carry_i_3_n_0,clock_out_pre_buff_reg0_carry_i_4_n_0,clock_out_pre_buff_reg0_carry_i_5_n_0,clock_out_pre_buff_reg0_carry_i_6_n_0,clock_out_pre_buff_reg0_carry_i_7_n_0,clock_out_pre_buff_reg0_carry_i_8_n_0,clock_out_pre_buff_reg0_carry_i_9_n_0,clock_out_pre_buff_reg0_carry_i_10_n_0}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 clock_out_pre_buff_reg0_carry__0
       (.CI(clock_out_pre_buff_reg0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_clock_out_pre_buff_reg0_carry__0_CO_UNCONNECTED[7:6],p_1_in,clock_out_pre_buff_reg0_carry__0_n_3,clock_out_pre_buff_reg0_carry__0_n_4,clock_out_pre_buff_reg0_carry__0_n_5,clock_out_pre_buff_reg0_carry__0_n_6,clock_out_pre_buff_reg0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clock_out_pre_buff_reg0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,clock_out_pre_buff_reg0_carry__0_i_1_n_0,clock_out_pre_buff_reg0_carry__0_i_2_n_0,clock_out_pre_buff_reg0_carry__0_i_3_n_0,clock_out_pre_buff_reg0_carry__0_i_4_n_0,clock_out_pre_buff_reg0_carry__0_i_5_n_0,clock_out_pre_buff_reg0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry__0_i_1
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(clock_out_pre_buff_reg0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry__0_i_2
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(clock_out_pre_buff_reg0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry__0_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(clock_out_pre_buff_reg0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry__0_i_4
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(clock_out_pre_buff_reg0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry__0_i_5
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(clock_out_pre_buff_reg0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry__0_i_6
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(clock_out_pre_buff_reg0_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    clock_out_pre_buff_reg0_carry_i_1
       (.I0(counter_reg[2]),
        .I1(divisor[3]),
        .I2(counter_reg[3]),
        .O(clock_out_pre_buff_reg0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_out_pre_buff_reg0_carry_i_10
       (.I0(divisor[1]),
        .I1(counter_reg[0]),
        .I2(divisor[2]),
        .I3(counter_reg[1]),
        .O(clock_out_pre_buff_reg0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    clock_out_pre_buff_reg0_carry_i_2
       (.I0(divisor[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(divisor[2]),
        .O(clock_out_pre_buff_reg0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry_i_3
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(clock_out_pre_buff_reg0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry_i_4
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(clock_out_pre_buff_reg0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry_i_5
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(clock_out_pre_buff_reg0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry_i_6
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(clock_out_pre_buff_reg0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry_i_7
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(clock_out_pre_buff_reg0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    clock_out_pre_buff_reg0_carry_i_8
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(clock_out_pre_buff_reg0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    clock_out_pre_buff_reg0_carry_i_9
       (.I0(divisor[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .O(clock_out_pre_buff_reg0_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 counter0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0,counter0_carry_i_5_n_0,counter0_carry_i_6_n_0,counter0_carry_i_7_n_0,counter0_carry_i_8_n_0}),
        .O(NLW_counter0_carry_O_UNCONNECTED[7:0]),
        .S({counter0_carry_i_9_n_0,counter0_carry_i_10_n_0,counter0_carry_i_11_n_0,counter0_carry_i_12_n_0,counter0_carry_i_13_n_0,counter0_carry_i_14_n_0,counter0_carry_i_15_n_0,counter0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0,counter0_carry__0_i_5_n_0,counter0_carry__0_i_6_n_0}),
        .O(NLW_counter0_carry__0_O_UNCONNECTED[7:0]),
        .S({counter1_n_0,counter1_rep_n_0,counter0_carry__0_i_7_n_0,counter0_carry__0_i_8_n_0,counter0_carry__0_i_9_n_0,counter0_carry__0_i_10_n_0,counter0_carry__0_i_11_n_0,counter0_carry__0_i_12_n_0}));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry__0_i_1
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry__0_i_10
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry__0_i_11
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry__0_i_12
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry__0_i_2
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry__0_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry__0_i_4
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry__0_i_5
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry__0_i_6
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry__0_i_7
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry__0_i_8
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry__0_i_9
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry_i_1
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry_i_10
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry_i_11
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry_i_12
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry_i_13
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry_i_14
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    counter0_carry_i_15
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h4218)) 
    counter0_carry_i_16
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(divisor[0]),
        .I3(divisor[1]),
        .O(counter0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry_i_2
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry_i_3
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry_i_4
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry_i_5
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    counter0_carry_i_6
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0808088CCECECEE0)) 
    counter0_carry_i_7
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8CE0)) 
    counter0_carry_i_8
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(divisor[0]),
        .I3(divisor[1]),
        .O(counter0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h1111111111111118)) 
    counter0_carry_i_9
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .I2(divisor[2]),
        .I3(divisor[0]),
        .I4(divisor[1]),
        .I5(divisor[3]),
        .O(counter0_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counter1
       (.I0(divisor[2]),
        .I1(divisor[0]),
        .I2(divisor[1]),
        .I3(divisor[3]),
        .O(counter1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    counter1_rep
       (.I0(divisor[2]),
        .I1(divisor[0]),
        .I2(divisor[1]),
        .I3(divisor[3]),
        .O(counter1_rep_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter[0]_i_1 
       (.I0(counter0_carry__0_n_0),
        .I1(rstn),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_15 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 ,\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_8 ,\counter_reg[0]_i_2_n_9 ,\counter_reg[0]_i_2_n_10 ,\counter_reg[0]_i_2_n_11 ,\counter_reg[0]_i_2_n_12 ,\counter_reg[0]_i_2_n_13 ,\counter_reg[0]_i_2_n_14 ,\counter_reg[0]_i_2_n_15 }),
        .S({counter_reg[7:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_13 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_12 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_11 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_10 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_9 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_15 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[16]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 ,\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_8 ,\counter_reg[16]_i_1_n_9 ,\counter_reg[16]_i_1_n_10 ,\counter_reg[16]_i_1_n_11 ,\counter_reg[16]_i_1_n_12 ,\counter_reg[16]_i_1_n_13 ,\counter_reg[16]_i_1_n_14 ,\counter_reg[16]_i_1_n_15 }),
        .S(counter_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_14 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_13 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_12 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_14 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_11 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_10 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_9 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_15 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[24]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [7:3],\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [7:4],\counter_reg[24]_i_1_n_12 ,\counter_reg[24]_i_1_n_13 ,\counter_reg[24]_i_1_n_14 ,\counter_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,counter_reg[27:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_14 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_13 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_12 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_13 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_12 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_11 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_10 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_9 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_8 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_15 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[8]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 ,\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_8 ,\counter_reg[8]_i_1_n_9 ,\counter_reg[8]_i_1_n_10 ,\counter_reg[8]_i_1_n_11 ,\counter_reg[8]_i_1_n_12 ,\counter_reg[8]_i_1_n_13 ,\counter_reg[8]_i_1_n_14 ,\counter_reg[8]_i_1_n_15 }),
        .S(counter_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_14 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "seeg_zynq_clock_divider_0_0,clock_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clock_divider,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock_in,
    clock_out,
    rstn,
    divisor);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_in CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_in, FREQ_HZ 78000972, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seeg_zynq_clk_wiz_0_0_clk_78M, INSERT_VIP 0" *) input clock_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seeg_zynq_clock_divider_0_0_clock_out, INSERT_VIP 0" *) output clock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [3:0]divisor;

  wire clock_in;
  wire clock_out;
  wire [3:0]divisor;
  wire rstn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider inst
       (.clock_in(clock_in),
        .clock_out(clock_out),
        .divisor(divisor),
        .rstn(rstn));
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
