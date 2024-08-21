module  rhs_spi_master (
    output reg MOSI,
    output reg CS,
    output wire SCLK,
    input wire MISO,
    input wire clk,
    output wire busy,
    input wire rstn,
    input wire start,
    output wire done,
    input wire [31:0] data_in,
    output reg [31:0] data_out,
    input wire [7:0] oversample_offset
);
    parameter READY = 0, PRE_BUSY = 1, BUSY = 2, POST_BUSY = 3, DONE = 4;

    reg [2:0] state;

    assign busy = (state == BUSY);
    assign done = (state == DONE);
    
    parameter CLK_COUNTER_DEFAULT = 253;
    parameter PRE_POST_BUSY_PADDING_DEFAULT = 8;
    parameter X8_OVERSAMPLE_CLK_OFFSET = 32; //extra 24 cycles of CLK after last falling edge of SCLK to oversample incoming MISO line
    parameter DONE_CS_HOLD_TIME = 16;

    reg [8:0] clk_counter = CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET;
    reg [7:0] x8_oversample_clk_offset = X8_OVERSAMPLE_CLK_OFFSET;
    reg [7:0] padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
    reg [7:0] done_cs_hold_counter = DONE_CS_HOLD_TIME;
    reg MISO_sampled = 0;

    wire SCLK_enable;
    assign SCLK_enable = (clk_counter >= x8_oversample_clk_offset) && (state == BUSY);

    clock_divider #(.DIVISOR(8)) ClockDivideByEight (.clock_in(clk), .clock_out(SCLK), .rstn(SCLK_enable)); //SCLK is CLK divided by 8

    always @(posedge clk) begin

        if (!rstn) begin
            state = READY;
            clk_counter = CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET;
            padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
            x8_oversample_clk_offset = X8_OVERSAMPLE_CLK_OFFSET;
            done_cs_hold_counter = DONE_CS_HOLD_TIME;
            MISO_sampled = 0;
            data_out = 0;
            MOSI = 0;
        end
        else begin
            case(state)
                READY: begin

                    CS = 1;
                    MOSI = 0;
                    clk_counter = CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET;
                    padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
                    done_cs_hold_counter = DONE_CS_HOLD_TIME;

                    if (start)
                        state = PRE_BUSY;
                end
                PRE_BUSY: begin

                    CS = 0;
                    MOSI = data_in[31];
                    data_out = 0;

                    if (padding_counter == 0) begin
                        state = BUSY;
                        padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
                    end
                    else
                        padding_counter = padding_counter - 1;
                end
                BUSY: begin

                    CS = 0;
                    clk_counter = clk_counter - 1;
                    
                    if ((clk_counter + oversample_offset - x8_oversample_clk_offset + 4) % 8 == 0 && (clk_counter + oversample_offset - x8_oversample_clk_offset + 4) >= 8 && clk_counter >= (x8_oversample_clk_offset - oversample_offset) && clk_counter <= (CLK_COUNTER_DEFAULT + X8_OVERSAMPLE_CLK_OFFSET - oversample_offset)) begin
                        data_out[((clk_counter + oversample_offset - x8_oversample_clk_offset + 4) / 8) - 1] = MISO;
                        MISO_sampled = 1;
                    end
                    else
                        MISO_sampled = 0;

                    if ((clk_counter - x8_oversample_clk_offset) % 8 == 0 && (clk_counter - x8_oversample_clk_offset) >= 8 && clk_counter >= x8_oversample_clk_offset + 8) begin
                        MOSI = data_in[((clk_counter - x8_oversample_clk_offset) / 8) - 1];
                    end

                    if (clk_counter == 0)
                        state = POST_BUSY;

                end
                POST_BUSY: begin

                    CS = 0;
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