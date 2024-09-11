// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 10 15:19:48 2024
// Host        : GramForGram running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/cable_delay_tester/ip/cable_delay_tester_rhd_spi_master_0_0/cable_delay_tester_rhd_spi_master_0_0_sim_netlist.v
// Design      : cable_delay_tester_rhd_spi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cable_delay_tester_rhd_spi_master_0_0,rhd_spi_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rhd_spi_master,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module cable_delay_tester_rhd_spi_master_0_0
   (MOSI,
    CS,
    SCLK,
    MISO,
    clk,
    busy,
    rstn,
    start,
    done,
    data_in,
    a_data_out,
    b_data_out,
    oversample_offset);
  output MOSI;
  output CS;
  output SCLK;
  input MISO;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 17996785, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cable_delay_tester_clk_wiz_0_0_clk_18M, INSERT_VIP 0" *) input clk;
  output busy;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input start;
  output done;
  input [15:0]data_in;
  output [15:0]a_data_out;
  output [15:0]b_data_out;
  input [7:0]oversample_offset;

  wire CS;
  wire MISO;
  wire MOSI;
  wire SCLK;
  wire [15:0]a_data_out;
  wire [15:0]b_data_out;
  wire busy;
  wire clk;
  wire [15:0]data_in;
  wire done;
  wire [7:0]oversample_offset;
  wire rstn;
  wire start;

  cable_delay_tester_rhd_spi_master_0_0_rhd_spi_master inst
       (.CS(CS),
        .MISO(MISO),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .a_data_out(a_data_out),
        .b_data_out(b_data_out),
        .busy(busy),
        .clk(clk),
        .data_in(data_in),
        .done(done),
        .oversample_offset(oversample_offset),
        .rstn(rstn),
        .start(start));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module cable_delay_tester_rhd_spi_master_0_0_clock_divider
   (SCLK,
    \FSM_sequential_state_reg[1] ,
    clk,
    Q,
    \counter_reg[0]_0 );
  output SCLK;
  output \FSM_sequential_state_reg[1] ;
  input clk;
  input [3:0]Q;
  input [2:0]\counter_reg[0]_0 ;

  wire \FSM_sequential_state_reg[1] ;
  wire [3:0]Q;
  wire SCLK;
  wire clk;
  wire clock_out_i_1_n_0;
  wire clock_out_i_2_n_0;
  wire clock_out_i_3_n_0;
  wire clock_out_i_4_n_0;
  wire clock_out_i_5_n_0;
  wire clock_out_i_6_n_0;
  wire clock_out_i_7_n_0;
  wire clock_out_i_8_n_0;
  wire clock_out_i_9_n_0;
  wire counter0_carry__0_i_10_n_0;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_i_5_n_0;
  wire counter0_carry__0_i_6_n_0;
  wire counter0_carry__0_i_7_n_0;
  wire counter0_carry__0_i_8_n_0;
  wire counter0_carry__0_i_9_n_0;
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
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire [27:0]counter_reg;
  wire [2:0]\counter_reg[0]_0 ;
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
  wire [7:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [7:5]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_counter0_carry__0_O_UNCONNECTED;
  wire [7:3]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000000080)) 
    clock_out_i_1
       (.I0(clock_out_i_2_n_0),
        .I1(clock_out_i_3_n_0),
        .I2(clock_out_i_4_n_0),
        .I3(counter_reg[2]),
        .I4(counter_reg[12]),
        .I5(counter_reg[13]),
        .O(clock_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clock_out_i_2
       (.I0(clock_out_i_5_n_0),
        .I1(counter_reg[11]),
        .I2(counter_reg[10]),
        .I3(counter_reg[9]),
        .I4(counter_reg[8]),
        .I5(clock_out_i_6_n_0),
        .O(clock_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clock_out_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .I2(counter_reg[24]),
        .I3(counter_reg[25]),
        .I4(counter_reg[27]),
        .I5(counter_reg[26]),
        .O(clock_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clock_out_i_4
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(clock_out_i_7_n_0),
        .I5(clock_out_i_8_n_0),
        .O(clock_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    clock_out_i_5
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\counter_reg[0]_0 [0]),
        .I5(clock_out_i_9_n_0),
        .O(clock_out_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clock_out_i_6
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(counter_reg[3]),
        .O(clock_out_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock_out_i_7
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(clock_out_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock_out_i_8
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(clock_out_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    clock_out_i_9
       (.I0(\counter_reg[0]_0 [2]),
        .I1(\counter_reg[0]_0 [1]),
        .O(clock_out_i_9_n_0));
  FDRE clock_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(clock_out_i_1_n_0),
        .Q(SCLK),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 counter0_carry
       (.CI(counter0_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0,counter0_carry_i_5_n_0,counter0_carry_i_6_n_0,counter0_carry_i_7_n_0,counter0_carry_i_8_n_0,counter_reg[3]}),
        .O(NLW_counter0_carry_O_UNCONNECTED[7:0]),
        .S({counter0_carry_i_9_n_0,counter0_carry_i_10_n_0,counter0_carry_i_11_n_0,counter0_carry_i_12_n_0,counter0_carry_i_13_n_0,counter0_carry_i_14_n_0,counter0_carry_i_15_n_0,counter0_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0_carry__0_CO_UNCONNECTED[7:5],counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0,counter0_carry__0_i_5_n_0}),
        .O(NLW_counter0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,counter0_carry__0_i_6_n_0,counter0_carry__0_i_7_n_0,counter0_carry__0_i_8_n_0,counter0_carry__0_i_9_n_0,counter0_carry__0_i_10_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_1
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(counter0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_10
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .O(counter0_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_2
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(counter0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(counter0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_4
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(counter0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_5
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(counter0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_6
       (.I0(counter_reg[27]),
        .I1(counter_reg[26]),
        .O(counter0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_7
       (.I0(counter_reg[25]),
        .I1(counter_reg[24]),
        .O(counter0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_8
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .O(counter0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_9
       (.I0(counter_reg[21]),
        .I1(counter_reg[20]),
        .O(counter0_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_1
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(counter0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_10
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .O(counter0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_11
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(counter0_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_12
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .O(counter0_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_13
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .O(counter0_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_14
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(counter0_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_15
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .O(counter0_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry_i_16
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(counter0_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_2
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(counter0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_3
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_4
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_5
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_6
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_7
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_8
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_9
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .O(counter0_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \counter[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(counter0_carry__0_n_3),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \counter[0]_i_3 
       (.I0(\counter_reg[0]_0 [1]),
        .I1(\counter_reg[0]_0 [2]),
        .I2(\counter_reg[0]_0 [0]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
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
        .S({counter_reg[7:1],\counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_13 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_12 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_11 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_10 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_9 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
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
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_14 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_13 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_12 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_14 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_11 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_10 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_9 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
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
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_14 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_13 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_12 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_13 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_12 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_11 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_10 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_9 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_8 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
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
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_14 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "rhd_spi_master" *) 
module cable_delay_tester_rhd_spi_master_0_0_rhd_spi_master
   (a_data_out,
    b_data_out,
    done,
    busy,
    MOSI,
    CS,
    SCLK,
    clk,
    start,
    rstn,
    oversample_offset,
    data_in,
    MISO);
  output [15:0]a_data_out;
  output [15:0]b_data_out;
  output done;
  output busy;
  output MOSI;
  output CS;
  output SCLK;
  input clk;
  input start;
  input rstn;
  input [7:0]oversample_offset;
  input [15:0]data_in;
  input MISO;

  wire CS;
  wire CS_i_1_n_0;
  wire CS_i_2_n_0;
  wire CS_i_3_n_0;
  wire CS_i_4_n_0;
  wire ClockDivideByEight_n_1;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire MISO;
  wire MOSI;
  wire MOSI_i_11_n_0;
  wire MOSI_i_12_n_0;
  wire MOSI_i_13_n_0;
  wire MOSI_i_14_n_0;
  wire MOSI_i_1_n_0;
  wire MOSI_i_2_n_0;
  wire MOSI_i_3_n_0;
  wire MOSI_i_4_n_0;
  wire MOSI_i_5_n_0;
  wire MOSI_i_6_n_0;
  wire MOSI_i_7_n_0;
  wire MOSI_i_8_n_0;
  wire MOSI_i_9_n_0;
  wire SCLK;
  wire [15:0]a_data_out;
  wire a_data_out1__2;
  wire a_data_out2;
  wire a_data_out2_carry__0_i_1_n_0;
  wire a_data_out2_carry__0_i_2_n_0;
  wire a_data_out2_carry__0_i_3_n_0;
  wire a_data_out2_carry__0_i_4_n_0;
  wire a_data_out2_carry__0_i_5_n_0;
  wire a_data_out2_carry__0_i_6_n_0;
  wire a_data_out2_carry__0_i_7_n_0;
  wire a_data_out2_carry__0_i_8_n_0;
  wire a_data_out2_carry__0_n_1;
  wire a_data_out2_carry__0_n_2;
  wire a_data_out2_carry__0_n_3;
  wire a_data_out2_carry__0_n_4;
  wire a_data_out2_carry__0_n_5;
  wire a_data_out2_carry__0_n_6;
  wire a_data_out2_carry__0_n_7;
  wire a_data_out2_carry_i_10_n_0;
  wire a_data_out2_carry_i_11_n_0;
  wire a_data_out2_carry_i_12_n_0;
  wire a_data_out2_carry_i_13_n_0;
  wire a_data_out2_carry_i_14_n_0;
  wire a_data_out2_carry_i_15_n_0;
  wire a_data_out2_carry_i_16_n_0;
  wire a_data_out2_carry_i_17_n_0;
  wire a_data_out2_carry_i_1_n_0;
  wire a_data_out2_carry_i_2_n_0;
  wire a_data_out2_carry_i_3_n_0;
  wire a_data_out2_carry_i_4_n_0;
  wire a_data_out2_carry_i_5_n_0;
  wire a_data_out2_carry_i_6_n_0;
  wire a_data_out2_carry_i_7_n_0;
  wire a_data_out2_carry_i_8_n_0;
  wire a_data_out2_carry_i_9_n_0;
  wire a_data_out2_carry_n_0;
  wire a_data_out2_carry_n_1;
  wire a_data_out2_carry_n_2;
  wire a_data_out2_carry_n_3;
  wire a_data_out2_carry_n_4;
  wire a_data_out2_carry_n_5;
  wire a_data_out2_carry_n_6;
  wire a_data_out2_carry_n_7;
  wire a_data_out3;
  wire a_data_out3_carry__0_i_1_n_0;
  wire a_data_out3_carry__0_i_2_n_0;
  wire a_data_out3_carry__0_i_3_n_0;
  wire a_data_out3_carry__0_i_4_n_0;
  wire a_data_out3_carry__0_i_5_n_0;
  wire a_data_out3_carry__0_i_6_n_0;
  wire a_data_out3_carry__0_i_7_n_0;
  wire a_data_out3_carry__0_i_8_n_0;
  wire a_data_out3_carry__0_n_1;
  wire a_data_out3_carry__0_n_2;
  wire a_data_out3_carry__0_n_3;
  wire a_data_out3_carry__0_n_4;
  wire a_data_out3_carry__0_n_5;
  wire a_data_out3_carry__0_n_6;
  wire a_data_out3_carry__0_n_7;
  wire a_data_out3_carry_i_10_n_0;
  wire a_data_out3_carry_i_11_n_0;
  wire a_data_out3_carry_i_12_n_0;
  wire a_data_out3_carry_i_13_n_0;
  wire a_data_out3_carry_i_14_n_0;
  wire a_data_out3_carry_i_15_n_0;
  wire a_data_out3_carry_i_16_n_0;
  wire a_data_out3_carry_i_17_n_0;
  wire a_data_out3_carry_i_18_n_0;
  wire a_data_out3_carry_i_1_n_0;
  wire a_data_out3_carry_i_2_n_0;
  wire a_data_out3_carry_i_3_n_0;
  wire a_data_out3_carry_i_4_n_0;
  wire a_data_out3_carry_i_5_n_0;
  wire a_data_out3_carry_i_6_n_0;
  wire a_data_out3_carry_i_7_n_0;
  wire a_data_out3_carry_i_8_n_0;
  wire a_data_out3_carry_i_9_n_0;
  wire a_data_out3_carry_n_0;
  wire a_data_out3_carry_n_1;
  wire a_data_out3_carry_n_2;
  wire a_data_out3_carry_n_3;
  wire a_data_out3_carry_n_4;
  wire a_data_out3_carry_n_5;
  wire a_data_out3_carry_n_6;
  wire a_data_out3_carry_n_7;
  wire \a_data_out[0]_i_1_n_0 ;
  wire \a_data_out[10]_i_1_n_0 ;
  wire \a_data_out[11]_i_1_n_0 ;
  wire \a_data_out[11]_i_2_n_0 ;
  wire \a_data_out[12]_i_1_n_0 ;
  wire \a_data_out[12]_i_2_n_0 ;
  wire \a_data_out[13]_i_1_n_0 ;
  wire \a_data_out[13]_i_2_n_0 ;
  wire \a_data_out[14]_i_1_n_0 ;
  wire \a_data_out[14]_i_2_n_0 ;
  wire \a_data_out[15]_i_1_n_0 ;
  wire \a_data_out[15]_i_2_n_0 ;
  wire \a_data_out[15]_i_3_n_0 ;
  wire \a_data_out[15]_i_4_n_0 ;
  wire \a_data_out[15]_i_5_n_0 ;
  wire \a_data_out[15]_i_6_n_0 ;
  wire \a_data_out[15]_i_7_n_0 ;
  wire \a_data_out[15]_i_8_n_0 ;
  wire \a_data_out[1]_i_1_n_0 ;
  wire \a_data_out[2]_i_1_n_0 ;
  wire \a_data_out[3]_i_1_n_0 ;
  wire \a_data_out[3]_i_2_n_0 ;
  wire \a_data_out[4]_i_1_n_0 ;
  wire \a_data_out[5]_i_1_n_0 ;
  wire \a_data_out[6]_i_1_n_0 ;
  wire \a_data_out[7]_i_1_n_0 ;
  wire \a_data_out[7]_i_2_n_0 ;
  wire \a_data_out[8]_i_1_n_0 ;
  wire \a_data_out[9]_i_1_n_0 ;
  wire [15:0]b_data_out;
  wire \b_data_out[0]_i_1_n_0 ;
  wire \b_data_out[10]_i_1_n_0 ;
  wire \b_data_out[11]_i_1_n_0 ;
  wire \b_data_out[12]_i_1_n_0 ;
  wire \b_data_out[13]_i_1_n_0 ;
  wire \b_data_out[14]_i_1_n_0 ;
  wire \b_data_out[15]_i_1_n_0 ;
  wire \b_data_out[15]_i_2_n_0 ;
  wire \b_data_out[1]_i_1_n_0 ;
  wire \b_data_out[2]_i_1_n_0 ;
  wire \b_data_out[3]_i_1_n_0 ;
  wire \b_data_out[4]_i_1_n_0 ;
  wire \b_data_out[5]_i_1_n_0 ;
  wire \b_data_out[6]_i_1_n_0 ;
  wire \b_data_out[7]_i_1_n_0 ;
  wire \b_data_out[8]_i_1_n_0 ;
  wire \b_data_out[9]_i_1_n_0 ;
  wire busy;
  wire clk;
  wire [8:0]clk_counter;
  wire \clk_counter[4]_i_2_n_0 ;
  wire \clk_counter[5]_i_2_n_0 ;
  wire \clk_counter[6]_i_2_n_0 ;
  wire \clk_counter[7]_i_2_n_0 ;
  wire \clk_counter[8]_i_1_n_0 ;
  wire \clk_counter[8]_i_3_n_0 ;
  wire \clk_counter[8]_i_4_n_0 ;
  wire \clk_counter_reg_n_0_[0] ;
  wire \clk_counter_reg_n_0_[1] ;
  wire \clk_counter_reg_n_0_[2] ;
  wire \clk_counter_reg_n_0_[3] ;
  wire \clk_counter_reg_n_0_[4] ;
  wire \clk_counter_reg_n_0_[5] ;
  wire \clk_counter_reg_n_0_[6] ;
  wire \clk_counter_reg_n_0_[7] ;
  wire \clk_counter_reg_n_0_[8] ;
  wire [15:0]data_in;
  wire done;
  wire [7:0]done_cs_hold_counter;
  wire \done_cs_hold_counter[7]_i_1_n_0 ;
  wire \done_cs_hold_counter[7]_i_3_n_0 ;
  wire \done_cs_hold_counter[7]_i_4_n_0 ;
  wire \done_cs_hold_counter_reg_n_0_[0] ;
  wire \done_cs_hold_counter_reg_n_0_[1] ;
  wire \done_cs_hold_counter_reg_n_0_[2] ;
  wire \done_cs_hold_counter_reg_n_0_[3] ;
  wire \done_cs_hold_counter_reg_n_0_[4] ;
  wire \done_cs_hold_counter_reg_n_0_[5] ;
  wire \done_cs_hold_counter_reg_n_0_[6] ;
  wire \done_cs_hold_counter_reg_n_0_[7] ;
  wire [4:0]index_sampled;
  wire \index_sampled[4]_i_1_n_0 ;
  wire \index_sampled[4]_i_3_n_0 ;
  wire \index_sampled_reg_n_0_[0] ;
  wire \index_sampled_reg_n_0_[1] ;
  wire \index_sampled_reg_n_0_[2] ;
  wire \index_sampled_reg_n_0_[3] ;
  wire \index_sampled_reg_n_0_[4] ;
  wire [7:0]oversample_offset;
  wire [7:0]padding_counter;
  wire \padding_counter[7]_i_1_n_0 ;
  wire \padding_counter[7]_i_3_n_0 ;
  wire \padding_counter_reg_n_0_[0] ;
  wire \padding_counter_reg_n_0_[1] ;
  wire \padding_counter_reg_n_0_[2] ;
  wire \padding_counter_reg_n_0_[3] ;
  wire \padding_counter_reg_n_0_[4] ;
  wire \padding_counter_reg_n_0_[5] ;
  wire \padding_counter_reg_n_0_[6] ;
  wire \padding_counter_reg_n_0_[7] ;
  wire rstn;
  wire [3:3]sel0;
  wire start;
  wire state;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire [7:0]NLW_a_data_out2_carry_O_UNCONNECTED;
  wire [7:0]NLW_a_data_out2_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_a_data_out3_carry_O_UNCONNECTED;
  wire [7:0]NLW_a_data_out3_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEEAFFFF222A0000)) 
    CS_i_1
       (.I0(CS_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(rstn),
        .I5(CS),
        .O(CS_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFAAFFAAFFAAFFAA)) 
    CS_i_2
       (.I0(CS_i_3_n_0),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[2] ),
        .I3(CS_i_4_n_0),
        .I4(\clk_counter_reg_n_0_[4] ),
        .I5(\clk_counter_reg_n_0_[3] ),
        .O(CS_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h43)) 
    CS_i_3
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(CS_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    CS_i_4
       (.I0(\clk_counter_reg_n_0_[8] ),
        .I1(\clk_counter_reg_n_0_[5] ),
        .I2(\clk_counter_reg_n_0_[6] ),
        .I3(\clk_counter_reg_n_0_[7] ),
        .I4(state__0[1]),
        .I5(state__0[2]),
        .O(CS_i_4_n_0));
  FDRE CS_reg
       (.C(clk),
        .CE(1'b1),
        .D(CS_i_1_n_0),
        .Q(CS),
        .R(1'b0));
  cable_delay_tester_rhd_spi_master_0_0_clock_divider ClockDivideByEight
       (.\FSM_sequential_state_reg[1] (ClockDivideByEight_n_1),
        .Q({\clk_counter_reg_n_0_[8] ,\clk_counter_reg_n_0_[7] ,\clk_counter_reg_n_0_[6] ,\clk_counter_reg_n_0_[5] }),
        .SCLK(SCLK),
        .clk(clk),
        .\counter_reg[0]_0 (state__0));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state__0[2]),
        .I2(start),
        .I3(\done_cs_hold_counter[7]_i_1_n_0 ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\padding_counter[7]_i_3_n_0 ),
        .I3(\padding_counter_reg_n_0_[7] ),
        .I4(\padding_counter_reg_n_0_[6] ),
        .I5(\padding_counter_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\clk_counter_reg_n_0_[7] ),
        .I1(\clk_counter_reg_n_0_[6] ),
        .I2(\clk_counter_reg_n_0_[5] ),
        .I3(\clk_counter_reg_n_0_[8] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\clk_counter_reg_n_0_[3] ),
        .I1(\clk_counter_reg_n_0_[4] ),
        .I2(\clk_counter_reg_n_0_[2] ),
        .I3(\clk_counter_reg_n_0_[1] ),
        .I4(\clk_counter_reg_n_0_[0] ),
        .I5(ClockDivideByEight_n_1),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(state__1[1]));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2000FFFF)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(state__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\padding_counter_reg_n_0_[5] ),
        .I1(\padding_counter_reg_n_0_[6] ),
        .I2(\padding_counter_reg_n_0_[7] ),
        .I3(\padding_counter[7]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(\done_cs_hold_counter_reg_n_0_[4] ),
        .I2(\done_cs_hold_counter_reg_n_0_[5] ),
        .I3(\done_cs_hold_counter_reg_n_0_[7] ),
        .I4(\done_cs_hold_counter_reg_n_0_[6] ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\done_cs_hold_counter_reg_n_0_[3] ),
        .I1(\done_cs_hold_counter_reg_n_0_[2] ),
        .I2(\done_cs_hold_counter_reg_n_0_[1] ),
        .I3(\done_cs_hold_counter_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "PRE_BUSY:001,BUSY:010,POST_BUSY:011,DONE:100,READY:000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(state),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(MOSI_i_1_n_0));
  (* FSM_ENCODED_STATES = "PRE_BUSY:001,BUSY:010,POST_BUSY:011,DONE:100,READY:000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(state),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(MOSI_i_1_n_0));
  (* FSM_ENCODED_STATES = "PRE_BUSY:001,BUSY:010,POST_BUSY:011,DONE:100,READY:000" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(state),
        .D(state__1[2]),
        .Q(state__0[2]),
        .R(MOSI_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    MOSI_i_1
       (.I0(rstn),
        .O(MOSI_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h95)) 
    MOSI_i_10
       (.I0(\clk_counter_reg_n_0_[6] ),
        .I1(\clk_counter[8]_i_4_n_0 ),
        .I2(\clk_counter_reg_n_0_[5] ),
        .O(sel0));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    MOSI_i_11
       (.I0(data_in[5]),
        .I1(data_in[3]),
        .I2(a_data_out3_carry_i_17_n_0),
        .I3(data_in[6]),
        .I4(\clk_counter[4]_i_2_n_0 ),
        .I5(data_in[4]),
        .O(MOSI_i_11_n_0));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    MOSI_i_12
       (.I0(data_in[1]),
        .I1(data_in[15]),
        .I2(a_data_out3_carry_i_17_n_0),
        .I3(data_in[2]),
        .I4(\clk_counter[4]_i_2_n_0 ),
        .I5(data_in[0]),
        .O(MOSI_i_12_n_0));
  LUT6 #(
    .INIT(64'hEEEDFEEFFEEFFEEF)) 
    MOSI_i_13
       (.I0(\clk_counter_reg_n_0_[6] ),
        .I1(\clk_counter_reg_n_0_[7] ),
        .I2(\clk_counter[8]_i_4_n_0 ),
        .I3(\clk_counter_reg_n_0_[5] ),
        .I4(\clk_counter[4]_i_2_n_0 ),
        .I5(a_data_out3_carry_i_17_n_0),
        .O(MOSI_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    MOSI_i_14
       (.I0(\clk_counter_reg_n_0_[2] ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(\clk_counter_reg_n_0_[1] ),
        .O(MOSI_i_14_n_0));
  LUT6 #(
    .INIT(64'hABAAFFFFABAA0000)) 
    MOSI_i_2
       (.I0(MOSI_i_3_n_0),
        .I1(MOSI_i_4_n_0),
        .I2(MOSI_i_5_n_0),
        .I3(\clk_counter[8]_i_1_n_0 ),
        .I4(MOSI_i_6_n_0),
        .I5(MOSI),
        .O(MOSI_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    MOSI_i_3
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(data_in[15]),
        .O(MOSI_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF4FF00FF00FF)) 
    MOSI_i_4
       (.I0(\clk_counter[4]_i_2_n_0 ),
        .I1(MOSI_i_7_n_0),
        .I2(MOSI_i_8_n_0),
        .I3(state__0[1]),
        .I4(MOSI_i_9_n_0),
        .I5(sel0),
        .O(MOSI_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0530)) 
    MOSI_i_5
       (.I0(MOSI_i_11_n_0),
        .I1(MOSI_i_12_n_0),
        .I2(\clk_counter[6]_i_2_n_0 ),
        .I3(\clk_counter[5]_i_2_n_0 ),
        .O(MOSI_i_5_n_0));
  LUT6 #(
    .INIT(64'h4747474757475757)) 
    MOSI_i_6
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(MOSI_i_13_n_0),
        .I4(\clk_counter[8]_i_3_n_0 ),
        .I5(MOSI_i_14_n_0),
        .O(MOSI_i_6_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    MOSI_i_7
       (.I0(data_in[13]),
        .I1(data_in[14]),
        .I2(\clk_counter[5]_i_2_n_0 ),
        .I3(data_in[9]),
        .I4(a_data_out3_carry_i_17_n_0),
        .I5(data_in[10]),
        .O(MOSI_i_7_n_0));
  LUT5 #(
    .INIT(32'h1D000000)) 
    MOSI_i_8
       (.I0(data_in[7]),
        .I1(\clk_counter[5]_i_2_n_0 ),
        .I2(data_in[11]),
        .I3(a_data_out3_carry_i_17_n_0),
        .I4(\clk_counter[4]_i_2_n_0 ),
        .O(MOSI_i_8_n_0));
  LUT5 #(
    .INIT(32'h00044404)) 
    MOSI_i_9
       (.I0(a_data_out3_carry_i_17_n_0),
        .I1(\clk_counter[4]_i_2_n_0 ),
        .I2(data_in[8]),
        .I3(\clk_counter[5]_i_2_n_0 ),
        .I4(data_in[12]),
        .O(MOSI_i_9_n_0));
  FDRE MOSI_reg
       (.C(clk),
        .CE(1'b1),
        .D(MOSI_i_2_n_0),
        .Q(MOSI),
        .R(MOSI_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 a_data_out2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({a_data_out2_carry_n_0,a_data_out2_carry_n_1,a_data_out2_carry_n_2,a_data_out2_carry_n_3,a_data_out2_carry_n_4,a_data_out2_carry_n_5,a_data_out2_carry_n_6,a_data_out2_carry_n_7}),
        .DI({a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_2_n_0,a_data_out2_carry_i_3_n_0,a_data_out2_carry_i_4_n_0,a_data_out2_carry_i_5_n_0,a_data_out2_carry_i_6_n_0}),
        .O(NLW_a_data_out2_carry_O_UNCONNECTED[7:0]),
        .S({a_data_out2_carry_i_7_n_0,a_data_out2_carry_i_8_n_0,a_data_out2_carry_i_9_n_0,a_data_out2_carry_i_10_n_0,a_data_out2_carry_i_11_n_0,a_data_out2_carry_i_12_n_0,a_data_out2_carry_i_13_n_0,a_data_out2_carry_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 a_data_out2_carry__0
       (.CI(a_data_out2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({a_data_out2,a_data_out2_carry__0_n_1,a_data_out2_carry__0_n_2,a_data_out2_carry__0_n_3,a_data_out2_carry__0_n_4,a_data_out2_carry__0_n_5,a_data_out2_carry__0_n_6,a_data_out2_carry__0_n_7}),
        .DI({a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0,a_data_out2_carry_i_1_n_0}),
        .O(NLW_a_data_out2_carry__0_O_UNCONNECTED[7:0]),
        .S({a_data_out2_carry__0_i_1_n_0,a_data_out2_carry__0_i_2_n_0,a_data_out2_carry__0_i_3_n_0,a_data_out2_carry__0_i_4_n_0,a_data_out2_carry__0_i_5_n_0,a_data_out2_carry__0_i_6_n_0,a_data_out2_carry__0_i_7_n_0,a_data_out2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_1
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_2
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_3
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_4
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_5
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_6
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_7
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry__0_i_8
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_data_out2_carry_i_1
       (.I0(a_data_out2_carry_i_15_n_0),
        .O(a_data_out2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    a_data_out2_carry_i_10
       (.I0(a_data_out2_carry_i_15_n_0),
        .I1(\clk_counter[8]_i_3_n_0 ),
        .O(a_data_out2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h6009606006600606)) 
    a_data_out2_carry_i_11
       (.I0(oversample_offset[7]),
        .I1(\clk_counter[7]_i_2_n_0 ),
        .I2(oversample_offset[6]),
        .I3(oversample_offset[5]),
        .I4(a_data_out2_carry_i_16_n_0),
        .I5(\clk_counter[6]_i_2_n_0 ),
        .O(a_data_out2_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0660606090060606)) 
    a_data_out2_carry_i_12
       (.I0(oversample_offset[5]),
        .I1(\clk_counter[5]_i_2_n_0 ),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(\clk_counter[4]_i_2_n_0 ),
        .O(a_data_out2_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'h60090660)) 
    a_data_out2_carry_i_13
       (.I0(oversample_offset[3]),
        .I1(a_data_out3_carry_i_17_n_0),
        .I2(oversample_offset[1]),
        .I3(oversample_offset[2]),
        .I4(a_data_out3_carry_i_18_n_0),
        .O(a_data_out2_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h8124)) 
    a_data_out2_carry_i_14
       (.I0(oversample_offset[0]),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[0] ),
        .I3(oversample_offset[1]),
        .O(a_data_out2_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry_i_15
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    a_data_out2_carry_i_16
       (.I0(oversample_offset[3]),
        .I1(oversample_offset[2]),
        .I2(oversample_offset[1]),
        .I3(oversample_offset[4]),
        .O(a_data_out2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    a_data_out2_carry_i_17
       (.I0(oversample_offset[2]),
        .I1(oversample_offset[1]),
        .O(a_data_out2_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_data_out2_carry_i_2
       (.I0(a_data_out2_carry_i_15_n_0),
        .O(a_data_out2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8EE48E8E88848888)) 
    a_data_out2_carry_i_3
       (.I0(oversample_offset[7]),
        .I1(\clk_counter[7]_i_2_n_0 ),
        .I2(oversample_offset[6]),
        .I3(oversample_offset[5]),
        .I4(a_data_out2_carry_i_16_n_0),
        .I5(\clk_counter[6]_i_2_n_0 ),
        .O(a_data_out2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hD88E8E8E48888888)) 
    a_data_out2_carry_i_4
       (.I0(oversample_offset[5]),
        .I1(\clk_counter[5]_i_2_n_0 ),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(\clk_counter[4]_i_2_n_0 ),
        .O(a_data_out2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h8EE48884)) 
    a_data_out2_carry_i_5
       (.I0(oversample_offset[3]),
        .I1(a_data_out3_carry_i_17_n_0),
        .I2(oversample_offset[1]),
        .I3(oversample_offset[2]),
        .I4(a_data_out3_carry_i_18_n_0),
        .O(a_data_out2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h4CD0)) 
    a_data_out2_carry_i_6
       (.I0(oversample_offset[0]),
        .I1(oversample_offset[1]),
        .I2(\clk_counter_reg_n_0_[0] ),
        .I3(\clk_counter_reg_n_0_[1] ),
        .O(a_data_out2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry_i_7
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry_i_8
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    a_data_out2_carry_i_9
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out2_carry_i_17_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out2_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 a_data_out3_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({a_data_out3_carry_n_0,a_data_out3_carry_n_1,a_data_out3_carry_n_2,a_data_out3_carry_n_3,a_data_out3_carry_n_4,a_data_out3_carry_n_5,a_data_out3_carry_n_6,a_data_out3_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,a_data_out3_carry_i_1_n_0,a_data_out3_carry_i_2_n_0,a_data_out3_carry_i_3_n_0,a_data_out3_carry_i_4_n_0,a_data_out3_carry_i_5_n_0}),
        .O(NLW_a_data_out3_carry_O_UNCONNECTED[7:0]),
        .S({a_data_out3_carry_i_6_n_0,a_data_out3_carry_i_7_n_0,a_data_out3_carry_i_8_n_0,a_data_out3_carry_i_9_n_0,a_data_out3_carry_i_10_n_0,a_data_out3_carry_i_11_n_0,a_data_out3_carry_i_12_n_0,a_data_out3_carry_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 a_data_out3_carry__0
       (.CI(a_data_out3_carry_n_0),
        .CI_TOP(1'b0),
        .CO({a_data_out3,a_data_out3_carry__0_n_1,a_data_out3_carry__0_n_2,a_data_out3_carry__0_n_3,a_data_out3_carry__0_n_4,a_data_out3_carry__0_n_5,a_data_out3_carry__0_n_6,a_data_out3_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_a_data_out3_carry__0_O_UNCONNECTED[7:0]),
        .S({a_data_out3_carry__0_i_1_n_0,a_data_out3_carry__0_i_2_n_0,a_data_out3_carry__0_i_3_n_0,a_data_out3_carry__0_i_4_n_0,a_data_out3_carry__0_i_5_n_0,a_data_out3_carry__0_i_6_n_0,a_data_out3_carry__0_i_7_n_0,a_data_out3_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_1
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_2
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_3
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_4
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_5
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_6
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_7
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry__0_i_8
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    a_data_out3_carry_i_1
       (.I0(a_data_out3_carry_i_14_n_0),
        .I1(\clk_counter[8]_i_3_n_0 ),
        .O(a_data_out3_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    a_data_out3_carry_i_10
       (.I0(oversample_offset[7]),
        .I1(\clk_counter[7]_i_2_n_0 ),
        .I2(oversample_offset[6]),
        .I3(a_data_out3_carry_i_15_n_0),
        .I4(\clk_counter[6]_i_2_n_0 ),
        .O(a_data_out3_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h6006606006900606)) 
    a_data_out3_carry_i_11
       (.I0(oversample_offset[5]),
        .I1(\clk_counter[5]_i_2_n_0 ),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(\clk_counter[4]_i_2_n_0 ),
        .O(a_data_out3_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h6600600900660660)) 
    a_data_out3_carry_i_12
       (.I0(oversample_offset[3]),
        .I1(a_data_out3_carry_i_17_n_0),
        .I2(oversample_offset[0]),
        .I3(oversample_offset[2]),
        .I4(oversample_offset[1]),
        .I5(a_data_out3_carry_i_18_n_0),
        .O(a_data_out3_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    a_data_out3_carry_i_13
       (.I0(oversample_offset[0]),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(oversample_offset[1]),
        .I3(\clk_counter_reg_n_0_[1] ),
        .O(a_data_out3_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry_i_14
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    a_data_out3_carry_i_15
       (.I0(oversample_offset[5]),
        .I1(oversample_offset[4]),
        .I2(oversample_offset[0]),
        .I3(oversample_offset[2]),
        .I4(oversample_offset[1]),
        .I5(oversample_offset[3]),
        .O(a_data_out3_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    a_data_out3_carry_i_16
       (.I0(oversample_offset[1]),
        .I1(oversample_offset[2]),
        .I2(oversample_offset[0]),
        .O(a_data_out3_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    a_data_out3_carry_i_17
       (.I0(\clk_counter_reg_n_0_[2] ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(\clk_counter_reg_n_0_[1] ),
        .I3(\clk_counter_reg_n_0_[3] ),
        .O(a_data_out3_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    a_data_out3_carry_i_18
       (.I0(\clk_counter_reg_n_0_[1] ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(\clk_counter_reg_n_0_[2] ),
        .O(a_data_out3_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'h2221B227)) 
    a_data_out3_carry_i_2
       (.I0(oversample_offset[7]),
        .I1(\clk_counter[7]_i_2_n_0 ),
        .I2(oversample_offset[6]),
        .I3(a_data_out3_carry_i_15_n_0),
        .I4(\clk_counter[6]_i_2_n_0 ),
        .O(a_data_out3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h1121111171277171)) 
    a_data_out3_carry_i_3
       (.I0(oversample_offset[5]),
        .I1(\clk_counter[5]_i_2_n_0 ),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(\clk_counter[4]_i_2_n_0 ),
        .O(a_data_out3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h111111127711711B)) 
    a_data_out3_carry_i_4
       (.I0(oversample_offset[3]),
        .I1(a_data_out3_carry_i_17_n_0),
        .I2(oversample_offset[0]),
        .I3(oversample_offset[2]),
        .I4(oversample_offset[1]),
        .I5(a_data_out3_carry_i_18_n_0),
        .O(a_data_out3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h901D)) 
    a_data_out3_carry_i_5
       (.I0(\clk_counter_reg_n_0_[0] ),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(oversample_offset[1]),
        .I3(oversample_offset[0]),
        .O(a_data_out3_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry_i_6
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry_i_7
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000011011111)) 
    a_data_out3_carry_i_8
       (.I0(oversample_offset[6]),
        .I1(oversample_offset[5]),
        .I2(oversample_offset[4]),
        .I3(a_data_out3_carry_i_16_n_0),
        .I4(oversample_offset[3]),
        .I5(oversample_offset[7]),
        .O(a_data_out3_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    a_data_out3_carry_i_9
       (.I0(a_data_out3_carry_i_14_n_0),
        .I1(\clk_counter[8]_i_3_n_0 ),
        .O(a_data_out3_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[0]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[0]),
        .O(\a_data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[10]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[10]),
        .O(\a_data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[11]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[11]),
        .O(\a_data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFBBBBF)) 
    \a_data_out[11]_i_2 
       (.I0(\index_sampled_reg_n_0_[4] ),
        .I1(\index_sampled_reg_n_0_[3] ),
        .I2(\index_sampled_reg_n_0_[1] ),
        .I3(\index_sampled_reg_n_0_[0] ),
        .I4(\index_sampled_reg_n_0_[2] ),
        .O(\a_data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[12]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[12]),
        .O(\a_data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \a_data_out[12]_i_2 
       (.I0(\index_sampled_reg_n_0_[1] ),
        .I1(\index_sampled_reg_n_0_[0] ),
        .O(\a_data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[13]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[13]),
        .O(\a_data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a_data_out[13]_i_2 
       (.I0(\index_sampled_reg_n_0_[1] ),
        .I1(\index_sampled_reg_n_0_[0] ),
        .O(\a_data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[14]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[14]),
        .O(\a_data_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_data_out[14]_i_2 
       (.I0(\index_sampled_reg_n_0_[1] ),
        .I1(\index_sampled_reg_n_0_[0] ),
        .O(\a_data_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[15]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[15]),
        .O(\a_data_out[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \a_data_out[15]_i_2 
       (.I0(MISO),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\a_data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBBBFFFFD)) 
    \a_data_out[15]_i_3 
       (.I0(\index_sampled_reg_n_0_[4] ),
        .I1(\index_sampled_reg_n_0_[3] ),
        .I2(\index_sampled_reg_n_0_[1] ),
        .I3(\index_sampled_reg_n_0_[0] ),
        .I4(\index_sampled_reg_n_0_[2] ),
        .O(\a_data_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \a_data_out[15]_i_4 
       (.I0(\index_sampled_reg_n_0_[1] ),
        .I1(\index_sampled_reg_n_0_[0] ),
        .O(\a_data_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \a_data_out[15]_i_5 
       (.I0(ClockDivideByEight_n_1),
        .I1(\a_data_out[15]_i_7_n_0 ),
        .I2(a_data_out2),
        .I3(a_data_out3),
        .I4(\a_data_out[15]_i_8_n_0 ),
        .I5(\index_sampled[4]_i_3_n_0 ),
        .O(\a_data_out[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \a_data_out[15]_i_6 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\a_data_out[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \a_data_out[15]_i_7 
       (.I0(oversample_offset[0]),
        .I1(\clk_counter_reg_n_0_[0] ),
        .O(\a_data_out[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h36C9)) 
    \a_data_out[15]_i_8 
       (.I0(oversample_offset[0]),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[0] ),
        .I3(oversample_offset[1]),
        .O(\a_data_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[1]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[1]),
        .O(\a_data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[2]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[2]),
        .O(\a_data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[3]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[3]),
        .O(\a_data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEB)) 
    \a_data_out[3]_i_2 
       (.I0(\index_sampled_reg_n_0_[4] ),
        .I1(\index_sampled_reg_n_0_[2] ),
        .I2(\index_sampled_reg_n_0_[0] ),
        .I3(\index_sampled_reg_n_0_[1] ),
        .I4(\index_sampled_reg_n_0_[3] ),
        .O(\a_data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[4]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[4]),
        .O(\a_data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[5]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[5]),
        .O(\a_data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[6]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[6]),
        .O(\a_data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[7]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[7]),
        .O(\a_data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFEBBBF)) 
    \a_data_out[7]_i_2 
       (.I0(\index_sampled_reg_n_0_[4] ),
        .I1(\index_sampled_reg_n_0_[2] ),
        .I2(\index_sampled_reg_n_0_[0] ),
        .I3(\index_sampled_reg_n_0_[1] ),
        .I4(\index_sampled_reg_n_0_[3] ),
        .O(\a_data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[8]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[8]),
        .O(\a_data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \a_data_out[9]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\a_data_out[15]_i_5_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(a_data_out[9]),
        .O(\a_data_out[9]_i_1_n_0 ));
  FDRE \a_data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[0]_i_1_n_0 ),
        .Q(a_data_out[0]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[10]_i_1_n_0 ),
        .Q(a_data_out[10]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[11]_i_1_n_0 ),
        .Q(a_data_out[11]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[12]_i_1_n_0 ),
        .Q(a_data_out[12]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[13]_i_1_n_0 ),
        .Q(a_data_out[13]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[14]_i_1_n_0 ),
        .Q(a_data_out[14]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[15]_i_1_n_0 ),
        .Q(a_data_out[15]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[1]_i_1_n_0 ),
        .Q(a_data_out[1]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[2]_i_1_n_0 ),
        .Q(a_data_out[2]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[3]_i_1_n_0 ),
        .Q(a_data_out[3]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[4]_i_1_n_0 ),
        .Q(a_data_out[4]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[5]_i_1_n_0 ),
        .Q(a_data_out[5]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[6]_i_1_n_0 ),
        .Q(a_data_out[6]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[7]_i_1_n_0 ),
        .Q(a_data_out[7]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[8]_i_1_n_0 ),
        .Q(a_data_out[8]),
        .R(MOSI_i_1_n_0));
  FDRE \a_data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\a_data_out[9]_i_1_n_0 ),
        .Q(a_data_out[9]),
        .R(MOSI_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[0]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[0]),
        .O(\b_data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[10]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[10]),
        .O(\b_data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[11]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[11]),
        .O(\b_data_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[12]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[12]),
        .O(\b_data_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[13]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[13]),
        .O(\b_data_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[14]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[14]),
        .O(\b_data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[15]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[15]_i_3_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[15]),
        .O(\b_data_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \b_data_out[15]_i_2 
       (.I0(ClockDivideByEight_n_1),
        .I1(\a_data_out[15]_i_7_n_0 ),
        .I2(a_data_out2),
        .I3(a_data_out3),
        .I4(\a_data_out[15]_i_8_n_0 ),
        .I5(\index_sampled[4]_i_3_n_0 ),
        .O(\b_data_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[1]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[1]),
        .O(\b_data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[2]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[2]),
        .O(\b_data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[3]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[3]_i_2_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[3]),
        .O(\b_data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[4]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[4]),
        .O(\b_data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[5]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[5]),
        .O(\b_data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[6]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[14]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[6]),
        .O(\b_data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[7]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[7]_i_2_n_0 ),
        .I2(\a_data_out[15]_i_4_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[7]),
        .O(\b_data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[8]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[12]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[8]),
        .O(\b_data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    \b_data_out[9]_i_1 
       (.I0(\a_data_out[15]_i_2_n_0 ),
        .I1(\a_data_out[11]_i_2_n_0 ),
        .I2(\a_data_out[13]_i_2_n_0 ),
        .I3(\b_data_out[15]_i_2_n_0 ),
        .I4(\a_data_out[15]_i_6_n_0 ),
        .I5(b_data_out[9]),
        .O(\b_data_out[9]_i_1_n_0 ));
  FDRE \b_data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[0]_i_1_n_0 ),
        .Q(b_data_out[0]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[10]_i_1_n_0 ),
        .Q(b_data_out[10]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[11]_i_1_n_0 ),
        .Q(b_data_out[11]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[12]_i_1_n_0 ),
        .Q(b_data_out[12]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[13]_i_1_n_0 ),
        .Q(b_data_out[13]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[14]_i_1_n_0 ),
        .Q(b_data_out[14]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[15]_i_1_n_0 ),
        .Q(b_data_out[15]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[1]_i_1_n_0 ),
        .Q(b_data_out[1]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[2]_i_1_n_0 ),
        .Q(b_data_out[2]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[3]_i_1_n_0 ),
        .Q(b_data_out[3]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[4]_i_1_n_0 ),
        .Q(b_data_out[4]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[5]_i_1_n_0 ),
        .Q(b_data_out[5]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[6]_i_1_n_0 ),
        .Q(b_data_out[6]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[7]_i_1_n_0 ),
        .Q(b_data_out[7]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[8]_i_1_n_0 ),
        .Q(b_data_out[8]),
        .R(MOSI_i_1_n_0));
  FDRE \b_data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\b_data_out[9]_i_1_n_0 ),
        .Q(b_data_out[9]),
        .R(MOSI_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    busy_INST_0
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(busy));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clk_counter[0]_i_1 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .I1(state__0[1]),
        .O(clk_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \clk_counter[1]_i_1 
       (.I0(state__0[1]),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[0] ),
        .O(clk_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE1FF)) 
    \clk_counter[2]_i_1 
       (.I0(\clk_counter_reg_n_0_[1] ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(\clk_counter_reg_n_0_[2] ),
        .I3(state__0[1]),
        .O(clk_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \clk_counter[3]_i_1 
       (.I0(\clk_counter_reg_n_0_[2] ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(\clk_counter_reg_n_0_[1] ),
        .I3(\clk_counter_reg_n_0_[3] ),
        .I4(state__0[1]),
        .O(clk_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clk_counter[4]_i_1 
       (.I0(\clk_counter[4]_i_2_n_0 ),
        .I1(state__0[1]),
        .O(clk_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \clk_counter[4]_i_2 
       (.I0(\clk_counter_reg_n_0_[3] ),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[0] ),
        .I3(\clk_counter_reg_n_0_[2] ),
        .I4(\clk_counter_reg_n_0_[4] ),
        .O(\clk_counter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_counter[5]_i_1 
       (.I0(state__0[1]),
        .I1(\clk_counter[5]_i_2_n_0 ),
        .O(clk_counter[5]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \clk_counter[5]_i_2 
       (.I0(\clk_counter_reg_n_0_[4] ),
        .I1(\clk_counter_reg_n_0_[2] ),
        .I2(\clk_counter_reg_n_0_[0] ),
        .I3(\clk_counter_reg_n_0_[1] ),
        .I4(\clk_counter_reg_n_0_[3] ),
        .I5(\clk_counter_reg_n_0_[5] ),
        .O(\clk_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_counter[6]_i_1 
       (.I0(state__0[1]),
        .I1(\clk_counter[6]_i_2_n_0 ),
        .O(clk_counter[6]));
  LUT3 #(
    .INIT(8'h1E)) 
    \clk_counter[6]_i_2 
       (.I0(\clk_counter_reg_n_0_[5] ),
        .I1(\clk_counter[8]_i_4_n_0 ),
        .I2(\clk_counter_reg_n_0_[6] ),
        .O(\clk_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clk_counter[7]_i_1 
       (.I0(\clk_counter[7]_i_2_n_0 ),
        .I1(state__0[1]),
        .O(clk_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \clk_counter[7]_i_2 
       (.I0(\clk_counter[8]_i_4_n_0 ),
        .I1(\clk_counter_reg_n_0_[6] ),
        .I2(\clk_counter_reg_n_0_[5] ),
        .I3(\clk_counter_reg_n_0_[7] ),
        .O(\clk_counter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_counter[8]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(\clk_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_counter[8]_i_2 
       (.I0(state__0[1]),
        .I1(\clk_counter[8]_i_3_n_0 ),
        .O(clk_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \clk_counter[8]_i_3 
       (.I0(\clk_counter[8]_i_4_n_0 ),
        .I1(\clk_counter_reg_n_0_[5] ),
        .I2(\clk_counter_reg_n_0_[6] ),
        .I3(\clk_counter_reg_n_0_[7] ),
        .I4(\clk_counter_reg_n_0_[8] ),
        .O(\clk_counter[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_counter[8]_i_4 
       (.I0(\clk_counter_reg_n_0_[3] ),
        .I1(\clk_counter_reg_n_0_[1] ),
        .I2(\clk_counter_reg_n_0_[0] ),
        .I3(\clk_counter_reg_n_0_[2] ),
        .I4(\clk_counter_reg_n_0_[4] ),
        .O(\clk_counter[8]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \clk_counter_reg[0] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[0]),
        .Q(\clk_counter_reg_n_0_[0] ),
        .S(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[1]),
        .Q(\clk_counter_reg_n_0_[1] ),
        .R(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \clk_counter_reg[2] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[2]),
        .Q(\clk_counter_reg_n_0_[2] ),
        .S(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \clk_counter_reg[3] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[3]),
        .Q(\clk_counter_reg_n_0_[3] ),
        .S(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \clk_counter_reg[4] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[4]),
        .Q(\clk_counter_reg_n_0_[4] ),
        .S(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[5]),
        .Q(\clk_counter_reg_n_0_[5] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[6]),
        .Q(\clk_counter_reg_n_0_[6] ),
        .R(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \clk_counter_reg[7] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[7]),
        .Q(\clk_counter_reg_n_0_[7] ),
        .S(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(clk),
        .CE(\clk_counter[8]_i_1_n_0 ),
        .D(clk_counter[8]),
        .Q(\clk_counter_reg_n_0_[8] ),
        .R(MOSI_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    done_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \done_cs_hold_counter[0]_i_1 
       (.I0(\done_cs_hold_counter[7]_i_4_n_0 ),
        .I1(\done_cs_hold_counter_reg_n_0_[0] ),
        .O(done_cs_hold_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \done_cs_hold_counter[1]_i_1 
       (.I0(\done_cs_hold_counter_reg_n_0_[1] ),
        .I1(\done_cs_hold_counter_reg_n_0_[0] ),
        .I2(\done_cs_hold_counter[7]_i_4_n_0 ),
        .O(done_cs_hold_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \done_cs_hold_counter[2]_i_1 
       (.I0(\done_cs_hold_counter_reg_n_0_[0] ),
        .I1(\done_cs_hold_counter_reg_n_0_[1] ),
        .I2(\done_cs_hold_counter_reg_n_0_[2] ),
        .I3(\done_cs_hold_counter[7]_i_4_n_0 ),
        .O(done_cs_hold_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \done_cs_hold_counter[3]_i_1 
       (.I0(\done_cs_hold_counter_reg_n_0_[2] ),
        .I1(\done_cs_hold_counter_reg_n_0_[1] ),
        .I2(\done_cs_hold_counter_reg_n_0_[0] ),
        .I3(\done_cs_hold_counter_reg_n_0_[3] ),
        .I4(\done_cs_hold_counter[7]_i_4_n_0 ),
        .O(done_cs_hold_counter[3]));
  LUT3 #(
    .INIT(8'hEB)) 
    \done_cs_hold_counter[4]_i_1 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(\done_cs_hold_counter[7]_i_3_n_0 ),
        .I2(\done_cs_hold_counter_reg_n_0_[4] ),
        .O(done_cs_hold_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \done_cs_hold_counter[5]_i_1 
       (.I0(\done_cs_hold_counter_reg_n_0_[4] ),
        .I1(\done_cs_hold_counter[7]_i_3_n_0 ),
        .I2(\done_cs_hold_counter_reg_n_0_[5] ),
        .I3(\done_cs_hold_counter[7]_i_4_n_0 ),
        .O(done_cs_hold_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \done_cs_hold_counter[6]_i_1 
       (.I0(\done_cs_hold_counter_reg_n_0_[5] ),
        .I1(\done_cs_hold_counter[7]_i_3_n_0 ),
        .I2(\done_cs_hold_counter_reg_n_0_[4] ),
        .I3(\done_cs_hold_counter_reg_n_0_[6] ),
        .I4(\done_cs_hold_counter[7]_i_4_n_0 ),
        .O(done_cs_hold_counter[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \done_cs_hold_counter[7]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\done_cs_hold_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000010000)) 
    \done_cs_hold_counter[7]_i_2 
       (.I0(\done_cs_hold_counter_reg_n_0_[5] ),
        .I1(\done_cs_hold_counter[7]_i_3_n_0 ),
        .I2(\done_cs_hold_counter_reg_n_0_[4] ),
        .I3(\done_cs_hold_counter_reg_n_0_[6] ),
        .I4(\done_cs_hold_counter[7]_i_4_n_0 ),
        .I5(\done_cs_hold_counter_reg_n_0_[7] ),
        .O(done_cs_hold_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \done_cs_hold_counter[7]_i_3 
       (.I0(\done_cs_hold_counter_reg_n_0_[2] ),
        .I1(\done_cs_hold_counter_reg_n_0_[1] ),
        .I2(\done_cs_hold_counter_reg_n_0_[0] ),
        .I3(\done_cs_hold_counter_reg_n_0_[3] ),
        .O(\done_cs_hold_counter[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \done_cs_hold_counter[7]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\done_cs_hold_counter[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[0] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[0]),
        .Q(\done_cs_hold_counter_reg_n_0_[0] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[1] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[1]),
        .Q(\done_cs_hold_counter_reg_n_0_[1] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[2] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[2]),
        .Q(\done_cs_hold_counter_reg_n_0_[2] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[3] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[3]),
        .Q(\done_cs_hold_counter_reg_n_0_[3] ),
        .R(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \done_cs_hold_counter_reg[4] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[4]),
        .Q(\done_cs_hold_counter_reg_n_0_[4] ),
        .S(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[5] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[5]),
        .Q(\done_cs_hold_counter_reg_n_0_[5] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[6] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[6]),
        .Q(\done_cs_hold_counter_reg_n_0_[6] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \done_cs_hold_counter_reg[7] 
       (.C(clk),
        .CE(\done_cs_hold_counter[7]_i_1_n_0 ),
        .D(done_cs_hold_counter[7]),
        .Q(\done_cs_hold_counter_reg_n_0_[7] ),
        .R(MOSI_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \index_sampled[0]_i_1 
       (.I0(state__0[1]),
        .I1(\index_sampled_reg_n_0_[0] ),
        .O(index_sampled[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \index_sampled[1]_i_1 
       (.I0(state__0[1]),
        .I1(\index_sampled_reg_n_0_[1] ),
        .I2(\index_sampled_reg_n_0_[0] ),
        .O(index_sampled[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    \index_sampled[2]_i_1 
       (.I0(state__0[1]),
        .I1(\index_sampled_reg_n_0_[2] ),
        .I2(\index_sampled_reg_n_0_[0] ),
        .I3(\index_sampled_reg_n_0_[1] ),
        .O(index_sampled[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAA90000)) 
    \index_sampled[3]_i_1 
       (.I0(\index_sampled_reg_n_0_[3] ),
        .I1(\index_sampled_reg_n_0_[1] ),
        .I2(\index_sampled_reg_n_0_[0] ),
        .I3(\index_sampled_reg_n_0_[2] ),
        .I4(state__0[1]),
        .O(index_sampled[3]));
  LUT5 #(
    .INIT(32'h0000080F)) 
    \index_sampled[4]_i_1 
       (.I0(\index_sampled[4]_i_3_n_0 ),
        .I1(a_data_out1__2),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(\index_sampled[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0001FFFFFFFF)) 
    \index_sampled[4]_i_2 
       (.I0(\index_sampled_reg_n_0_[3] ),
        .I1(\index_sampled_reg_n_0_[1] ),
        .I2(\index_sampled_reg_n_0_[0] ),
        .I3(\index_sampled_reg_n_0_[2] ),
        .I4(\index_sampled_reg_n_0_[4] ),
        .I5(state__0[1]),
        .O(index_sampled[4]));
  LUT6 #(
    .INIT(64'hF99FFFFFFFFF9FF9)) 
    \index_sampled[4]_i_3 
       (.I0(oversample_offset[0]),
        .I1(\clk_counter_reg_n_0_[0] ),
        .I2(oversample_offset[2]),
        .I3(\clk_counter_reg_n_0_[2] ),
        .I4(\clk_counter_reg_n_0_[1] ),
        .I5(oversample_offset[1]),
        .O(\index_sampled[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000880000800)) 
    \index_sampled[4]_i_4 
       (.I0(a_data_out2),
        .I1(a_data_out3),
        .I2(oversample_offset[1]),
        .I3(\clk_counter_reg_n_0_[0] ),
        .I4(\clk_counter_reg_n_0_[1] ),
        .I5(oversample_offset[0]),
        .O(a_data_out1__2));
  FDRE #(
    .INIT(1'b0)) 
    \index_sampled_reg[0] 
       (.C(clk),
        .CE(\index_sampled[4]_i_1_n_0 ),
        .D(index_sampled[0]),
        .Q(\index_sampled_reg_n_0_[0] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \index_sampled_reg[1] 
       (.C(clk),
        .CE(\index_sampled[4]_i_1_n_0 ),
        .D(index_sampled[1]),
        .Q(\index_sampled_reg_n_0_[1] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \index_sampled_reg[2] 
       (.C(clk),
        .CE(\index_sampled[4]_i_1_n_0 ),
        .D(index_sampled[2]),
        .Q(\index_sampled_reg_n_0_[2] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \index_sampled_reg[3] 
       (.C(clk),
        .CE(\index_sampled[4]_i_1_n_0 ),
        .D(index_sampled[3]),
        .Q(\index_sampled_reg_n_0_[3] ),
        .R(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \index_sampled_reg[4] 
       (.C(clk),
        .CE(\index_sampled[4]_i_1_n_0 ),
        .D(index_sampled[4]),
        .Q(\index_sampled_reg_n_0_[4] ),
        .S(MOSI_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \padding_counter[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\padding_counter_reg_n_0_[0] ),
        .O(padding_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \padding_counter[1]_i_1 
       (.I0(\padding_counter_reg_n_0_[1] ),
        .I1(\padding_counter_reg_n_0_[0] ),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(padding_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \padding_counter[2]_i_1 
       (.I0(\padding_counter_reg_n_0_[0] ),
        .I1(\padding_counter_reg_n_0_[1] ),
        .I2(\padding_counter_reg_n_0_[2] ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(padding_counter[2]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFF01FFFF)) 
    \padding_counter[3]_i_1 
       (.I0(\padding_counter_reg_n_0_[0] ),
        .I1(\padding_counter_reg_n_0_[1] ),
        .I2(\padding_counter_reg_n_0_[2] ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state__0[0]),
        .I5(\padding_counter_reg_n_0_[3] ),
        .O(padding_counter[3]));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \padding_counter[4]_i_1 
       (.I0(\padding_counter_reg_n_0_[3] ),
        .I1(\padding_counter_reg_n_0_[0] ),
        .I2(\padding_counter_reg_n_0_[1] ),
        .I3(\padding_counter_reg_n_0_[2] ),
        .I4(\padding_counter_reg_n_0_[4] ),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(padding_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h90909080)) 
    \padding_counter[5]_i_1 
       (.I0(\padding_counter[7]_i_3_n_0 ),
        .I1(\padding_counter_reg_n_0_[5] ),
        .I2(state__0[0]),
        .I3(\padding_counter_reg_n_0_[7] ),
        .I4(\padding_counter_reg_n_0_[6] ),
        .O(padding_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE100E000)) 
    \padding_counter[6]_i_1 
       (.I0(\padding_counter_reg_n_0_[5] ),
        .I1(\padding_counter[7]_i_3_n_0 ),
        .I2(\padding_counter_reg_n_0_[6] ),
        .I3(state__0[0]),
        .I4(\padding_counter_reg_n_0_[7] ),
        .O(padding_counter[6]));
  LUT3 #(
    .INIT(8'h31)) 
    \padding_counter[7]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\padding_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \padding_counter[7]_i_2 
       (.I0(\padding_counter_reg_n_0_[5] ),
        .I1(\padding_counter[7]_i_3_n_0 ),
        .I2(\padding_counter_reg_n_0_[6] ),
        .I3(state__0[0]),
        .I4(\padding_counter_reg_n_0_[7] ),
        .O(padding_counter[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \padding_counter[7]_i_3 
       (.I0(\padding_counter_reg_n_0_[3] ),
        .I1(\padding_counter_reg_n_0_[0] ),
        .I2(\padding_counter_reg_n_0_[1] ),
        .I3(\padding_counter_reg_n_0_[2] ),
        .I4(\padding_counter_reg_n_0_[4] ),
        .O(\padding_counter[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[0] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[0]),
        .Q(\padding_counter_reg_n_0_[0] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[1] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[1]),
        .Q(\padding_counter_reg_n_0_[1] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[2] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[2]),
        .Q(\padding_counter_reg_n_0_[2] ),
        .R(MOSI_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \padding_counter_reg[3] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[3]),
        .Q(\padding_counter_reg_n_0_[3] ),
        .S(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[4] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[4]),
        .Q(\padding_counter_reg_n_0_[4] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[5] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[5]),
        .Q(\padding_counter_reg_n_0_[5] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[6] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[6]),
        .Q(\padding_counter_reg_n_0_[6] ),
        .R(MOSI_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \padding_counter_reg[7] 
       (.C(clk),
        .CE(\padding_counter[7]_i_1_n_0 ),
        .D(padding_counter[7]),
        .Q(\padding_counter_reg_n_0_[7] ),
        .R(MOSI_i_1_n_0));
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
