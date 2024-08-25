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

    output reg[32767:0] data_out,

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

    output wire [7:0] channel_out,

    input wire sampling_rate_20k

);

    localparam READY = 0, REC_DATA_LOAD = 1, REC_DATA_TX = 2, REC_DATA_RX = 3, REC_DONE = 4, CONFIG_DATA_LOAD = 5, CONFIG_DATA_TX = 6, CONFIG_DATA_RX = 7, CONFIG_DONE = 8;
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

    wire [31:0] busy_all;

    wire [31:0] done_all;

    wire [7:0] data_gather_index;
    assign data_gather_index = channel - 2;

    wire high_sampling_rate;
    assign high_sampling_rate = sampling_rate_20k;

    wire [511:0] data_out_slice_debug;
    assign data_out_slice_debug = data_out[(32767):(32256)];

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

    wire [15:0] data_out_a_B1;
    wire [15:0] data_out_b_B1;
    wire [15:0] data_out_a_B2;
    wire [15:0] data_out_b_B2;

    wire [15:0] data_out_a_C1;
    wire [15:0] data_out_b_C1;
    wire [15:0] data_out_a_C2;
    wire [15:0] data_out_b_C2;

    wire [15:0] data_out_a_D1;
    wire [15:0] data_out_b_D1;
    wire [15:0] data_out_a_D2;
    wire [15:0] data_out_b_D2;

    wire [15:0] data_out_a_E1;
    wire [15:0] data_out_b_E1;
    wire [15:0] data_out_a_E2;
    wire [15:0] data_out_b_E2;

    wire [15:0] data_out_a_F1;
    wire [15:0] data_out_b_F1;
    wire [15:0] data_out_a_F2;
    wire [15:0] data_out_b_F2;

    wire [15:0] data_out_a_G1;
    wire [15:0] data_out_b_G1;
    wire [15:0] data_out_a_G2;
    wire [15:0] data_out_b_G2;

    wire [15:0] data_out_a_H1;
    wire [15:0] data_out_b_H1;
    wire [15:0] data_out_a_H2;
    wire [15:0] data_out_b_H2;

    wire [15:0] data_out_a_I1;
    wire [15:0] data_out_b_I1;
    wire [15:0] data_out_a_I2;
    wire [15:0] data_out_b_I2;

    wire [15:0] data_out_a_J1;
    wire [15:0] data_out_b_J1;
    wire [15:0] data_out_a_J2;
    wire [15:0] data_out_b_J2;

    wire [15:0] data_out_a_K1;
    wire [15:0] data_out_b_K1;
    wire [15:0] data_out_a_K2;
    wire [15:0] data_out_b_K2;

    wire [15:0] data_out_a_L1;
    wire [15:0] data_out_b_L1;
    wire [15:0] data_out_a_L2;
    wire [15:0] data_out_b_L2;

    wire [15:0] data_out_a_M1;
    wire [15:0] data_out_b_M1;
    wire [15:0] data_out_a_M2;
    wire [15:0] data_out_b_M2;

    wire [15:0] data_out_a_N1;
    wire [15:0] data_out_b_N1;
    wire [15:0] data_out_a_N2;
    wire [15:0] data_out_b_N2;

    wire [15:0] data_out_a_O1;
    wire [15:0] data_out_b_O1;
    wire [15:0] data_out_a_O2;
    wire [15:0] data_out_b_O2;

    wire [15:0] data_out_a_P1;
    wire [15:0] data_out_b_P1;
    wire [15:0] data_out_a_P2;
    wire [15:0] data_out_b_P2;

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

    rhd_spi_master B1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_B),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_B1),
        .b_data_out(data_out_b_B1),
        .oversample_offset(oversample_offset_B1),
        .busy(busy_all[2]),
        .done(done_all[2])
    );

    rhd_spi_master B2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_B),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_B2),
        .b_data_out(data_out_b_B2),
        .oversample_offset(oversample_offset_B2),
        .busy(busy_all[3]),
        .done(done_all[3])
    );

    rhd_spi_master C1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_C),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_C1),
        .b_data_out(data_out_b_C1),
        .oversample_offset(oversample_offset_C1),
        .busy(busy_all[4]),
        .done(done_all[4])
    );

    rhd_spi_master C2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_C),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_C2),
        .b_data_out(data_out_b_C2),
        .oversample_offset(oversample_offset_C2),
        .busy(busy_all[5]),
        .done(done_all[5])
    );

    rhd_spi_master D1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_D),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_D1),
        .b_data_out(data_out_b_D1),
        .oversample_offset(oversample_offset_D1),
        .busy(busy_all[6]),
        .done(done_all[6])
    );

    rhd_spi_master D2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_D),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_D2),
        .b_data_out(data_out_b_D2),
        .oversample_offset(oversample_offset_D2),
        .busy(busy_all[7]),
        .done(done_all[7])
    );

    rhd_spi_master E1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_E),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_E1),
        .b_data_out(data_out_b_E1),
        .oversample_offset(oversample_offset_E1),
        .busy(busy_all[8]),
        .done(done_all[8])
    );

    rhd_spi_master E2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_E),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_E2),
        .b_data_out(data_out_b_E2),
        .oversample_offset(oversample_offset_E2),
        .busy(busy_all[9]),
        .done(done_all[9])
    );

    rhd_spi_master F1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_F),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_F1),
        .b_data_out(data_out_b_F1),
        .oversample_offset(oversample_offset_F1),
        .busy(busy_all[10]),
        .done(done_all[10])
    );

    rhd_spi_master F2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_F),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_F2),
        .b_data_out(data_out_b_F2),
        .oversample_offset(oversample_offset_F2),
        .busy(busy_all[11]),
        .done(done_all[11])
    );

    rhd_spi_master G1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_G),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_G1),
        .b_data_out(data_out_b_G1),
        .oversample_offset(oversample_offset_G1),
        .busy(busy_all[12]),
        .done(done_all[12])
    );

    rhd_spi_master G2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_G),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_G2),
        .b_data_out(data_out_b_G2),
        .oversample_offset(oversample_offset_G2),
        .busy(busy_all[13]),
        .done(done_all[13])
    );

    rhd_spi_master H1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_H),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_H1),
        .b_data_out(data_out_b_H1),
        .oversample_offset(oversample_offset_H1),
        .busy(busy_all[14]),
        .done(done_all[14])
    );

    rhd_spi_master H2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_H),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_H2),
        .b_data_out(data_out_b_H2),
        .oversample_offset(oversample_offset_H2),
        .busy(busy_all[15]),
        .done(done_all[15])
    );

    rhd_spi_master I1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_I),
        .CS(CS),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_I1),
        .b_data_out(data_out_b_I1),
        .oversample_offset(oversample_offset_I1),
        .busy(busy_all[16]),
        .done(done_all[16])
    );

    rhd_spi_master I2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_I),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_I2),
        .b_data_out(data_out_b_I2),
        .oversample_offset(oversample_offset_I2),
        .busy(busy_all[17]),
        .done(done_all[17])
    );

    rhd_spi_master J1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_J),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_J1),
        .b_data_out(data_out_b_J1),
        .oversample_offset(oversample_offset_J1),
        .busy(busy_all[18]),
        .done(done_all[18])
    );

    rhd_spi_master J2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_J),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_J2),
        .b_data_out(data_out_b_J2),
        .oversample_offset(oversample_offset_J2),
        .busy(busy_all[19]),
        .done(done_all[19])
    );

    rhd_spi_master K1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_K),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_K1),
        .b_data_out(data_out_b_K1),
        .oversample_offset(oversample_offset_K1),
        .busy(busy_all[20]),
        .done(done_all[20])
    );

    rhd_spi_master K2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_K),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_K2),
        .b_data_out(data_out_b_K2),
        .oversample_offset(oversample_offset_K2),
        .busy(busy_all[21]),
        .done(done_all[21])
    );

    rhd_spi_master L1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_L),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_L1),
        .b_data_out(data_out_b_L1),
        .oversample_offset(oversample_offset_L1),
        .busy(busy_all[22]),
        .done(done_all[22])
    );

    rhd_spi_master L2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_L),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_L2),
        .b_data_out(data_out_b_L2),
        .oversample_offset(oversample_offset_L2),
        .busy(busy_all[23]),
        .done(done_all[23])
    );

    rhd_spi_master M1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_M),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_M1),
        .b_data_out(data_out_b_M1),
        .oversample_offset(oversample_offset_M1),
        .busy(busy_all[24]),
        .done(done_all[24])
    );

    rhd_spi_master M2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_M),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_M2),
        .b_data_out(data_out_b_M2),
        .oversample_offset(oversample_offset_M2),
        .busy(busy_all[25]),
        .done(done_all[25])
    );

    rhd_spi_master N1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_N),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_N1),
        .b_data_out(data_out_b_N1),
        .oversample_offset(oversample_offset_N1),
        .busy(busy_all[26]),
        .done(done_all[26])
    );

    rhd_spi_master N2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_N),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_N2),
        .b_data_out(data_out_b_N2),
        .oversample_offset(oversample_offset_N2),
        .busy(busy_all[27]),
        .done(done_all[27])
    );

    rhd_spi_master O1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_O),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_O1),
        .b_data_out(data_out_b_O1),
        .oversample_offset(oversample_offset_O1),
        .busy(busy_all[28]),
        .done(done_all[28])
    );

    rhd_spi_master O2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_O),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_O2),
        .b_data_out(data_out_b_O2),
        .oversample_offset(oversample_offset_O2),
        .busy(busy_all[29]),
        .done(done_all[29])
    );

    rhd_spi_master P1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO1_P),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_P1),
        .b_data_out(data_out_b_P1),
        .oversample_offset(oversample_offset_P1),
        .busy(busy_all[30]),
        .done(done_all[30])
    );

    rhd_spi_master P2(
        .clk(clk),
        .rstn(rstn),
        .SCLK(),
        .MOSI(),
        .MISO(MISO2_P),
        .CS(),
        .start(start),
        .data_in(data_in),
        .a_data_out(data_out_a_P2),
        .b_data_out(data_out_b_P2),
        .oversample_offset(oversample_offset_P2),
        .busy(busy_all[31]),
        .done(done_all[31])
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
                    channel = 0;
                    if (config_start)
                        state = CONFIG_DATA_LOAD;
                    else if (record_start)
                        state = REC_DATA_LOAD;
                end

                CONFIG_DATA_LOAD: begin
                    
                    start = 0;
                    data_in = write_register_command;

                    case(channel)
                        0: begin //adc config and amp fast settle switch
                            write_register_address = 0;
                            write_register_data = 8'b11011110;
                        end
                        1: begin //supply sensor and adc buffer bias current
                            write_register_address = 1;
                            write_register_data = high_sampling_rate ? 8'b00000010 : 8'b00100000; // 2 VS 32
                        end
                        2: begin //mux bias current
                            write_register_address = 2;
                            write_register_data = high_sampling_rate ? 8'b00000100 : 8'b00101000; // 4 VS 40
                        end
                        3: begin //mux load, temp sensor, aux dig output
                            write_register_address = 3;
                            write_register_data = 0;
                        end
                        4: begin //adc output format and dsp offset removal
                            write_register_address = 4;
                            write_register_data = 8'b11000000; //weak MISO and two's complement format, no DSP
                        end
                        5: begin //zcheck control power
                            write_register_address = 5;
                            write_register_data = 0; //no zcheck
                        end
                        6: begin //zcheck control DAC
                            write_register_address = 6;
                            write_register_data = 0; //no zcheck
                        end
                        7: begin //zcheck control amp select
                            write_register_address = 7;
                            write_register_data = 0; //no zcheck
                        end
                        8: begin //RH1: use off chip bandwidth res and DAC1 upper cut off for amps
                            write_register_address = 8;
                            write_register_data = high_sampling_rate ? 8'b00010110 : 8'b00101110;   //  22 (7.5 khz)   VS  46 (1 khz) upper cut-off frequency DAC 1
                        end
                        9: begin //RH1: enable aux1 ADC and DAC2 upper cut off for amps
                            write_register_address = 9;
                            write_register_data = high_sampling_rate ? 8'b00000000 : 8'b00000010;   //  0    VS  2  DAC 2 upper cut off, matches REG8
                        end
                        10: begin //RH2: use off chip bandwidth res and DAC1 upper cut off for amps
                            write_register_address = 10;
                            write_register_data = high_sampling_rate ? 8'b00010111 : 8'b00011110;   //  23 (7.5 khz)   VS  30 (1 khz) same as above
                        end
                        11: begin //RH2: enable aux2 ADC and DAC2 upper cut off for amps
                            write_register_address = 11;
                            write_register_data = high_sampling_rate ? 8'b00000000 : 8'b00000011;   //  0    VS  3 same as above
                        end
                        12: begin //use off chip lower cut off res and on chip res for low cut off DAC1
                            write_register_address = 12;
                            write_register_data = 8'b00100011; //35 for DAC1 0.5 hz lower cut off
                        end
                        13: begin //enable aux3 input, and on chip res for low cut off DAC2 and DAC3
                            write_register_address = 13;
                            write_register_data = 8'b00010001; //17 for DAC2, DAC3 0.5 hz lower cut off
                        end
                        default: begin //by default send read intan id dummy commands
                            read_register_address = INTAN_CHIP_ID_REG;
                            data_in = read_register_command;
                        end
                    endcase

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
                    state = READY;
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

                            data_out[((0 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_A1;
                            data_out[((1 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_A1;
                            data_out[((2 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_A2;
                            data_out[((3 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_A2;
                            
                            data_out[((4 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_B1;
                            data_out[((5 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_B1;
                            data_out[((6 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_B2;
                            data_out[((7 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_B2;

                            data_out[((8 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_C1;
                            data_out[((9 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_C1;
                            data_out[((10 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_C2;
                            data_out[((11 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_C2;

                            data_out[((12 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_D1;
                            data_out[((13 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_D1;
                            data_out[((14 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_D2;
                            data_out[((15 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_D2;

                            data_out[((16 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_E1;
                            data_out[((17 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_E1;
                            data_out[((18 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_E2;
                            data_out[((19 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_E2;
                            
                            data_out[((20 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_F1;
                            data_out[((21 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_F1;
                            data_out[((22 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_F2;
                            data_out[((23 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_F2;

                            data_out[((24 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_G1;
                            data_out[((25 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_G1;
                            data_out[((26 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_G2;
                            data_out[((27 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_G2;

                            data_out[((28 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_H1;
                            data_out[((29 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_H1;
                            data_out[((30 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_H2;
                            data_out[((31 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_H2;

                            data_out[((32 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_I1;
                            data_out[((33 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_I1;
                            data_out[((34 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_I2;
                            data_out[((35 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_I2;
                            
                            data_out[((36 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_J1;
                            data_out[((37 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_J1;
                            data_out[((38 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_J2;
                            data_out[((39 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_J2;

                            data_out[((40 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_K1;
                            data_out[((41 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_K1;
                            data_out[((42 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_K2;
                            data_out[((43 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_K2;

                            data_out[((44 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_L1;
                            data_out[((45 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_L1;
                            data_out[((46 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_L2;
                            data_out[((47 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_L2;

                            data_out[((48 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_M1;
                            data_out[((49 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_M1;
                            data_out[((50 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_M2;
                            data_out[((51 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_M2;
                            
                            data_out[((52 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_N1;
                            data_out[((53 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_N1;
                            data_out[((54 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_N2;
                            data_out[((55 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_N2;

                            data_out[((56 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_O1;
                            data_out[((57 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_O1;
                            data_out[((58 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_O2;
                            data_out[((59 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_O2;

                            data_out[((60 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_P1;
                            data_out[((61 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_P1;
                            data_out[((62 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_a_P2;
                            data_out[((63 * CHANNELS_PER_ADC + data_gather_index) * ADC_SAMPLE_BIT_RESOLUTION) +: ADC_SAMPLE_BIT_RESOLUTION] <= data_out_b_P2;
                            
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