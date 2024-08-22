`timescale 1ns / 1ps

module tb_rhd_spi_master ();


    reg clk;
    reg rstn;
    
    reg start = 0;
    reg [15:0] data_in = 16'hDEAD;

    reg [7:0] oversample_offset = 0;

    wire SCLK;
    wire MOSI;
    wire MISO;
    wire CS;
    reg [5:0] channel = 15;

    rhd_spi_master dut(
        .clk(clk),
        .rstn(rstn),
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO),
        .CS(CS),
        .start(start),
        .data_in(data_in),
        .oversample_offset(oversample_offset)
    );

    rhd_spi_slave dut_2(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO),
        .CS(CS),
        .channel(channel),
        .rstn(rstn),
        .clk(clk)
    );

    initial begin
        clk = 0;
        //forever #8.9285 clk = ~clk; //56 MHz
        forever #4.46 clk = ~clk; //112 MHz
    end

    initial begin
        rstn <= 1;
        #100;
        rstn <= 0;
        #100;
        rstn <= 1;
        #100
        start <= 1;
        #9000;
        start <= 0;
        #4000;
        $finish;
    end

    


endmodule