`timescale 1ns / 1ps

module tb_rhs_spi_master ();


    reg clk;
    reg rstn;
    
    reg start = 0;
    reg [31:0] data_in = 32'hDEADBEEF;

    wire SCLK;
    wire MOSI;
    wire MISO;
    wire CS;
    reg [4:0] channel;

    rhs_spi_master dut(
        .clk(clk),
        .rstn(rstn),
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO),
        .CS(CS),
        .start(start),
        .data_in(data_in)
    );

    rhs_spi_slave dut_2(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO),
        .CS(CS),
        .channel(channel)
    );

    initial begin
        clk = 0;
        forever #8.9285 clk = ~clk; //56 MHz
    end

    initial begin
        channel <= 8;
        rstn <= 1;
        #100;
        rstn <= 0;
        #100;
        rstn <= 1;
        #100
        start <= 1;
        #500
        start <= 0;
        #5000;
        $finish;
    end

    


endmodule