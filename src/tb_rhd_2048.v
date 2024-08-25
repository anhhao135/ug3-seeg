`timescale 1ns / 1ps

module tb_rhd_2048 ();


    reg clk = 0;
    reg rstn = 0;

    reg config_start = 0;
    reg record_start = 0;
    reg zcheck_start = 0;

    reg sampling_rate_20k = 0;

    reg [7:0] oversample_offset = 0;

    wire SCLK;
    wire MOSI;
    wire CS;

    wire [7:0] rhd_channel;

    reg [6:0] zcheck_chip_channel = 61;
    reg [1:0] zcheck_scale = 2'b11;

    rhd_2048 dut(
        .clk(clk),
        .rstn(rstn),
        .config_start(config_start),
        .record_start(record_start),
        .zcheck_start(zcheck_start),
        .zcheck_chip_channel(zcheck_chip_channel),
        .zcheck_scale(zcheck_scale),
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
        .MISO1_A(MISO1_A),
        .MISO2_A(MISO2_A),
        .MISO1_B(MISO1_B),
        .MISO2_B(MISO2_B),
        .MISO1_C(MISO1_C),
        .MISO2_C(MISO2_C),
        .MISO1_D(MISO1_D),
        .MISO2_D(MISO2_D),
        .MISO1_E(MISO1_E),
        .MISO2_E(MISO2_E),
        .MISO1_F(MISO1_F),
        .MISO2_F(MISO2_F),
        .MISO1_G(MISO1_G),
        .MISO2_G(MISO2_G),
        .MISO1_H(MISO1_H),
        .MISO2_H(MISO2_H),
        .MISO1_I(MISO1_I),
        .MISO2_I(MISO2_I),
        .MISO1_J(MISO1_J),
        .MISO2_J(MISO2_J),
        .MISO1_K(MISO1_K),
        .MISO2_K(MISO2_K),
        .MISO1_L(MISO1_L),
        .MISO2_L(MISO2_L),
        .MISO1_M(MISO1_M),
        .MISO2_M(MISO2_M),
        .MISO1_N(MISO1_N),
        .MISO2_N(MISO2_N),
        .MISO1_O(MISO1_O),
        .MISO2_O(MISO2_O),
        .MISO1_P(MISO1_P),
        .MISO2_P(MISO2_P),
        .sampling_rate_20k(sampling_rate_20k)
    );

    wire MISO1_A;
    wire MISO2_A;
    wire MISO1_B;
    wire MISO2_B;
    wire MISO1_C;
    wire MISO2_C;
    wire MISO1_D;
    wire MISO2_D;
    wire MISO1_E;
    wire MISO2_E;
    wire MISO1_F;
    wire MISO2_F;
    wire MISO1_G;
    wire MISO2_G;
    wire MISO1_H;
    wire MISO2_H;
    wire MISO1_I;
    wire MISO2_I;
    wire MISO1_J;
    wire MISO2_J;
    wire MISO1_K;
    wire MISO2_K;
    wire MISO1_L;
    wire MISO2_L;
    wire MISO1_M;
    wire MISO2_M;
    wire MISO1_N;
    wire MISO2_N;
    wire MISO1_O;
    wire MISO2_O;
    wire MISO1_P;
    wire MISO2_P;


    rhd_spi_slave #(.STARTING_SEED(0)) A1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_A),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(64)) A2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_A),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(144)) B1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_B),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(208)) B2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_B),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(288)) C1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_C),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(352)) C2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_C),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(432)) D1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_D),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(496)) D2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_D),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(576)) E1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_E),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(640)) E2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_E),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(720)) F1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_F),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(784)) F2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_F),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(864)) G1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_G),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(928)) G2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_G),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1008)) H1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_H),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1072)) H2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_H),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1152)) I1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_I),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1216)) I2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_I),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1296)) J1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_J),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1360)) J2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_J),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1440)) K1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_K),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1504)) K2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_K),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1584)) L1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_L),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1648)) L2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_L),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1728)) M1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_M),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1792)) M2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_M),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1872)) N1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_N),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(1936)) N2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_N),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(2016)) O1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_O),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(2080)) O2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_O),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(2160)) P1_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_P),
        .CS(CS),
        .channel(rhd_channel),
        .rstn(rstn),
        .clk(clk)
    );

    rhd_spi_slave #(.STARTING_SEED(2224)) P2_slave(
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO2_P),
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
        zcheck_start <= 1;
        #500
        zcheck_start <= 0;
        #100000
        
        /*
        config_start <= 1;
        #500
        config_start <= 0;
        #100000
        */
        /*
        record_start <= 1;
        #300000
        record_start <= 0;
        #100000
        */
        $finish;
    end

    


endmodule