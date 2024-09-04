`timescale 1ns / 1ps

module tb_seeg ();


    reg clk = 0;
    reg rstn = 0;
    reg record_start = 0;
    reg record_stop = 0;

    seeg dut(
        .clk(clk),
        .rstn(rstn),
        .record_start(record_start),
        .record_stop(record_stop)
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
        record_start <= 1;
        #500
        record_start <= 0;
        #5000000
        record_stop <= 1;
        #500
        record_stop <= 0;
        #500000
        $finish;
    end


endmodule