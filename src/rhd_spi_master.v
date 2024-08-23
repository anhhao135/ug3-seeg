module  rhd_spi_master (
    output reg MOSI,
    output reg CS,
    output wire SCLK,
    input wire MISO,
    input wire clk,
    output wire busy,
    input wire rstn,
    input wire start,
    output wire done,
    input wire [15:0] data_in,
    output reg [15:0] a_data_out,
    output reg [15:0] b_data_out,
    input wire [7:0] oversample_offset
);
    localparam READY = 0, PRE_BUSY = 1, BUSY = 2, POST_BUSY = 3, DONE = 4;

    reg [2:0] state;
    
    assign busy = (state == BUSY);
    assign done = (state == DONE);
    
    localparam CLK_COUNTER_DEFAULT = 125;
    localparam PRE_POST_BUSY_PADDING_DEFAULT = 8;
    localparam X8_OVERSAMPLE_CLK_OFFSET = 32; //extra 32 cycles of CLK after last falling edge of SCLK to oversample incoming MISO line
    localparam DONE_CS_HOLD_TIME = 16;
    localparam INDEX_SAMPLED_DEFAULT = 16;

    reg [8:0] clk_counter = CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET;
    reg [7:0] padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
    reg [7:0] done_cs_hold_counter = DONE_CS_HOLD_TIME;
    reg MISO_A_sampled = 0;
    reg MISO_B_sampled = 0;
    reg MOSI_send = 0;
    reg [4:0] index_sampled = INDEX_SAMPLED_DEFAULT;

    wire SCLK_enable;
    assign SCLK_enable = (clk_counter >= X8_OVERSAMPLE_CLK_OFFSET) && (state == BUSY);

    clock_divider ClockDivideByEight (.clock_in(clk), .clock_out(SCLK), .rstn(SCLK_enable), .divisor(8)); //SCLK is CLK divided by 8

    always @(posedge clk) begin

        if (!rstn) begin
            state = READY;
            clk_counter = CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET;
            padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
            done_cs_hold_counter = DONE_CS_HOLD_TIME;
            MISO_A_sampled = 0;
            MISO_B_sampled = 0;
            a_data_out = 0;
            b_data_out = 0;
            MOSI = 0;
            index_sampled = INDEX_SAMPLED_DEFAULT;
        end
        else begin
            case(state)
                READY: begin

                    CS = 1;
                    MOSI = 0;
                    clk_counter = CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET;
                    padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
                    done_cs_hold_counter = DONE_CS_HOLD_TIME;
                    index_sampled = INDEX_SAMPLED_DEFAULT;

                    if (start)
                        state = PRE_BUSY;
                end
                PRE_BUSY: begin

                    CS = 0;
                    MOSI = data_in[15];
                    a_data_out = 0;
                    b_data_out = 0;

                    if (padding_counter == 0) begin
                        state = BUSY;
                        padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
                    end
                    else
                        padding_counter = padding_counter - 1;
                end
                BUSY: begin

                    if (clk_counter < X8_OVERSAMPLE_CLK_OFFSET - 2)
                        CS = 1;
                    else
                        CS = 0;

                    clk_counter = clk_counter - 1;

                    if ((clk_counter - X8_OVERSAMPLE_CLK_OFFSET + oversample_offset) % 4 == 0
                        && clk_counter > X8_OVERSAMPLE_CLK_OFFSET - oversample_offset - 8
                        && clk_counter < CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET - oversample_offset - 4) begin
                        if ((clk_counter - X8_OVERSAMPLE_CLK_OFFSET + oversample_offset) % 8 == 0) begin
                            MISO_A_sampled = 1;
                            MISO_B_sampled = 0;
                            a_data_out[index_sampled - 1] = MISO;
                        end
                        else begin
                            MISO_A_sampled = 0; 
                            MISO_B_sampled = 1;
                            b_data_out[index_sampled - 1] = MISO;
                            index_sampled = index_sampled - 1; 
                        end
                    end
                    else begin
                        MISO_A_sampled = 0;
                        MISO_B_sampled = 0;
                    end 

                    if ((clk_counter - X8_OVERSAMPLE_CLK_OFFSET) % 8 == 0
                    && clk_counter > X8_OVERSAMPLE_CLK_OFFSET) begin
                        MOSI_send = 1;
                        MOSI = data_in[((clk_counter - X8_OVERSAMPLE_CLK_OFFSET) / 8) - 1];
                    end
                    else
                        MOSI_send = 0;

                    if (clk_counter == 0)
                        state = POST_BUSY;

                end
                POST_BUSY: begin

                    CS = 1;
                    MOSI = 0;

                    if (padding_counter == 0) begin
                        state = DONE;
                        padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
                    end
                    else
                        padding_counter = padding_counter - 1;
                end
                DONE: begin

                    CS = 1;
                    MOSI = 0;

                    if (done_cs_hold_counter == 0) begin
                        state = READY;
                        done_cs_hold_counter = DONE_CS_HOLD_TIME;
                    end
                    else
                        done_cs_hold_counter = done_cs_hold_counter - 1;

                end

            endcase
        end
            
    end

endmodule