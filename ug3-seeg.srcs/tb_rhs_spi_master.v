`timescale 1ns / 1ps

module tb_rhs_spi_master ();


    reg clk;
    reg rstn;
    
    reg start = 0;
    reg [31:0] data_in = 32'hDEADBEEF;

    wire SCLK;

    rhs_spi_master dut(
        .clk(clk),
        .rstn(rstn),
        .SCLK(SCLK),
        .start(start),
        .data_in(data_in)
    );

    initial begin
        clk = 0;
        forever #8.9285 clk = ~clk; //56 MHz
    end

    initial begin
        rstn <= 0;
        #100;
        rstn <= 1;
        #100
        start <= 1;
        #500
        start <= 0;
        #100000;
        $finish;
    end

    


endmodule