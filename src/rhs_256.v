module rhs_256 (
    input wire rstn,
    input wire clk,
    input wire clk_fifo_out,

    input wire config_start,
    input wire record_start,    
    input wire zcheck_start,

    input wire [11:0] zcheck_global_channel, //0 - 255, zcheck one channel at a time
    input wire [1:0] zcheck_scale,
    //(binary) = (cap)(current amplitude at 1 kHz sine wave) (max voltage for 1 Mohm electrode)
    //00 = 0.1pF 0.38nA 0.38mV
    //01 = 1.0pF 3.8nA 3.8mV
    //11 = 10pF 38nA 38mV (saturates past 5mV limit)
    //selects AC cap that transforms DAC zcheck test voltage to current
    //SEEG contacts expected to be below 100k
    //11 = 10pF 38nA 3.8mV (should be ok)

    //output reg [2559:0] zcheck_data_out,
    //16 * 20 * 8 = 2560
    //this is 8 cycles of 1kHz sine at 20 kS/s for one channel
    //depending on the zcheck channel, this will be 8 sine cycles of zcheck recording for all 16 rhs chips for 16-probe system


    output wire busy,
    output wire busy_stim,
    output wire done, //on rising edge of done, data out for normal and zcheck mode is valid, so should be sampled

    input wire [7:0] oversample_offset_A,
    input wire [7:0] oversample_offset_B,
    input wire [7:0] oversample_offset_C,
    input wire [7:0] oversample_offset_D,
    input wire [7:0] oversample_offset_E,
    input wire [7:0] oversample_offset_F,
    input wire [7:0] oversample_offset_G,
    input wire [7:0] oversample_offset_H,
    input wire [7:0] oversample_offset_I,
    input wire [7:0] oversample_offset_J,
    input wire [7:0] oversample_offset_K,
    input wire [7:0] oversample_offset_L,
    input wire [7:0] oversample_offset_M,
    input wire [7:0] oversample_offset_N,
    input wire [7:0] oversample_offset_O,
    input wire [7:0] oversample_offset_P,

    //output reg[4095:0] data_out, //1 sample of all 256 channels

    input wire fifo_read_en,
    input wire fifo_rst,
    input wire fifo_write_en_external,
    output wire fifo_valid_out,
    output wire [63:0] fifo_data_out,


    output wire CS,
    output wire SCLK,

    output wire MOSI_A,
    output wire MOSI_B,
    output wire MOSI_C,
    output wire MOSI_D,
    output wire MOSI_E,
    output wire MOSI_F,
    output wire MOSI_G,
    output wire MOSI_H,
    output wire MOSI_I,
    output wire MOSI_J,
    output wire MOSI_K,
    output wire MOSI_L,
    output wire MOSI_M,
    output wire MOSI_N,
    output wire MOSI_O,
    output wire MOSI_P,

    input wire MISO_A,
    input wire MISO_B,
    input wire MISO_C,
    input wire MISO_D,
    input wire MISO_E,
    input wire MISO_F,
    input wire MISO_G,
    input wire MISO_H,
    input wire MISO_I,
    input wire MISO_J,
    input wire MISO_K,
    input wire MISO_L,
    input wire MISO_M,
    input wire MISO_N,
    input wire MISO_O,
    input wire MISO_P,

    input wire [15:0] stim_mask_probe_select, //bit mask 0 - 15 to choose which probes will be stimulating

    input wire [15:0] stim_mask_channel_positive, //binary mask channels 0 - 15, 1 means channel is activated
    input wire [15:0] stim_mask_channel_negative, //binary mask channels 0 - 15, 1 means channel is activated
    input wire stim_bipolar_mode, //current flows out of positive to negative if bipolar mode, else current flows out of positive and then to ground return
    input wire [3:0] stim_current_step_size,
    //0 - 9
    //10 nA, 20 nA, 50 nA, 100 nA, 200 nA, 500 nA, 1 uA, 2 uA, 5 uA, 10 uA
    // x 255
    //can be switched between positive or negative current

    output wire [7:0] channel_out,
    input wire [15:0] stim_pulse_length,
    input wire [7:0] stim_pulse_magnitude,
    input wire [15:0] stim_inter_bipulse_delay,
    input wire [15:0] stim_inter_pulse_delay,
    input wire [15:0] stim_inter_train_delay,
    input wire [15:0] stim_bipulses_per_train_count,
    input wire [15:0] stim_train_count,
    input wire [15:0] stim_charge_recovery_time,
    input wire stim_rising_edge_first,

    output reg stim_finite_mode_done,
    input wire stim_finite_mode_start,
    input wire stim_infinite_mode_start,
    input wire stim_infinite_mode_stop,

    output reg [1:0] stim_waveform_data_out //output info on what the current stimulation waveform looks like; 1 is baseline, 2 is high, and 0 is low
);




    //main state machine
    localparam READY = 0, REC_DATA_LOAD = 1, REC_DATA_TX = 2, REC_DATA_RX = 3, REC_DONE = 4, CONFIG_DATA_LOAD = 5, CONFIG_DATA_TX = 6, CONFIG_DATA_RX = 7, CONFIG_DONE = 8, ZCHECK_CONFIG_DATA_LOAD = 9, ZCHECK_CONFIG_DATA_TX = 10, ZCHECK_CONFIG_DATA_RX = 11, ZCHECK_REC_DATA_LOAD = 12, ZCHECK_REC_DATA_TX = 13, ZCHECK_REC_DATA_RX = 14, ZCHECK_DONE = 15, RESET = 16, PRE_RESET = 17, STIM_CONFIG_DATA_LOAD = 18, STIM_CONFIG_DATA_TX = 19, STIM_CONFIG_DATA_RX = 20;    

    //stimulation waveform state machine
    localparam IDLE = 0, FIRST_PULSE = 1, INTER_PULSE = 2, SECOND_PULSE = 3, INTER_BIPULSE = 4, INTER_TRAIN = 5, CHARGE_RECOVERY = 6, STIM_RESET = 7, PRE_STIM_CONFIG = 8, STIM_CONFIG = 9;

    localparam DEFAULT_CHANNELS = 40;
    localparam DEFAULT_CHANNELS_RECORDING = 20; //16 recording channels + some others

    localparam CHANNELS_PER_ADC = 16;
    localparam SPI_CONVERT_DELAY = 2; //Intan specifies two cycle delay for adc conversion to come back

    localparam ADC_SAMPLE_BIT_RESOLUTION = 16;
    localparam INTAN_CHIP_ID_REG = 255; //ID is 32 when read back

    localparam CHANNELS_PER_CHIP = CHANNELS_PER_ADC * 1;
    localparam CHIPS_PER_PROBE = 1;
    localparam CHANNELS_PER_PROBE = CHANNELS_PER_CHIP * CHIPS_PER_PROBE;


    reg U_FLAG = 0; //updates all triggered registers to new values that were previously programmed
    reg M_FLAG = 0; //set to one to clear compliance monitor register 40
    reg D_FLAG = 0; //sample DC low gain amp, lower 10 bits of result
    reg H_FLAG = 0; //ADCs have offset removal for rapid recovery from transient, do not change
    

    reg start = 0;

    reg [7:0] state = READY;

    reg [7:0] state_latch;


    localparam STIM_WAVEFORM_DEBUG_BASELINE = 127;
    localparam STIM_CONFIG_CYCLES = 3; //allow 3 recording cycles for stim config to happen
    reg [7:0] stimulation_state = IDLE;
    reg [7:0] stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
    reg [15:0] stim_delay_tracker = 0;
    reg [15:0] stim_bipulses_per_train_count_tracker = 0;
    reg [15:0] stim_train_count_tracker = 0;
    reg stim_infinite_mode = 0;

    reg stim_magic_number_probe_select = 0; //keeps track of when to switch from sending common commands to probe-specific commands

    reg [7:0] channel = 0;
    assign channel_out = channel;


    localparam ZCHECK_CYCLES = 8;
    reg [3:0] zcheck_cycle_counter = ZCHECK_CYCLES;
    reg zcheck_data_sample_debug = 0;
    localparam ZCHECK_FS = 20; //zcheck happens at 20kS/s for a 1kHz wave
    localparam ZCHECK_COMMAND_SLOTS_PER_PERIOD = 6;
    //when clock is 19.5 MHz, this nominally produces 2.5 kS/s rate for normal recording
    //this equates to 400 us per sample and 10 us per command given there are 40 slots of commands per sample
    //to record at 20kS/s and produce DAC commands for a 1 kHz wave per cycle, we would need:
    //20 kS/s = 50 us period
    //1 Khz sine cycle period = 1000 us
    //5 command slots per conversion and DAC command
    //total conversions and DAC commands per cycle = 1000 us / 50us = 20
    //per sine cycle: 20 * 5 command slots = 100 command slots
    //for 8 sine cycles: 800 command slots
    localparam ZCHECK_SINE_WAVE_NUM_COMMANDS = 20;
    reg [4:0] zcheck_dac_command_counter = 0;
    reg [7:0] zcheck_dac_command = 0;
    wire [5:0] zcheck_chip_channel; //0 - 15
    assign zcheck_chip_channel = zcheck_global_channel % CHANNELS_PER_CHIP;

    wire [4:0] zcheck_probe_select;
    assign zcheck_probe_select = zcheck_global_channel / CHANNELS_PER_PROBE;


    wire [31:0] adc_convert_zcheck_command;
    assign adc_convert_zcheck_command = {2'b0, 1'b0, 1'b0, 1'b0, H_FLAG, 4'b0, zcheck_chip_channel[5:0], 16'b0};

    wire [7:0] zcheck_data_gather_index;
    assign zcheck_data_gather_index = zcheck_dac_command_counter + ZCHECK_SINE_WAVE_NUM_COMMANDS * (ZCHECK_CYCLES - zcheck_cycle_counter);

    wire [15:0] busy_all;

    wire [15:0] done_all;

    wire [7:0] data_gather_index;
    assign data_gather_index = channel - 2;


    reg [7:0] write_register_address = 0;
    reg [15:0] write_register_data = 0;

    reg [7:0] read_register_address = 0;


    wire [31:0] adc_convert_command;
    assign adc_convert_command = {2'b0, 1'b0, 1'b0, 1'b0, H_FLAG, 4'b0, channel[5:0], 16'b0};

    wire [31:0] adc_clear_calibration_command;
    assign adc_clear_calibration_command = 32'b01101010000000000000000000000000; //on rhs, calibration command should not be ran but instead the clear calibration command should be

    reg [31:0] data_in_common = 0;

    reg [31:0] data_in_A = 0;
    reg [31:0] data_in_B = 0;
    reg [31:0] data_in_C = 0;
    reg [31:0] data_in_D = 0;
    reg [31:0] data_in_E = 0;
    reg [31:0] data_in_F = 0;
    reg [31:0] data_in_G = 0;
    reg [31:0] data_in_H = 0;
    reg [31:0] data_in_I = 0;
    reg [31:0] data_in_J = 0;
    reg [31:0] data_in_K = 0;
    reg [31:0] data_in_L = 0;
    reg [31:0] data_in_M = 0;
    reg [31:0] data_in_N = 0;
    reg [31:0] data_in_O = 0;
    reg [31:0] data_in_P = 0;

    wire [31:0] data_out_A;
    wire [31:0] data_out_B;
    wire [31:0] data_out_C;
    wire [31:0] data_out_D;
    wire [31:0] data_out_E;
    wire [31:0] data_out_F;
    wire [31:0] data_out_G;
    wire [31:0] data_out_H;
    wire [31:0] data_out_I;
    wire [31:0] data_out_J;
    wire [31:0] data_out_K;
    wire [31:0] data_out_L;
    wire [31:0] data_out_M;
    wire [31:0] data_out_N;
    wire [31:0] data_out_O;
    wire [31:0] data_out_P;

    reg [15:0] data_out_A_reg = 0;
    reg [15:0] data_out_B_reg = 0;
    reg [15:0] data_out_C_reg = 0;
    reg [15:0] data_out_D_reg = 0;
    reg [15:0] data_out_E_reg = 0;
    reg [15:0] data_out_F_reg = 0;
    reg [15:0] data_out_G_reg = 0;
    reg [15:0] data_out_H_reg = 0;
    reg [15:0] data_out_I_reg = 0;
    reg [15:0] data_out_J_reg = 0;
    reg [15:0] data_out_K_reg = 0;
    reg [15:0] data_out_L_reg = 0;
    reg [15:0] data_out_M_reg = 0;
    reg [15:0] data_out_N_reg = 0;
    reg [15:0] data_out_O_reg = 0;
    reg [15:0] data_out_P_reg = 0;

    assign done = (state == REC_DONE) || (state == CONFIG_DONE) || (state == ZCHECK_DONE);
    assign busy = (state != READY);
    assign busy_stim = (stimulation_state != IDLE);

    rhs_spi_master A(
        .clk(clk),
        .rstn(rstn),
        .SCLK(SCLK),
        .MOSI(MOSI_A),
        .MISO(MISO_A),
        .CS(CS),
        .start(start),
        .data_in(data_in_A),
        .data_out(data_out_A),
        .oversample_offset(oversample_offset_A),
        .busy(busy_all[0]),
        .done(done_all[0])
    );

    rhs_spi_master B(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_B),
        .MISO(MISO_B),
        .CS(),
        .start(start),
        .data_in(data_in_B),
        .data_out(data_out_B),
        .oversample_offset(oversample_offset_B),
        .busy(busy_all[1]),
        .done(done_all[1])
    );

    rhs_spi_master C(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_C),
        .MISO(MISO_C),
        .CS(),
        .start(start),
        .data_in(data_in_C),
        .data_out(data_out_C),
        .oversample_offset(oversample_offset_C),
        .busy(busy_all[2]),
        .done(done_all[2])
    );

    rhs_spi_master D(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_D),
        .MISO(MISO_D),
        .CS(),
        .start(start),
        .data_in(data_in_D),
        .data_out(data_out_D),
        .oversample_offset(oversample_offset_D),
        .busy(busy_all[3]),
        .done(done_all[3])
    );

    rhs_spi_master E(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_E),
        .MISO(MISO_E),
        .CS(),
        .start(start),
        .data_in(data_in_E),
        .data_out(data_out_E),
        .oversample_offset(oversample_offset_E),
        .busy(busy_all[4]),
        .done(done_all[4])
    );

    rhs_spi_master F(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_F),
        .MISO(MISO_F),
        .CS(),
        .start(start),
        .data_in(data_in_F),
        .data_out(data_out_F),
        .oversample_offset(oversample_offset_F),
        .busy(busy_all[5]),
        .done(done_all[5])
    );

    rhs_spi_master G(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_G),
        .MISO(MISO_G),
        .CS(),
        .start(start),
        .data_in(data_in_G),
        .data_out(data_out_G),
        .oversample_offset(oversample_offset_G),
        .busy(busy_all[6]),
        .done(done_all[6])
    );

    rhs_spi_master H(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_H),
        .MISO(MISO_H),
        .CS(),
        .start(start),
        .data_in(data_in_H),
        .data_out(data_out_H),
        .oversample_offset(oversample_offset_H),
        .busy(busy_all[7]),
        .done(done_all[7])
    );

    rhs_spi_master I(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_I),
        .MISO(MISO_I),
        .CS(),
        .start(start),
        .data_in(data_in_I),
        .data_out(data_out_I),
        .oversample_offset(oversample_offset_I),
        .busy(busy_all[8]),
        .done(done_all[8])
    );

    rhs_spi_master J(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_J),
        .MISO(MISO_J),
        .CS(),
        .start(start),
        .data_in(data_in_J),
        .data_out(data_out_J),
        .oversample_offset(oversample_offset_J),
        .busy(busy_all[9]),
        .done(done_all[9])
    );

    rhs_spi_master K(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_K),
        .MISO(MISO_K),
        .CS(),
        .start(start),
        .data_in(data_in_K),
        .data_out(data_out_K),
        .oversample_offset(oversample_offset_K),
        .busy(busy_all[10]),
        .done(done_all[10])
    );

    rhs_spi_master L(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_L),
        .MISO(MISO_L),
        .CS(),
        .start(start),
        .data_in(data_in_L),
        .data_out(data_out_L),
        .oversample_offset(oversample_offset_L),
        .busy(busy_all[11]),
        .done(done_all[11])
    );

    rhs_spi_master M(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_M),
        .MISO(MISO_M),
        .CS(),
        .start(start),
        .data_in(data_in_M),
        .data_out(data_out_M),
        .oversample_offset(oversample_offset_M),
        .busy(busy_all[12]),
        .done(done_all[12])
    );

    rhs_spi_master N(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_N),
        .MISO(MISO_N),
        .CS(),
        .start(start),
        .data_in(data_in_N),
        .data_out(data_out_N),
        .oversample_offset(oversample_offset_N),
        .busy(busy_all[13]),
        .done(done_all[13])
    );

    rhs_spi_master O(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_O),
        .MISO(MISO_O),
        .CS(),
        .start(start),
        .data_in(data_in_O),
        .data_out(data_out_O),
        .oversample_offset(oversample_offset_O),
        .busy(busy_all[14]),
        .done(done_all[14])
    );

    rhs_spi_master P(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(MOSI_P),
        .MISO(MISO_P),
        .CS(),
        .start(start),
        .data_in(data_in_P),
        .data_out(data_out_P),
        .oversample_offset(oversample_offset_P),
        .busy(busy_all[15]),
        .done(done_all[15])
    );


    reg [15:0] fifo_data_in = 0;
    reg fifo_write_en = 0;

    fifo_16_to_64 fifo_inst_0(
        .srst(!rstn || fifo_rst),
        .wr_clk(clk),
        .rd_clk(clk_fifo_out),
        .din(fifo_data_in),
        .wr_en(fifo_write_en && fifo_write_en_external),
        .rd_en(fifo_read_en),
        .dout(fifo_data_out),
        .full(),
        .empty(),
        .valid(fifo_valid_out),
        .wr_rst_busy(),
        .rd_rst_busy()
    );

    reg [6:0] fifo_load_index = 0; //0 - 15 index to load data received into fifo from all 15 ADC


    //stimulation waveform state machine
    //always @(posedge (state == REC_DATA_LOAD) or negedge rstn or posedge stim_infinite_mode_start or posedge stim_finite_mode_start or posedge stim_infinite_mode_stop) begin

    always @(posedge clk) begin

        if (!rstn) begin
            stim_delay_tracker = 0;
            stim_bipulses_per_train_count_tracker = 0;
            stim_train_count_tracker = 0;
            stim_infinite_mode = 0;
            stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
            stim_finite_mode_done = 0;
            stimulation_state = STIM_RESET;
        end
        else if (stim_infinite_mode_start || stim_finite_mode_start) begin
            stim_infinite_mode = stim_infinite_mode_start ? 1 : 0;
            stim_delay_tracker = stim_pulse_length;
            stim_bipulses_per_train_count_tracker = stim_bipulses_per_train_count; //only vlaid if train count is > 0
            stim_train_count_tracker = stim_train_count; //when > 0, trains will exist with bipulse count, else will only be bipulses
            stimulation_state = PRE_STIM_CONFIG;
        end
        else if (stim_infinite_mode_stop) begin
            stim_delay_tracker = stim_charge_recovery_time;
            stimulation_state = CHARGE_RECOVERY;
        end

        if (state == REC_DATA_LOAD && state_latch != REC_DATA_LOAD) begin //detect rising edge of state becoming REC_DATA_LOAD

            if (channel == CHANNELS_PER_ADC) begin
                case(stimulation_state)
                    STIM_RESET: begin
                        stim_delay_tracker = 0;
                        stim_bipulses_per_train_count_tracker = 0;
                        stim_train_count_tracker = 0;
                        stim_infinite_mode = 0;
                        stimulation_state = IDLE;
                        stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
                        stim_finite_mode_done = 0;
                    end

                    IDLE: begin
                    end

                    PRE_STIM_CONFIG: begin
                        stim_delay_tracker = STIM_CONFIG_CYCLES; //allow stim config some room to settle
                        stimulation_state = STIM_CONFIG;
                    end

                    STIM_CONFIG: begin
                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin
                            stim_delay_tracker = stim_pulse_length;
                            stimulation_state = FIRST_PULSE;
                        end
                    end

                    FIRST_PULSE: begin
                        if (stim_rising_edge_first) begin
                            stimulation_magnitude_debug = 255;
                        end
                        else begin
                            stimulation_magnitude_debug = 0;
                        end

                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin
                            if (stim_inter_pulse_delay == 0) begin
                                stim_delay_tracker = stim_pulse_length;
                                stimulation_state = SECOND_PULSE;
                            end
                            else begin
                                stim_delay_tracker = stim_inter_pulse_delay;
                                stimulation_state = INTER_PULSE;
                            end
                        end
                    end

                    INTER_PULSE: begin
                        stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin
                            stim_delay_tracker = stim_pulse_length;
                            stimulation_state = SECOND_PULSE;
                        end
                    end

                    SECOND_PULSE: begin
                        if (stim_rising_edge_first) begin
                            stimulation_magnitude_debug = 0;
                        end
                        else begin
                            stimulation_magnitude_debug = 255;
                        end

                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin

                            if (stim_bipulses_per_train_count == 0 && stim_infinite_mode) begin //if bipulses per train count is set to 0, this means its a simple infinite bipulse
                                stim_delay_tracker = stim_inter_bipulse_delay;
                                stimulation_state = INTER_BIPULSE;
                            end

                            else begin
                                stim_bipulses_per_train_count_tracker = stim_bipulses_per_train_count_tracker - 1;
                                if (stim_bipulses_per_train_count_tracker == 0) begin
                                    stim_train_count_tracker = stim_train_count_tracker - 1;
                                    if (stim_train_count_tracker == 0 && stim_infinite_mode == 0) begin
                                        stim_delay_tracker = stim_charge_recovery_time;
                                        stimulation_state = CHARGE_RECOVERY;
                                    end
                                    else begin
                                        if (stim_infinite_mode) begin
                                            stim_train_count_tracker = stim_train_count;
                                        end
                                        stim_bipulses_per_train_count_tracker = stim_bipulses_per_train_count;
                                        stim_delay_tracker = stim_inter_train_delay;
                                        stimulation_state = INTER_TRAIN;
                                    end
                                end
                                else begin
                                    stim_delay_tracker = stim_inter_bipulse_delay;
                                    stimulation_state = INTER_BIPULSE;
                                end
                            end


                        end
                    end

                    INTER_BIPULSE: begin
                        stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin
                            stim_delay_tracker = stim_pulse_length;
                            stimulation_state = FIRST_PULSE;
                        end
                    end

                    INTER_TRAIN: begin
                        stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin
                            stim_delay_tracker = stim_pulse_length;
                            stimulation_state = FIRST_PULSE;
                        end
                    end

                    CHARGE_RECOVERY: begin
                        stimulation_magnitude_debug = STIM_WAVEFORM_DEBUG_BASELINE;
                        stim_delay_tracker = stim_delay_tracker - 1;
                        if (stim_delay_tracker == 0) begin
                            if (stim_infinite_mode == 0) begin
                                stim_finite_mode_done = 1;
                            end
                            stimulation_state = STIM_RESET;
                        end
                    end
                    
                endcase
            end

        end

        state_latch = state;

        
    end


    always @(posedge clk) begin

        fifo_write_en = 0;

        if (!rstn) begin
            state = RESET;
        end
        else begin
            case(state)

                PRE_RESET: begin //this is to provide a whole extra clock cycle before going into reset so external logic can have more time to capture the data out before it gets reset
                    state = RESET;
                end

                RESET: begin
                    data_in_common = 0;
                    data_in_A = 0;
                    data_in_B = 0;
                    data_in_C = 0;
                    data_in_D = 0;
                    data_in_E = 0;
                    data_in_F = 0;
                    data_in_G = 0;
                    data_in_H = 0;
                    data_in_I = 0;
                    data_in_J = 0;
                    data_in_K = 0;
                    data_in_L = 0;
                    data_in_M = 0;
                    data_in_N = 0;
                    data_in_O = 0;
                    data_in_P = 0;

                    data_out_A_reg = 0;
                    data_out_B_reg = 0;
                    data_out_C_reg = 0;
                    data_out_D_reg = 0;
                    data_out_E_reg = 0;
                    data_out_F_reg = 0;
                    data_out_G_reg = 0;
                    data_out_H_reg = 0;
                    data_out_I_reg = 0;
                    data_out_J_reg = 0;
                    data_out_K_reg = 0;
                    data_out_L_reg = 0;
                    data_out_M_reg = 0;
                    data_out_N_reg = 0;
                    data_out_O_reg = 0;
                    data_out_P_reg = 0;

                    start = 0;
                    channel = 0;
                    zcheck_cycle_counter = ZCHECK_CYCLES;
                    zcheck_dac_command = 0;
                    zcheck_data_sample_debug = 0;

                    fifo_data_in = 0;
                    fifo_load_index = 0;

                    state = READY;
                end

                READY: begin
                    if (config_start)
                        state = CONFIG_DATA_LOAD;
                    else if (record_start)
                        state = REC_DATA_LOAD;
                    else if (zcheck_start) begin
                        state = ZCHECK_CONFIG_DATA_LOAD;
                    end
                end

                REC_DATA_LOAD: begin

                    stim_magic_number_probe_select = 0;

                    if (channel < CHANNELS_PER_ADC)
                        data_in_common = adc_convert_command;
                    else begin
                        if (stimulation_state == STIM_CONFIG) begin
                            case(channel)
                                CHANNELS_PER_ADC: begin //stim current step size
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 34;

                                    case(stim_current_step_size)
                                        0: begin
                                            write_register_data = {1'd0, 2'd3, 6'd19, 7'd64};
                                        end
                                        1: begin
                                            write_register_data = {1'd0, 2'd1, 6'd40, 7'd40};
                                        end
                                        2: begin
                                            write_register_data = {1'd0, 2'd0, 6'd40, 7'd64};
                                        end
                                        3: begin
                                            write_register_data = {1'd0, 2'd0, 6'd20, 7'd30};
                                        end
                                        4: begin
                                            write_register_data = {1'd0, 2'd0, 6'd10, 7'd25};
                                        end
                                        5: begin
                                            write_register_data = {1'd0, 2'd0, 6'd3, 7'd101};
                                        end
                                        6: begin
                                            write_register_data = {1'd0, 2'd0, 6'd1, 7'd98};
                                        end
                                        7: begin
                                            write_register_data = {1'd0, 2'd0, 6'd0, 7'd94};
                                        end
                                        8: begin
                                            write_register_data = {1'd0, 2'd0, 6'd0, 7'd38};
                                        end
                                        9: begin
                                            write_register_data = {1'd0, 2'd0, 6'd0, 7'd15};
                                        end
                                    endcase

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 1: begin //stim bias voltages
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 35;

                                    case(stim_current_step_size)
                                        0: begin
                                            write_register_data = {8'd0, 4'd6, 4'd6};
                                        end
                                        1: begin
                                            write_register_data = {8'd0, 4'd7, 4'd7};
                                        end
                                        2: begin
                                            write_register_data = {8'd0, 4'd7, 4'd7};
                                        end
                                        3: begin
                                            write_register_data = {8'd0, 4'd7, 4'd7};
                                        end
                                        4: begin
                                            write_register_data = {8'd0, 4'd8, 4'd8};
                                        end
                                        5: begin
                                            write_register_data = {8'd0, 4'd9, 4'd9};
                                        end
                                        6: begin
                                            write_register_data = {8'd0, 4'd10, 4'd10};
                                        end
                                        7: begin
                                            write_register_data = {8'd0, 4'd11, 4'd11};
                                        end
                                        8: begin
                                            write_register_data = {8'd0, 4'd14, 4'd14};
                                        end
                                        9: begin
                                            write_register_data = {8'd0, 4'd15, 4'd15};
                                        end
                                    endcase

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 2: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;

                                    /*

                                    if (stim_bipolar_mode) begin
                                        write_register_data = stim_mask_channel_positive | stim_mask_channel_negative; //or pos and neg mask so we can activate both positive and negative channels
                                    end
                                    else begin
                                        write_register_data = stim_mask_channel_positive; //monopolar so only positive channel needs to be activated
                                    end

                                    */

                                    write_register_data = 0; //turn off current sources
                                    
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 3: begin //stimulator polarity
                                    //binary bit mask, 1 means current flows out of channel, 0 means current flows inward
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 44;

                                    if (stim_bipolar_mode) begin
                                        if (stim_rising_edge_first) begin
                                            write_register_data = stim_mask_channel_positive; //positive channel sends current, negative channel sinks current, creating rising edge
                                        end
                                        else begin
                                            write_register_data = stim_mask_channel_negative; //negative channel sends current, positive channel sinks current, creating falling edge
                                        end
                                    end
                                    else begin
                                        if (stim_rising_edge_first) begin
                                            write_register_data = stim_mask_channel_positive; //positive channel sends current to stim gnd, creating rising edge
                                        end
                                        else begin
                                            write_register_data = ~stim_mask_channel_positive; //invert positive channel bitmask so now the positive channel sinks current from stim gnd, creating falling edge
                                        end
                                    end

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 4: begin //charge recovery switch
                                    //pulls channel to stim gnd which will be connected to gnd, bit 1 closes switch
                                    //before stim, reset all channels to true gnd, so close all switches
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 46;
                                    write_register_data = 16'hFFFF;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 5: begin //current-limited charge recovery enable
                                    //pulls channel to specific voltage using dac, but we will not be using this so disable all
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 48;
                                    write_register_data = 16'd0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 6: begin //negative current magnitude
                                    //register 64-79 corresponds to channels 0-15
                                    //data: [7:0] current trim | [7:0] magnitude
                                    //trim is for fine tuning current for differences between channels but can be set to 128 on default
                                    case (stim_mask_channel_positive)
                                        16'h1: begin
                                            write_register_address = 64;
                                        end
                                        16'h2: begin
                                            write_register_address = 65;
                                        end
                                        16'h4: begin
                                            write_register_address = 66;
                                        end
                                        16'h8: begin
                                            write_register_address = 67;
                                        end
                                        16'h10: begin
                                            write_register_address = 68;
                                        end
                                        16'h20: begin
                                            write_register_address = 69;
                                        end
                                        16'h40: begin
                                            write_register_address = 70;
                                        end
                                        16'h80: begin
                                            write_register_address = 71;
                                        end
                                        16'h100: begin
                                            write_register_address = 72;
                                        end
                                        16'h200: begin
                                            write_register_address = 73;
                                        end
                                        16'h400: begin
                                            write_register_address = 74;
                                        end
                                        16'h800: begin
                                            write_register_address = 75;
                                        end
                                        16'h1000: begin
                                            write_register_address = 76;
                                        end
                                        16'h2000: begin
                                            write_register_address = 77;
                                        end
                                        16'h4000: begin
                                            write_register_address = 78;
                                        end
                                        16'h8000: begin
                                            write_register_address = 79;
                                        end
                                    endcase
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_data = {8'd128, stim_pulse_magnitude}; //we will be doing symmetric magnitudes, so postive and negative current magnitudes are equal
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 7: begin //negative current magnitude
                                    //register 64-79 corresponds to channels 0-15
                                    //data: [7:0] current trim | [7:0] magnitude
                                    //trim is for fine tuning current for differences between channels but can be set to 128 on default
                                    case (stim_mask_channel_negative)
                                        16'h1: begin
                                            write_register_address = 64;
                                        end
                                        16'h2: begin
                                            write_register_address = 65;
                                        end
                                        16'h4: begin
                                            write_register_address = 66;
                                        end
                                        16'h8: begin
                                            write_register_address = 67;
                                        end
                                        16'h10: begin
                                            write_register_address = 68;
                                        end
                                        16'h20: begin
                                            write_register_address = 69;
                                        end
                                        16'h40: begin
                                            write_register_address = 70;
                                        end
                                        16'h80: begin
                                            write_register_address = 71;
                                        end
                                        16'h100: begin
                                            write_register_address = 72;
                                        end
                                        16'h200: begin
                                            write_register_address = 73;
                                        end
                                        16'h400: begin
                                            write_register_address = 74;
                                        end
                                        16'h800: begin
                                            write_register_address = 75;
                                        end
                                        16'h1000: begin
                                            write_register_address = 76;
                                        end
                                        16'h2000: begin
                                            write_register_address = 77;
                                        end
                                        16'h4000: begin
                                            write_register_address = 78;
                                        end
                                        16'h8000: begin
                                            write_register_address = 79;
                                        end
                                    endcase
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_data = {8'd128, stim_pulse_magnitude}; //we will be doing symmetric magnitudes, so postive and negative current magnitudes are equal
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 8: begin //positive current magnitude
                                    //register 96-111 corresponds to channels 0-15
                                    //data: [7:0] current trim | [7:0] magnitude
                                    //trim is for fine tuning current for differences between channels but can be set to 128 on default
                                    case (stim_mask_channel_positive)
                                        16'h1: begin
                                            write_register_address = 96;
                                        end
                                        16'h2: begin
                                            write_register_address = 97;
                                        end
                                        16'h4: begin
                                            write_register_address = 98;
                                        end
                                        16'h8: begin
                                            write_register_address = 99;
                                        end
                                        16'h10: begin
                                            write_register_address = 100;
                                        end
                                        16'h20: begin
                                            write_register_address = 101;
                                        end
                                        16'h40: begin
                                            write_register_address = 102;
                                        end
                                        16'h80: begin
                                            write_register_address = 103;
                                        end
                                        16'h100: begin
                                            write_register_address = 104;
                                        end
                                        16'h200: begin
                                            write_register_address = 105;
                                        end
                                        16'h400: begin
                                            write_register_address = 106;
                                        end
                                        16'h800: begin
                                            write_register_address = 107;
                                        end
                                        16'h1000: begin
                                            write_register_address = 108;
                                        end
                                        16'h2000: begin
                                            write_register_address = 109;
                                        end
                                        16'h4000: begin
                                            write_register_address = 110;
                                        end
                                        16'h8000: begin
                                            write_register_address = 111;
                                        end
                                    endcase
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_data = {8'd128, stim_pulse_magnitude}; //we will be doing symmetric magnitudes, so postive and negative current magnitudes are equal
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 9: begin //positive current magnitude
                                    //register 96-111 corresponds to channels 0-15
                                    //data: [7:0] current trim | [7:0] magnitude
                                    //trim is for fine tuning current for differences between channels but can be set to 128 on default
                                    case (stim_mask_channel_negative)
                                        16'h1: begin
                                            write_register_address = 96;
                                        end
                                        16'h2: begin
                                            write_register_address = 97;
                                        end
                                        16'h4: begin
                                            write_register_address = 98;
                                        end
                                        16'h8: begin
                                            write_register_address = 99;
                                        end
                                        16'h10: begin
                                            write_register_address = 100;
                                        end
                                        16'h20: begin
                                            write_register_address = 101;
                                        end
                                        16'h40: begin
                                            write_register_address = 102;
                                        end
                                        16'h80: begin
                                            write_register_address = 103;
                                        end
                                        16'h100: begin
                                            write_register_address = 104;
                                        end
                                        16'h200: begin
                                            write_register_address = 105;
                                        end
                                        16'h400: begin
                                            write_register_address = 106;
                                        end
                                        16'h800: begin
                                            write_register_address = 107;
                                        end
                                        16'h1000: begin
                                            write_register_address = 108;
                                        end
                                        16'h2000: begin
                                            write_register_address = 109;
                                        end
                                        16'h4000: begin
                                            write_register_address = 110;
                                        end
                                        16'h8000: begin
                                            write_register_address = 111;
                                        end
                                    endcase
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_data = {8'd128, stim_pulse_magnitude}; //we will be doing symmetric magnitudes, so postive and negative current magnitudes are equal
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 10: begin //stim enable A
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 32;
                                    write_register_data = 16'hAAAA; //magic number
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                    stim_magic_number_probe_select = 1; //raise flag so common data is not sent to all probes so based on probe select, some probes will not be stimulating
                                    //magic number set command will be skipped over based on probe select bit mask
                                end

                                CHANNELS_PER_ADC + 11: begin //stim enable B
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 33;
                                    write_register_data = 16'h00FF; //magic number
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                    stim_magic_number_probe_select = 1; //raise flag so common data is not sent to all probes so based on probe select, some probes will not be stimulating
                                    //magic number set command will be skipped over based on probe select bit mask
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == FIRST_PULSE) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //charge recovery switch
                                    //pulls channel to stim gnd which will be connected to gnd, bit 1 closes switch
                                    //open switch for normal stim
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 46;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 1: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;

                                    if (stim_bipolar_mode) begin
                                        write_register_data = stim_mask_channel_positive | stim_mask_channel_negative; //or pos and neg mask so we can activate both positive and negative channels
                                    end
                                    else begin
                                        write_register_data = stim_mask_channel_positive; //monopolar so only positive channel needs to be activated
                                    end

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                    stim_magic_number_probe_select = 1; //raise flag so common data is not sent to all probes so based on probe select, some probes will not be stimulating
                                    //current source turn on command will be skipped over based on probe select bit mask
                                end

                                CHANNELS_PER_ADC + 2: begin //stimulator polarity
                                    //binary bit mask, 1 means current flows out of channel, 0 means current flows inward
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 44;

                                    if (stim_bipolar_mode) begin
                                        if (stim_rising_edge_first) begin
                                            write_register_data = stim_mask_channel_positive; //positive channel sends current, negative channel sinks current, creating rising edge
                                        end
                                        else begin
                                            write_register_data = stim_mask_channel_negative; //negative channel sends current, positive channel sinks current, creating falling edge
                                        end
                                    end
                                    else begin
                                        if (stim_rising_edge_first) begin
                                            write_register_data = stim_mask_channel_positive; //positive channel sends current to stim gnd, creating rising edge
                                        end
                                        else begin
                                            write_register_data = ~stim_mask_channel_positive; //invert positive channel bitmask so now the positive channel sinks current from stim gnd, creating falling edge
                                        end
                                    end

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == INTER_PULSE) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    //interpulse, turn off all current sources
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == SECOND_PULSE) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;

                                    if (stim_bipolar_mode) begin
                                        write_register_data = stim_mask_channel_positive | stim_mask_channel_negative; //or pos and neg mask so we can activate both positive and negative channels
                                    end
                                    else begin
                                        write_register_data = stim_mask_channel_positive; //monopolar so only positive channel needs to be activated
                                    end

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                    stim_magic_number_probe_select = 1; //raise flag so common data is not sent to all probes so based on probe select, some probes will not be stimulating
                                    //current source turn on command will be skipped over based on probe select bit mask
                                end

                                CHANNELS_PER_ADC + 1: begin //stimulator polarity
                                    //binary bit mask, 1 means current flows out of channel, 0 means current flows inward
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 44;

                                    if (stim_bipolar_mode) begin
                                        if (stim_rising_edge_first) begin
                                            write_register_data = ~stim_mask_channel_positive; //positive channel sinks current, negative channel sends current, creating falling edge on second pulse
                                        end
                                        else begin
                                            write_register_data = ~stim_mask_channel_negative; //negative channel sinks current, positive channel sends current, creating rising edge on second pulse
                                        end
                                    end
                                    else begin
                                        if (stim_rising_edge_first) begin
                                            write_register_data = ~stim_mask_channel_positive; //positive channel sinks current from stim gnd, creating falling edge on second pulse
                                        end
                                        else begin
                                            write_register_data = stim_mask_channel_positive; //invert positive channel bitmask so now the positive channel sends current to stim gnd, creating rising edge on second pulse
                                        end
                                    end

                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == INTER_BIPULSE) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    //interbipulse, turn off all current sources
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == INTER_TRAIN) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    //inter-train, turn off all current sources
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == CHARGE_RECOVERY) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //charge recovery switch
                                    //pulls channel to stim gnd which will be connected to gnd, bit 1 closes switch
                                    //close all switches during charge recovery
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 46;
                                    write_register_data = 16'hFFFF;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 1: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    //charge recovery, turn off all current sources
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else if (stimulation_state == STIM_RESET) begin
                            case(channel)

                                CHANNELS_PER_ADC: begin //charge recovery switch
                                    //pulls channel to stim gnd which will be connected to gnd, bit 1 closes switch
                                    //open all switches after charge recovery and during stim reset
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 46;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 1: begin //stimulator on (triggered), turns on current sources, but will not stimulate unless magic numbers are present
                                    //stim reset, turn off all current sources
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 42;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 2: begin //stim enable A
                                    //disable by clearing magic number
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 32;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                CHANNELS_PER_ADC + 3: begin //stim enable B
                                    //disable by clearing magic number
                                    U_FLAG = 0;
                                    M_FLAG = 0;
                                    write_register_address = 33;
                                    write_register_data = 0;
                                    data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                                end

                                default: begin
                                    U_FLAG = 1; //trigger all previous registers
                                    M_FLAG = 0;
                                    read_register_address = INTAN_CHIP_ID_REG;
                                    data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                                end
                            endcase
                        end

                        else begin
                            U_FLAG = 1; //trigger all previous registers
                            M_FLAG = 0;
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                        end
                    end

                    if (stim_magic_number_probe_select == 0) begin //normal mode, we send the same command to all probes
                        data_in_A = data_in_common;
                        data_in_B = data_in_common;
                        data_in_C = data_in_common;
                        data_in_D = data_in_common;
                        data_in_E = data_in_common;
                        data_in_F = data_in_common;
                        data_in_G = data_in_common;
                        data_in_H = data_in_common;
                        data_in_I = data_in_common;
                        data_in_J = data_in_common;
                        data_in_K = data_in_common;
                        data_in_L = data_in_common;
                        data_in_M = data_in_common;
                        data_in_N = data_in_common;
                        data_in_O = data_in_common;
                        data_in_P = data_in_common;
                    end
                    else begin //based on probe select bit mask, some probes will be skipped over and the last command will be sent twice
                        if (stim_mask_probe_select[0]) begin
                            data_in_A = data_in_common;
                        end
                        if (stim_mask_probe_select[1]) begin
                            data_in_B = data_in_common;
                        end
                        if (stim_mask_probe_select[2]) begin
                            data_in_C = data_in_common;
                        end
                        if (stim_mask_probe_select[3]) begin
                            data_in_D = data_in_common;
                        end
                        if (stim_mask_probe_select[4]) begin
                            data_in_E = data_in_common;
                        end
                        if (stim_mask_probe_select[5]) begin
                            data_in_F = data_in_common;
                        end
                        if (stim_mask_probe_select[6]) begin
                            data_in_G = data_in_common;
                        end
                        if (stim_mask_probe_select[7]) begin
                            data_in_H = data_in_common;
                        end
                        if (stim_mask_probe_select[8]) begin
                            data_in_I = data_in_common;
                        end
                        if (stim_mask_probe_select[9]) begin
                            data_in_J = data_in_common;
                        end
                        if (stim_mask_probe_select[10]) begin
                            data_in_K = data_in_common;
                        end
                        if (stim_mask_probe_select[11]) begin
                            data_in_L = data_in_common;
                        end
                        if (stim_mask_probe_select[12]) begin
                            data_in_M = data_in_common;
                        end
                        if (stim_mask_probe_select[13]) begin
                            data_in_N = data_in_common;
                        end
                        if (stim_mask_probe_select[14]) begin
                            data_in_O = data_in_common;
                        end
                        if (stim_mask_probe_select[15]) begin
                            data_in_P = data_in_common;
                        end
                    end

                    start = 0;
                    if (done_all == 0)
                        state = REC_DATA_TX;
                end

                REC_DATA_TX: begin
                    start = 1;
                    state = REC_DATA_RX;
                end

                REC_DATA_RX: begin
                    start = 0;


                    
                    if (&done_all) begin
                        if (channel < CHANNELS_PER_ADC + SPI_CONVERT_DELAY && channel >= SPI_CONVERT_DELAY) begin

                            data_out_A_reg <= data_out_A[31:16];
                            data_out_B_reg <= data_out_B[31:16];
                            data_out_C_reg <= data_out_C[31:16];
                            data_out_D_reg <= data_out_D[31:16];
                            data_out_E_reg <= data_out_E[31:16];
                            data_out_F_reg <= data_out_F[31:16];
                            data_out_G_reg <= data_out_G[31:16];
                            data_out_H_reg <= data_out_H[31:16];
                            data_out_I_reg <= data_out_I[31:16];
                            data_out_J_reg <= data_out_J[31:16];
                            data_out_K_reg <= data_out_K[31:16];
                            data_out_L_reg <= data_out_L[31:16];
                            data_out_M_reg <= data_out_M[31:16];
                            data_out_N_reg <= data_out_N[31:16];
                            data_out_O_reg <= data_out_O[31:16];
                            data_out_P_reg <= data_out_P[31:16];
                            
                        end
                        channel = channel + 1; 
                        fifo_load_index = 0;

                        if (channel == DEFAULT_CHANNELS_RECORDING) begin
                        end

                        if (channel == DEFAULT_CHANNELS_RECORDING && stimulation_state != STIM_CONFIG) begin
                            case (stimulation_state)
                                FIRST_PULSE: stim_waveform_data_out = stim_rising_edge_first? 2 : 0;
                                SECOND_PULSE: stim_waveform_data_out = stim_rising_edge_first? 0 : 2;
                                default: stim_waveform_data_out = 1;
                            endcase
                            state = REC_DONE;
                        end
                        else if (channel == DEFAULT_CHANNELS && stimulation_state == STIM_CONFIG) begin
                            state = REC_DONE;
                        end
                        else begin
                            state = REC_DATA_LOAD;
                        end

                    end
                    else if (channel > SPI_CONVERT_DELAY && channel <= CHANNELS_PER_ADC + SPI_CONVERT_DELAY && fifo_load_index < 16) begin

                        fifo_write_en = 1;

                        case (fifo_load_index)
                            0: fifo_data_in = data_out_A_reg;
                            1 : fifo_data_in = data_out_B_reg;
                            2 : fifo_data_in = data_out_C_reg;
                            3 : fifo_data_in = data_out_D_reg;
                            4 : fifo_data_in = data_out_E_reg;
                            5 : fifo_data_in = data_out_F_reg;
                            6 : fifo_data_in = data_out_G_reg;
                            7 : fifo_data_in = data_out_H_reg;
                            8 : fifo_data_in = data_out_I_reg;
                            9 : fifo_data_in = data_out_J_reg;
                            10 : fifo_data_in = data_out_K_reg;
                            11 : fifo_data_in = data_out_L_reg;
                            12 : fifo_data_in = data_out_M_reg;
                            13 : fifo_data_in = data_out_N_reg;
                            14 : fifo_data_in = data_out_O_reg;
                            15 : fifo_data_in = data_out_P_reg;
                            default: fifo_write_en = 0;
                        endcase

                        fifo_load_index = fifo_load_index + 1;

                    end

                end

                REC_DONE: begin
                    state = PRE_RESET;
                end

                ZCHECK_CONFIG_DATA_LOAD: begin

                    start = 0;
                    //note amps saturate at +- 5mV, so 5nA across 1Mohm electrode will create 5mV

                    case(channel)
                        0: begin //zcheck control
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 2;
                            write_register_data = {2'b0, zcheck_chip_channel, 1'b0, 1'b1, 1'b0, zcheck_scale, 2'b0, 1'b1}; //enable zcheck dac, set scale, set channel connected to dac
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        1: begin //zcheck dac control
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 3;
                            zcheck_dac_command = 0; //set dac output to 0V
                            write_register_data = {8'b0, zcheck_dac_command};
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        default: begin //by default send read intan id dummy commands
                            U_FLAG = 1; //trigger all previous registers
                            M_FLAG = 0;
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                        end
                    endcase

                    data_in_A = data_in_common;
                    data_in_B = data_in_common;
                    data_in_C = data_in_common;
                    data_in_D = data_in_common;
                    data_in_E = data_in_common;
                    data_in_F = data_in_common;
                    data_in_G = data_in_common;
                    data_in_H = data_in_common;
                    data_in_I = data_in_common;
                    data_in_J = data_in_common;
                    data_in_K = data_in_common;
                    data_in_L = data_in_common;
                    data_in_M = data_in_common;
                    data_in_N = data_in_common;
                    data_in_O = data_in_common;
                    data_in_P = data_in_common;

                    if (done_all == 0)
                        state = ZCHECK_CONFIG_DATA_TX;

                end

                ZCHECK_CONFIG_DATA_TX: begin
                    start = 1;
                    state = ZCHECK_CONFIG_DATA_RX;
                end

                ZCHECK_CONFIG_DATA_RX: begin
                    start = 0;
                    if (&done_all)begin
                        channel = channel + 1;
                        if (channel == DEFAULT_CHANNELS) begin
                            state = ZCHECK_REC_DATA_LOAD;
                            channel = 0;
                        end
                        else
                            state = ZCHECK_CONFIG_DATA_LOAD;
                    end
                end

                ZCHECK_REC_DATA_LOAD: begin

                    start = 0;

                    case(channel)

                        0: begin

                            case (zcheck_dac_command_counter)
                                0:          begin zcheck_dac_command <= 8'b10000000;   end
                                1:          begin zcheck_dac_command <= 8'b10100111;   end
                                2:          begin zcheck_dac_command <= 8'b11001011;   end
                                3:          begin zcheck_dac_command <= 8'b11100111;   end
                                4:          begin zcheck_dac_command <= 8'b11111001;   end
                                5:          begin zcheck_dac_command <= 8'b11111111;   end
                                6:          begin zcheck_dac_command <= 8'b11111001;   end
                                7:          begin zcheck_dac_command <= 8'b11100111;   end
                                8:          begin zcheck_dac_command <= 8'b11001011;   end
                                9:          begin zcheck_dac_command <= 8'b10100111;   end
                                10:         begin zcheck_dac_command <= 8'b10000000;   end
                                11:         begin zcheck_dac_command <= 8'b01011001;   end
                                12:         begin zcheck_dac_command <= 8'b00110101;   end
                                13:         begin zcheck_dac_command <= 8'b00011001;   end
                                14:         begin zcheck_dac_command <= 8'b00000111;   end
                                15:         begin zcheck_dac_command <= 8'b00000001;   end
                                16:         begin zcheck_dac_command <= 8'b00000111;   end
                                17:         begin zcheck_dac_command <= 8'b00011001;   end
                                18:         begin zcheck_dac_command <= 8'b00110101;   end
                                19:         begin zcheck_dac_command <= 8'b01011001;   end          
                                default:    begin zcheck_dac_command <= 8'b00000000;   end 
                            endcase

                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 3;
                            write_register_data = {8'b0, zcheck_dac_command};
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};

                        end

                        1: begin
                            data_in_common = adc_convert_zcheck_command;
                        end

                        default: begin //by default send read intan id dummy commands
                            U_FLAG = 1; //trigger all previous registers
                            M_FLAG = 0;
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                        end

                    endcase

                    data_in_A = data_in_common;
                    data_in_B = data_in_common;
                    data_in_C = data_in_common;
                    data_in_D = data_in_common;
                    data_in_E = data_in_common;
                    data_in_F = data_in_common;
                    data_in_G = data_in_common;
                    data_in_H = data_in_common;
                    data_in_I = data_in_common;
                    data_in_J = data_in_common;
                    data_in_K = data_in_common;
                    data_in_L = data_in_common;
                    data_in_M = data_in_common;
                    data_in_N = data_in_common;
                    data_in_O = data_in_common;
                    data_in_P = data_in_common;

                    if (done_all == 0)
                        state = ZCHECK_REC_DATA_TX;

                end

                ZCHECK_REC_DATA_TX: begin
                    start = 1;
                    state = ZCHECK_REC_DATA_RX;
                end

                ZCHECK_REC_DATA_RX: begin

                    zcheck_data_sample_debug = 0;
                    start = 0;

                    if (&done_all) begin

                        if (channel == SPI_CONVERT_DELAY + 1) begin

                            fifo_write_en = 1;
                            zcheck_data_sample_debug = 1;

                            case(zcheck_probe_select)

                                0: begin
                                    fifo_data_in <= data_out_A[31:16];
                                end
                                1: begin
                                    fifo_data_in <= data_out_B[31:16];
                                end
                                2: begin
                                    fifo_data_in <= data_out_C[31:16];
                                end
                                3: begin
                                    fifo_data_in <= data_out_D[31:16];
                                end
                                4: begin
                                    fifo_data_in <= data_out_E[31:16];
                                end
                                5: begin
                                    fifo_data_in <= data_out_F[31:16];
                                end
                                6: begin
                                    fifo_data_in <= data_out_G[31:16];
                                end
                                7: begin
                                    fifo_data_in <= data_out_H[31:16];
                                end
                                8: begin
                                    fifo_data_in <= data_out_I[31:16];
                                end
                                9: begin
                                    fifo_data_in <= data_out_J[31:16];
                                end
                                10: begin
                                    fifo_data_in <= data_out_K[31:16];
                                end
                                11: begin
                                    fifo_data_in <= data_out_L[31:16];
                                end
                                12: begin
                                    fifo_data_in <= data_out_M[31:16];
                                end
                                13: begin
                                    fifo_data_in <= data_out_N[31:16];
                                end
                                14: begin
                                    fifo_data_in <= data_out_O[31:16];
                                end
                                15: begin
                                    fifo_data_in <= data_out_P[31:16];
                                end

                            endcase

                        end
                    
                        channel = channel + 1;

                        if (channel == ZCHECK_COMMAND_SLOTS_PER_PERIOD) begin

                            channel = 0;

                            if (zcheck_dac_command_counter == ZCHECK_SINE_WAVE_NUM_COMMANDS - 1) begin
                                zcheck_dac_command_counter = 0;
                                zcheck_cycle_counter = zcheck_cycle_counter - 1;


                            end
                            else begin
                                zcheck_dac_command_counter = zcheck_dac_command_counter + 1;
                            end

                        end

                        if (zcheck_cycle_counter == 0) 
                            state = ZCHECK_DONE;
                        else
                            state = ZCHECK_REC_DATA_LOAD;

                    end

                end

                ZCHECK_DONE: begin
                    state = PRE_RESET;
                end

                CONFIG_DATA_LOAD: begin

                    start = 0;
                    
                    case(channel)
                        //general config start
                        0: begin //stim enable A magic number
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 32;
                            write_register_data = 0; //disable stim a
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        1: begin //stim enable B magic number
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 33;
                            write_register_data = 0; //disable stim b
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        2: begin //individual dc amp power on
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 38;
                            write_register_data = 16'hFFFF; //turn all dc amps on because of bug
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        3: begin //clear calibrate command
                            data_in_common = adc_clear_calibration_command;
                        end
                        4: begin //supply sensor and adc buffer bias current
                            //assuming max sampling rate per chip is 20 kS/s * 16 = 320 kS/s
                            //adc buffer bias = 4, mux bias = 18
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 0;
                            write_register_data = {4'b0, 6'd4, 6'd18};
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        5: begin //adc format, dsp offset removal, aux outputs
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 1;
                            //write_register_data = {8'b0,1'b1,7'b0}; //disable everything but enable weak miso, adc format is unsigned, not 2's comp
                            write_register_data = {8'b0,1'b1,1'b1,6'b010001}; //disable everything but enable weak miso and 2's comp format, enable dsp offset removal with 1
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        6: begin //zcheck control
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 2;
                            write_register_data = 0; //disable zcheck
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        7: begin //zcheck dac control
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 3;
                            write_register_data = 0; //disable zcheck dac
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        8: begin //chip upper bandwidth select
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 4;
                            write_register_data = 16'h0016; //rh1 sel2 = 0, rh1 sel1 = 22
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        9: begin //chip upper bandwidth select, upper bandwidth = 7.5 kHz
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 5;
                            write_register_data = 16'h0017; //rh2 sel2 = 0, rh2 sel1 = 23
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        10: begin //chip lower bandwidth select RL A
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 6;
                            write_register_data = 16'h00A8; //5 Hz
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        11: begin //chip lower bandwidth select RL B
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 7;
                            write_register_data = 16'h000A; //1 khz
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        12: begin //ac amp power up
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 8;
                            write_register_data = 16'hFFFF; //power all ac amps on
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        13: begin //amp fast settle, analog switch close to gnd to recover from transients, triggered
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 10;
                            write_register_data = 0; //open all switches but do not trigger
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        14: begin //amp lower cutoff frequency select, 1 = RL_A, 0 = RL_B 
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 12;
                            write_register_data = 16'hFFFF; //all amps have the lower lower cut off frequency
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        15: begin //stimulator turn on
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 42;
                            write_register_data = 0; //turn off all stimulators
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        16: begin //charge recovery switch to reset electrode potential to stim_gnd
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 46;
                            write_register_data = 0; //open recovery switch
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        17: begin //enable current-limited charge recovery dac
                            U_FLAG = 0;
                            M_FLAG = 0;
                            write_register_address = 48;
                            write_register_data = 0; //do not connect electrodes to dac
                            data_in_common = {2'b10, U_FLAG, M_FLAG, 4'd0, write_register_address, write_register_data};
                        end
                        default: begin //by default send read intan id dummy commands
                            U_FLAG = 1; //trigger all previous registers
                            M_FLAG = 0;
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in_common = {2'b11, U_FLAG, M_FLAG, 4'd0, read_register_address, 16'd0};
                        end
                    endcase

                    data_in_A = data_in_common;
                    data_in_B = data_in_common;
                    data_in_C = data_in_common;
                    data_in_D = data_in_common;
                    data_in_E = data_in_common;
                    data_in_F = data_in_common;
                    data_in_G = data_in_common;
                    data_in_H = data_in_common;
                    data_in_I = data_in_common;
                    data_in_J = data_in_common;
                    data_in_K = data_in_common;
                    data_in_L = data_in_common;
                    data_in_M = data_in_common;
                    data_in_N = data_in_common;
                    data_in_O = data_in_common;
                    data_in_P = data_in_common;

                    if (done_all == 0)
                        state = CONFIG_DATA_TX;

                end

                CONFIG_DATA_TX: begin
                    start = 1;
                    state = CONFIG_DATA_RX;
                end

                CONFIG_DATA_RX: begin
                    start = 0;
                    if (&done_all)begin
                        channel = channel + 1;
                        if (channel == DEFAULT_CHANNELS)
                            state = CONFIG_DONE;
                        else
                            state = CONFIG_DATA_LOAD;
                    end
                end

                CONFIG_DONE: begin
                    state = PRE_RESET;
                end
                
            endcase
        end

    end

endmodule