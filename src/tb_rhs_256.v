`timescale 1ns / 1ps

module tb_rhs_256 ();


    reg clk = 0;
    reg rstn = 0;

    reg zcheck_mode = 0;

    reg config_start = 0;
    reg record_start = 0;
    reg zcheck_start = 0;

    reg [15:0] stim_pulse_length = 1;
    reg [7:0] stim_pulse_magnitude = 100;
    reg [15:0] stim_inter_bipulse_delay = 3;
    reg [15:0] stim_inter_pulse_delay = 3;
    reg [15:0] stim_inter_train_delay = 11;
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

    wire SCLK;
    wire CS;

    wire MOSI_A;
    wire MOSI_B;
    wire MOSI_C;
    wire MOSI_D;
    wire MOSI_E;
    wire MOSI_F;
    wire MOSI_G;
    wire MOSI_H;
    wire MOSI_I;
    wire MOSI_J;
    wire MOSI_K;
    wire MOSI_L;
    wire MOSI_M;
    wire MOSI_N;
    wire MOSI_O;
    wire MOSI_P;

    wire MISO_A;
    wire MISO_B;
    wire MISO_C;
    wire MISO_D;
    wire MISO_E;
    wire MISO_F;
    wire MISO_G;
    wire MISO_H;
    wire MISO_I;
    wire MISO_J;
    wire MISO_K;
    wire MISO_L;
    wire MISO_M;
    wire MISO_N;
    wire MISO_O;
    wire MISO_P;


    wire [7:0] rhs_channel_dut;
    wire [7:0] rhs_channel;

    reg [11:0] zcheck_global_channel = 255;
    reg [1:0] zcheck_scale = 2'b11;

    localparam CHANNELS_PER_CHIP = 16;


    wire [3:0] zcheck_chip_channel;
    assign zcheck_chip_channel = zcheck_global_channel % CHANNELS_PER_CHIP;

    assign rhs_channel = zcheck_mode ? zcheck_chip_channel + 2 : rhs_channel_dut;


    rhs_256 dut(
        .clk(clk),
        .rstn(rstn),
        .config_start(config_start),
        .record_start(record_start),
        .zcheck_start(zcheck_start),
        .fifo_read_en(1),
        .fifo_write_en_ext(1),
        .fifo_rst(0),
        .zcheck_global_channel(zcheck_global_channel),
        .zcheck_scale(zcheck_scale),
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
        .oversample_offset_P(oversample_offset),
        .channel_out(rhs_channel_dut),
        .CS(CS),
        .SCLK(SCLK),
        .MOSI_A(MOSI_A),
        .MOSI_B(MOSI_B),
        .MOSI_C(MOSI_C),
        .MOSI_D(MOSI_D),
        .MOSI_E(MOSI_E),
        .MOSI_F(MOSI_F),
        .MOSI_G(MOSI_G),
        .MOSI_H(MOSI_H),
        .MOSI_I(MOSI_I),
        .MOSI_J(MOSI_J),
        .MOSI_K(MOSI_K),
        .MOSI_L(MOSI_L),
        .MOSI_M(MOSI_M),
        .MOSI_N(MOSI_N),
        .MOSI_O(MOSI_O),
        .MOSI_P(MOSI_P),
        .MISO_A(MISO_A),
        .MISO_B(MISO_B),
        .MISO_C(MISO_C),
        .MISO_D(MISO_D),
        .MISO_E(MISO_E),
        .MISO_F(MISO_F),
        .MISO_G(MISO_G),
        .MISO_H(MISO_H),
        .MISO_I(MISO_I),
        .MISO_J(MISO_J),
        .MISO_K(MISO_K),
        .MISO_L(MISO_L),
        .MISO_M(MISO_M),
        .MISO_N(MISO_N),
        .MISO_O(MISO_O),
        .MISO_P(MISO_P),
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
        .stim_mask_probe_select(stim_mask_probe_select)
    );


    rhs_spi_slave #(.STARTING_SEED(0)) A_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_A),
        .MISO(MISO_A),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(16)) B_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_B),
        .MISO(MISO_B),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(32)) C_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_C),
        .MISO(MISO_C),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(48)) D_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_D),
        .MISO(MISO_D),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(64)) E_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_E),
        .MISO(MISO_E),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(80)) F_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_F),
        .MISO(MISO_F),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(96)) G_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_G),
        .MISO(MISO_G),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(112)) H_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_H),
        .MISO(MISO_H),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(128)) I_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_I),
        .MISO(MISO_I),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(144)) J_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_J),
        .MISO(MISO_J),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(160)) K_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_K),
        .MISO(MISO_K),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(176)) L_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_L),
        .MISO(MISO_L),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(192)) M_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_M),
        .MISO(MISO_M),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(208)) N_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_N),
        .MISO(MISO_N),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(224)) O_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_O),
        .MISO(MISO_O),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(240)) P_slave(
        .SCLK(SCLK),
        .MOSI(MOSI_P),
        .MISO(MISO_P),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );


    initial begin
        clk = 0;
        //forever #4.46 clk = ~clk; //112 MHz for effective 14.372 kS / s
        //forever #10 clk = ~clk; // 50 MHz for effective 6.41 kS /s
        //forever #25.641 clk = ~clk; // 19.5 MHz for effective 2.5 kS /s
        //forever #12.82 clk = ~clk; //39 MHz

        forever #6.41 clk = ~clk; //78 MHz
    end

    initial begin

        zcheck_mode <= 0;
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
        #20000000
    
        */
        
        /*
        
        config_start <= 1;
        #500
        config_start <= 0;
        #1000000
        */
        

        record_start <= 1;
        #600000
        stim_finite_mode_start <= 1;
        #500
        stim_finite_mode_start <= 0;
        #65000000
        stim_finite_mode_start <= 1;
        #500
        stim_finite_mode_start <= 0;
        #65000000
        record_start <= 0;
        #100000


        /*


        record_start <= 1;
        #600000
        stim_infinite_mode_start <= 1;
        #500
        stim_infinite_mode_start <= 0;
        #35000000
        stim_infinite_mode_stop <= 1;
        #500
        stim_infinite_mode_stop <= 0;
        #20000000
        stim_infinite_mode_start <= 1;
        #500
        stim_infinite_mode_start <= 0;
        #75000000
        stim_infinite_mode_stop <= 1;
        #500
        stim_infinite_mode_stop <= 0;
        #2000
        record_start <= 0;
        #1000000
        */
        
        
        $finish;
    end

    


endmodule