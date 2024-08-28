module rhs_256 (
    input wire rstn,
    input wire clk,

    input wire config_start,
    input wire record_start,
    input wire zcheck_start,

    input wire [11:0] zcheck_global_channel, //0 - 2047, zcheck one channel at a time
    input wire [1:0] zcheck_scale,
    //(binary) = (cap)(current amplitude at 1 kHz sine wave) (max voltage for 1 Mohm electrode)
    //00 = 0.1pF 0.38nA 0.38mV
    //01 = 1.0pF 3.8nA 3.8mV
    //11 = 10pF 38nA 38mV (saturates past 5mV limit)
    //selects AC cap that transforms DAC zcheck test voltage to current
    //SEEG contacts expected to be below 100k
    //11 = 10pF 38nA 3.8mV (should be ok)

    output reg [2559:0] zcheck_data_out,
    //16 * 20 * 8 = 2560
    //this is 8 cycles of 1kHz sine at 20 kS/s for one channel
    //depending on the zcheck channel, this will be 8 sine cycles of zcheck recording for all 32 rhd chips for 16-probe system


    output wire busy,
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

    output reg[32767:0] data_out, //1 sample of all 2048 channels

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

    output wire [7:0] channel_out,

    input wire sampling_rate_20k //manual toggle between 2.5k or 20k sampling rate needed for proper bandwidth config

);

    localparam READY = 0, REC_DATA_LOAD = 1, REC_DATA_TX = 2, REC_DATA_RX = 3, REC_DONE = 4, CONFIG_DATA_LOAD = 5, CONFIG_DATA_TX = 6, CONFIG_DATA_RX = 7, CONFIG_DONE = 8, ZCHECK_CONFIG_DATA_LOAD = 9, ZCHECK_CONFIG_DATA_TX = 10, ZCHECK_CONFIG_DATA_RX = 11, ZCHECK_REC_DATA_LOAD = 12, ZCHECK_REC_DATA_TX = 13, ZCHECK_REC_DATA_RX = 14, ZCHECK_DONE = 15, RESET = 16, PRE_RESET = 17;

    localparam DEFAULT_CHANNELS = 40; //34 recording channels + 6 for other commands

    localparam CHANNELS_PER_ADC = 32;
    localparam SPI_CONVERT_DELAY = 2; //Intan specifies two cycle delay for adc conversion to come back

    localparam ADC_SAMPLE_BIT_RESOLUTION = 16;
    localparam INTAN_CHIP_ID_REG = 63;

    localparam CHANNELS_PER_CHIP = CHANNELS_PER_ADC * 2;
    localparam CHIPS_PER_PROBE = 2;
    localparam CHANNELS_PER_PROBE = CHANNELS_PER_CHIP * CHIPS_PER_PROBE;



    reg start = 0;

    reg [7:0] state = READY;

    reg [7:0] channel = 0;
    assign channel_out = channel;


    localparam ZCHECK_CYCLES = 8;
    reg [3:0] zcheck_cycle_counter = ZCHECK_CYCLES;
    reg zcheck_data_sample_debug = 0;
    localparam ZCHECK_FS = 20; //zcheck happens at 20kS/s for a 1kHz wave
    localparam ZCHECK_COMMAND_SLOTS_PER_PERIOD = 5;
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
    wire [5:0] zcheck_chip_channel;
    assign zcheck_chip_channel = zcheck_global_channel % CHANNELS_PER_CHIP;


    wire zcheck_adc_select;
    assign zcheck_adc_select = zcheck_chip_channel / CHANNELS_PER_ADC; //select adc a (0) or b of chip X_(1)
    wire zcheck_chip_select;
    assign zcheck_chip_select = (zcheck_global_channel % CHANNELS_PER_PROBE) / CHANNELS_PER_CHIP; //select chip X1 (0) or X2 (1)

    reg [15:0] zcheck_adc_sample = 0;


    wire [5:0] zcheck_adc_channel;
    assign zcheck_adc_channel = zcheck_chip_channel % CHANNELS_PER_ADC;

    wire [4:0] zcheck_probe_select;
    assign zcheck_probe_select = zcheck_global_channel / CHANNELS_PER_PROBE;



    wire [15:0] adc_convert_zcheck_command;
    assign adc_convert_zcheck_command = {2'd0, zcheck_adc_channel, 7'd0, DSP_OFFSET_REMOVAL};

    wire [7:0] zcheck_data_gather_index;
    assign zcheck_data_gather_index = zcheck_dac_command_counter + ZCHECK_SINE_WAVE_NUM_COMMANDS * (ZCHECK_CYCLES - zcheck_cycle_counter);

    wire [15:0] busy_all;

    wire [15:0] done_all;

    wire [7:0] data_gather_index;
    assign data_gather_index = channel - 2;

    reg sampling_rate_20k_zcheck = 0;

    wire high_sampling_rate; //for config of amp bandwidths
    assign high_sampling_rate = sampling_rate_20k || sampling_rate_20k_zcheck; //either high cut off is required for high fs of normal recording or by nature of zcheck mode

    wire [511:0] data_out_slice_debug;
    assign data_out_slice_debug = data_out[(32767):(32256)];

    reg [5:0] write_register_address = 0;
    reg [7:0] write_register_data = 0;

    reg [5:0] read_register_address = 0;
    wire [7:0] read_register_data = 0;


    reg U_FLAG = 0; //updates all triggered registers to new values that were previously programmed
    reg M_FLAG = 0; //set to one to clear compliance monitor register 40
    reg D_FLAG = 0; //sample DC low gain amp, lower 10 bits of result
    reg H_FLAG = 1; //ADCs have offset removal for rapid recovery from transient, do not change
    
    wire [31:0] adc_convert_command;
    assign adc_convert_command = {2'b0, 1'b0, 1'b0, 1'b0, H_FLAG, 4'b0, channel[5:0], 16'b0};

    wire [31:0] adc_calibration_command;
    assign adc_calibration_command = 32'01010101000000000000000000000000;

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

    assign done = (state == REC_DONE) || (state == CONFIG_DONE) || (state == ZCHECK_DONE);
    assign busy = (state != READY);


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
        .SCLK(SCLK),
        .MOSI(MOSI_B),
        .MISO(MISO_B),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_C),
        .MISO(MISO_C),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_D),
        .MISO(MISO_D),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_E),
        .MISO(MISO_E),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_A),
        .MISO(MISO_A),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_G),
        .MISO(MISO_G),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_H),
        .MISO(MISO_H),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_I),
        .MISO(MISO_I),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_J),
        .MISO(MISO_J),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_K),
        .MISO(MISO_K),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_L),
        .MISO(MISO_L),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_M),
        .MISO(MISO_M),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_N),
        .MISO(MISO_N),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_O),
        .MISO(MISO_O),
        .CS(CS),
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
        .SCLK(SCLK),
        .MOSI(MOSI_P),
        .MISO(MISO_P),
        .CS(CS),
        .start(start),
        .data_in(data_in_P),
        .data_out(data_out_P),
        .oversample_offset(oversample_offset_P),
        .busy(busy_all[15]),
        .done(done_all[15])
    );


    always @(posedge clk) begin

        if (!rstn) begin
            state = RESET;
        end
        else begin
            case(state)

                PRE_RESET: begin //this is to provide a whole extra clock cycle before going into reset so external logic can have more time to capture the data out before it gets reset
                    state = RESET;
                end

                RESET: begin
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
                    start = 0;
                    channel = 0;
                    data_out = 0;
                    zcheck_cycle_counter = ZCHECK_CYCLES;
                    zcheck_dac_command = 0;
                    zcheck_data_sample_debug = 0;
                    sampling_rate_20k_zcheck = 0;
                    zcheck_data_out = 0;
                    zcheck_adc_sample = 0;
                    state = READY;
                end

                READY: begin
                    if (config_start)
                        state = CONFIG_DATA_LOAD;
                    else if (record_start)
                        state = REC_DATA_LOAD;
                    else if (zcheck_start) begin
                        sampling_rate_20k_zcheck = 1;
                        state = CONFIG_DATA_LOAD;
                    end
                end

                CONFIG_DATA_LOAD: begin

                    start = 0;
                    
                    case(channel)
                        //general config start
                        0: begin //adc config and amp fast settle switch
                            write_register_address = 0;
                            write_register_data = 8'b11011110;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        1: begin //supply sensor and adc buffer bias current
                            write_register_address = 1;
                            write_register_data = high_sampling_rate ? 8'b00000010 : 8'b00100000; // 2 VS 32
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        2: begin //mux bias current
                            write_register_address = 2;
                            write_register_data = high_sampling_rate ? 8'b00000100 : 8'b00101000; // 4 VS 40
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        3: begin //mux load, temp sensor, aux dig output
                            write_register_address = 3;
                            write_register_data = 0;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        4: begin //adc output format and dsp offset removal
                            write_register_address = 4;
                            write_register_data = 8'b11000000; //weak MISO and two's complement format, no DSP
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        5: begin //zcheck control power
                            write_register_address = 5;
                            write_register_data = 0; //no zcheck
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        6: begin //zcheck control DAC
                            write_register_address = 6;
                            write_register_data = 0; //no zcheck
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        7: begin //zcheck control amp select
                            write_register_address = 7;
                            write_register_data = 0; //no zcheck
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        8: begin //RH1: use off chip bandwidth res and DAC1 upper cut off for amps
                            write_register_address = 8;
                            write_register_data = high_sampling_rate ? 8'b00010110 : 8'b00101110;   //  22 (7.5 khz)   VS  46 (1 khz) upper cut-off frequency DAC 1
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        9: begin //RH1: enable aux1 ADC and DAC2 upper cut off for amps
                            write_register_address = 9;
                            write_register_data = high_sampling_rate ? 8'b00000000 : 8'b00000010;   //  0    VS  2  DAC 2 upper cut off, matches REG8
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        10: begin //RH2: use off chip bandwidth res and DAC1 upper cut off for amps
                            write_register_address = 10;
                            write_register_data = high_sampling_rate ? 8'b00010111 : 8'b00011110;   //  23 (7.5 khz)   VS  30 (1 khz) same as above
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        11: begin //RH2: enable aux2 ADC and DAC2 upper cut off for amps
                            write_register_address = 11;
                            write_register_data = high_sampling_rate ? 8'b00000000 : 8'b00000011;   //  0    VS  3 same as above
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        12: begin //use off chip lower cut off res and on chip res for low cut off DAC1
                            write_register_address = 12;
                            write_register_data = 8'b00100011; //35 for DAC1 0.5 hz lower cut off
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        13: begin //enable aux3 input, and on chip res for low cut off DAC2 and DAC3
                            write_register_address = 13;
                            write_register_data = 8'b00010001; //17 for DAC2, DAC3 0.5 hz lower cut off
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        //general config end
                        
                        //power up amplifiers 0-63 start

                        14: begin //0 - 7
                            write_register_address = 14;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        15: begin //8 - 15
                            write_register_address = 15;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        16: begin //16 - 23
                            write_register_address = 16;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        17: begin //24 - 31
                            write_register_address = 17;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        18: begin //32 - 39
                            write_register_address = 18;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        19: begin //40 - 47
                            write_register_address = 19;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        20: begin //48 - 55
                            write_register_address = 20;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end
                        21: begin //56 - 63
                            write_register_address = 21;
                            write_register_data = 8'b11111111;
                            data_in = {2'b10, write_register_address, write_register_data};
                        end

                        //power up amplifiers 0-63 end

                        //initiate adc calibration start
                        //at least 9 cycles of commands must follow calibration command before anything else happens
                        22: begin
                            data_in = adc_calibration_command;
                        end
                        23: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        24: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        25: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        26: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        27: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        28: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        29: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        30: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        31: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        32: begin
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                        //initiate adc calibration end

                        default: begin //by default send read intan id dummy commands
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = {2'b11, read_register_address, 8'd0};
                        end
                    endcase

                    if (done_all == 0)
                        state = CONFIG_DATA_TX;

                end
                
            endcase
        end

    end

endmodule