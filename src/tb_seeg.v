`timescale 1ns / 1ps

module tb_seeg ();


    reg clk = 0;
    reg rstn = 0;
    reg record_start = 0;
    reg record_stop = 0;
    reg zcheck_start = 0;
    reg [1:0] zcheck_scale = 2'b11;

    reg [15:0] stim_pulse_length = 2;
    reg [7:0] stim_pulse_magnitude = 100;
    reg [15:0] stim_inter_bipulse_delay = 3;
    reg [15:0] stim_inter_pulse_delay = 3;
    reg [15:0] stim_inter_train_delay = 12;
    reg [15:0] stim_bipulses_per_train_count = 4;
    reg [15:0] stim_train_count = 4;
    reg [15:0] stim_charge_recovery_time = 8;
    reg stim_rising_edge_first = 1;

    reg [15:0] stim_mask_channel_positive = 16'b0000000010000000;
    reg [15:0] stim_mask_channel_negative = 16'b1000000000000000;
    reg [15:0] stim_current_step_size = 4'd2;
    reg stim_bipolar_mode = 1;
    reg [15:0] stim_mask_probe_select = 16'b1001101011110000;

    reg stim_finite_mode_start = 0;
    reg stim_infinite_mode_start = 0;
    reg stim_infinite_mode_stop = 0;

    reg [7:0] oversample_offset = 0;

    reg loopback_mode = 1;

    seeg dut(
        .clk(clk),
        .rstn(rstn),
        .record_start(record_start),
        .record_stop(record_stop),
        .zcheck_start(zcheck_start),
        .zcheck_scale(zcheck_scale),

        .stim_pulse_length(stim_pulse_length),
        .stim_pulse_magnitude(stim_pulse_magnitude),
        .stim_inter_bipulse_delay(stim_inter_bipulse_delay),
        .stim_inter_pulse_delay(stim_inter_pulse_delay),
        .stim_inter_train_delay(stim_inter_train_delay),
        .stim_bipulses_per_train_count(stim_bipulses_per_train_count),
        .stim_train_count(stim_train_count),
        .stim_charge_recovery_time(stim_charge_recovery_time),
        .stim_rising_edge_first(stim_rising_edge_first),
        .stim_finite_mode_start(stim_finite_mode_start),
        .stim_infinite_mode_start(stim_infinite_mode_start),
        .stim_infinite_mode_stop(stim_infinite_mode_stop),
        .stim_mask_channel_positive(stim_mask_channel_positive),
        .stim_mask_channel_negative(stim_mask_channel_negative),
        .stim_current_step_size(stim_current_step_size),
        .stim_bipolar_mode(stim_bipolar_mode),
        .stim_mask_probe_select(stim_mask_probe_select),
        .loopback_mode(loopback_mode),

        .oversample_offset_A1(oversample_offset),
        .oversample_offset_A2(oversample_offset),
        .oversample_offset_B1(oversample_offset),
        .oversample_offset_B2(oversample_offset),
        .oversample_offset_C1(oversample_offset),
        .oversample_offset_C2(oversample_offset),
        .oversample_offset_D1(oversample_offset),
        .oversample_offset_D2(oversample_offset),
        .oversample_offset_E1(oversample_offset),
        .oversample_offset_E2(oversample_offset),
        .oversample_offset_F1(oversample_offset),
        .oversample_offset_F2(oversample_offset),
        .oversample_offset_G1(oversample_offset),
        .oversample_offset_G2(oversample_offset),
        .oversample_offset_H1(oversample_offset),
        .oversample_offset_H2(oversample_offset),
        .oversample_offset_I1(oversample_offset),
        .oversample_offset_I2(oversample_offset),
        .oversample_offset_J1(oversample_offset),
        .oversample_offset_J2(oversample_offset),
        .oversample_offset_K1(oversample_offset),
        .oversample_offset_K2(oversample_offset),
        .oversample_offset_L1(oversample_offset),
        .oversample_offset_L2(oversample_offset),
        .oversample_offset_M1(oversample_offset),
        .oversample_offset_M2(oversample_offset),
        .oversample_offset_N1(oversample_offset),
        .oversample_offset_N2(oversample_offset),
        .oversample_offset_O1(oversample_offset),
        .oversample_offset_O2(oversample_offset),
        .oversample_offset_P1(oversample_offset),
        .oversample_offset_P2(oversample_offset),

        .oversample_offset_A(oversample_offset),
        .oversample_offset_B(oversample_offset),
        .oversample_offset_C(oversample_offset),
        .oversample_offset_D(oversample_offset),
        .oversample_offset_E(oversample_offset),
        .oversample_offset_F(oversample_offset),
        .oversample_offset_G(oversample_offset),
        .oversample_offset_H(oversample_offset),
        .oversample_offset_I(oversample_offset),
        .oversample_offset_J(oversample_offset),
        .oversample_offset_K(oversample_offset),
        .oversample_offset_L(oversample_offset),
        .oversample_offset_M(oversample_offset),
        .oversample_offset_N(oversample_offset),
        .oversample_offset_O(oversample_offset),
        .oversample_offset_P(oversample_offset)
    );


    initial begin
        clk = 0;
        forever #12.82 clk = ~clk; //39 MHz
    end

    initial begin
        rstn <= 1;
        #500;
        rstn <= 0;
        #500;
        rstn <= 1;
        #500

        /*

        zcheck_start <= 1;
        #500
        zcheck_start <= 0;
        #1000000000;

        */
        

        /*
        
        record_start <= 1;
        #500
        record_start <= 0;
        #5000000
        stim_infinite_mode_start <= 1;
        #500
        stim_infinite_mode_start <= 0;
        #50000000
        stim_infinite_mode_stop <= 1;
        #500
        stim_infinite_mode_stop <= 0;
        #5000000
        record_stop <= 1;
        #500
        record_stop <= 0;
        #1000000

        */

        
        
        record_start <= 1;
        #500
        record_start <= 0;
        #5000000
        stim_finite_mode_start <= 1;
        #500
        stim_finite_mode_start <= 0;
        #50000000
        record_stop <= 1;
        #500
        record_stop <= 0;
        #1000000

        
        

        
        $finish;
    end


endmodule