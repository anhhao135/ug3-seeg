`timescale 1ns / 1ps

module tb_rhd_2048 ();


    reg clk = 0;
    reg rstn = 0;

    reg config_start = 0;
    reg record_start = 0;
    reg zcheck_start = 0;

    reg [7:0] oversample_offset = 0;

    wire SCLK;
    wire MOSI;
    wire CS;

    wire [7:0] rhd_channel;

    rhd_2048 dut(
        .clk(clk),
        .rstn(rstn),
        .config_start(config_start),
        .record_start(record_start),
        .zcheck_start(zcheck_start),
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
        .channel_out(rhd_channel),
        .CS(CS),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .MISO1_A(MISO1_A)
    );

    rhd_spi_slave #(.STARTING_SEED(0)) A1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_A),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    initial begin
        clk = 0;
        forever #4.46 clk = ~clk; //112 MHz
    end

    initial begin
        rstn <= 1;
        #500;
        rstn <= 0;
        #500;
        rstn <= 1;
        #500
        record_start <= 1;
        #100
        record_start <= 0;
        #100000
        $finish;
    end

    


endmodule