module rhd_2048 (
    input wire rstn,
    input wire clk,

    input wire config_start,
    input wire record_start,
    input wire zcheck_start,

    output wire busy,
    output wire done,

    input wire [7:0] oversample_offset_A1,
    input wire [7:0] oversample_offset_A2,
    input wire [7:0] oversample_offset_B1,
    input wire [7:0] oversample_offset_B2,
    input wire [7:0] oversample_offset_C1,
    input wire [7:0] oversample_offset_C2,
    input wire [7:0] oversample_offset_D1,
    input wire [7:0] oversample_offset_D2,
    input wire [7:0] oversample_offset_E1,
    input wire [7:0] oversample_offset_E2,
    input wire [7:0] oversample_offset_F1,
    input wire [7:0] oversample_offset_F2,
    input wire [7:0] oversample_offset_G1,
    input wire [7:0] oversample_offset_G2,
    input wire [7:0] oversample_offset_H1,
    input wire [7:0] oversample_offset_H2,
    input wire [7:0] oversample_offset_I1,
    input wire [7:0] oversample_offset_I2,
    input wire [7:0] oversample_offset_J1,
    input wire [7:0] oversample_offset_J2,
    input wire [7:0] oversample_offset_K1,
    input wire [7:0] oversample_offset_K2,
    input wire [7:0] oversample_offset_L1,
    input wire [7:0] oversample_offset_L2,
    input wire [7:0] oversample_offset_M1,
    input wire [7:0] oversample_offset_M2,
    input wire [7:0] oversample_offset_N1,
    input wire [7:0] oversample_offset_N2,
    input wire [7:0] oversample_offset_O1,
    input wire [7:0] oversample_offset_O2,
    input wire [7:0] oversample_offset_P1,
    input wire [7:0] oversample_offset_P2,

    output reg[1023:0] data_out,

    output wire CS,
    output wire SCLK,
    output wire MOSI,

    input wire MISO1_A,
    input wire MISO2_A,

    input wire MISO1_B,
    input wire MISO2_B,

    input wire MISO1_C,
    input wire MISO2_C,

    input wire MISO1_D,
    input wire MISO2_D,

    input wire MISO1_E,
    input wire MISO2_E,

    input wire MISO1_F,
    input wire MISO2_F,

    input wire MISO1_G,
    input wire MISO2_G,

    input wire MISO1_H,
    input wire MISO2_H,

    input wire MISO1_I,
    input wire MISO2_I,

    input wire MISO1_J,
    input wire MISO2_J,

    input wire MISO1_K,
    input wire MISO2_K,

    input wire MISO1_L,
    input wire MISO2_L,

    input wire MISO1_M,
    input wire MISO2_M,

    input wire MISO1_N,
    input wire MISO2_N,

    input wire MISO1_O,
    input wire MISO2_O,

    input wire MISO1_P,
    input wire MISO2_P,

    output wire [7:0] channel_out

);

    localparam READY = 0, REC_DATA_LOAD = 1, REC_DATA_TX = 2, REC_DATA_RX = 3, REC_DONE = 4;
    localparam DEFAULT_CHANNELS = 40; //34 recording channels + 6 for other commands
    localparam CHANNELS_PER_ADC = 32;
    localparam SPI_CONVERT_DELAY = 2; //Intan specifies two cycle delay for adc conversion to come back

    localparam ADC_SAMPLE_BIT_RESOLUTION = 16;
    localparam INTAN_CHIP_ID_REG = 63;

    reg DSP_OFFSET_REMOVAL = 1; //ADCs have offset removal for rapid recovery from transient

    reg [15:0] data_in = 0;
    reg start = 0;

    reg [3:0] state = READY;

    reg [7:0] channel = 0;
    assign channel_out = channel;

    wire [1:0] busy_all;

    wire [1:0] done_all;

    wire [7:0] data_gather_index;
    assign data_gather_index = channel - 2;

    

    reg [5:0] write_register_address = 0;
    reg [7:0] write_register_data = 0;
    wire [15:0] write_register_command;
    assign write_register_command = {2'b10, write_register_address, write_register_data};

    reg [5:0] read_register_address = 0;
    wire [7:0] read_register_data = 0;
    wire [15:0] read_register_command;
    assign read_register_command = {2'b11, read_register_address, 8'd0};
    
    wire [15:0] adc_convert_command;
    assign adc_convert_command = {2'd0, channel[5:0], 7'd0, DSP_OFFSET_REMOVAL};

    wire [15:0] data_out_a_A1;
    wire [15:0] data_out_b_A1;
    wire [15:0] data_out_a_A2;
    wire [15:0] data_out_b_A2;

    assign done = (state == REC_DONE);
    assign busy = (state != READY);


    rhd_spi_master A1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_A),
        .CS(CS),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_A1),
        .b_data_out(data_out_b_A1),
        .oversample_offset(oversample_offset_A1),
        .busy(busy_all[0]),
        .done(done_all[0])
    );

    rhd_spi_master A2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_A),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_A2),
        .b_data_out(data_out_b_A2),
        .oversample_offset(oversample_offset_A2),
        .busy(busy_all[1]),
        .done(done_all[1])
    );


    always @(posedge clk) begin

        if (!rstn) begin
            state = READY;
            data_in = 0;
            start = 0;
            channel = 0;
            data_out = 0;
        end
        else begin
            case(state)

                READY: begin
                    data_in = 0;
                    start = 0;
                    if (record_start)
                        state = REC_DATA_LOAD;
                end

                REC_DATA_LOAD: begin

                    if (channel < CHANNELS_PER_ADC)
                        data_in = adc_convert_command;
                    else begin
                        read_register_address = INTAN_CHIP_ID_REG;
                        data_in = read_register_command;
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
                            data_out[(data_gather_index * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_A1;
                            data_out[((CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_A1;
                        end
                        channel = channel + 1;
                        if (channel == DEFAULT_CHANNELS)
                            state = REC_DONE;
                        else
                            state = REC_DATA_LOAD;
                    end

                end

                REC_DONE: begin
                    state = READY;
                end
            endcase
        end

    end

endmodule