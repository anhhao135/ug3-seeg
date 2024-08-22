module rhd_2048 (
    input wire rstn,
    input wire clk,

    input wire config_start,
    input wire record_start,
    input wire zcheck_start, //zcheck will always run on full speed clock

    output wire busy,
    output wire done,

    input wire [1:0] record_clk_divide, //clock can be divided by 1, 2, 4, or 8, 2 ^ N

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

    output reg CS,
    output reg SCLK,
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

);

    localparam READY = 0, REC_DATA_LOAD = 1, REC_DATA_TX = 2, REC_DATA_RX = 3, REC_DONE = 4;
    localparam DEFAULT_CHANNELS = 40; //34 recording channels + 6 for other commands

    reg [15:0] data_in = 0;
    reg start = 0;

    reg [3:0] state = READY;

    reg [7:0] channel = 


    rhd_spi_master A1(
        .clk(clk),
        .rstn(rstn),
        .SCLK(SCLK),
        .MOSI(MOSI),
        .MISO(MISO1_A),
        .CS(CS),
        .start(start),
        .data_in(data_in),
        .oversample_offset(oversample_offset_A1)
    );

    always @(posedge clk) begin

        if (!rstn) begin
            state = READY;
            data_in = 0;
            start = 0;
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
                    case(channel)
                    endcase
                end
            endcase
        end

    end

endmodule