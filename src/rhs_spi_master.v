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
    output reg [31:0] data_out
);
    parameter READY = 0, PRE_BUSY = 1, BUSY = 2, POST_BUSY = 3, DONE = 4;

    reg [2:0] state;

    assign busy = (state == BUSY);
    assign done = (state == DONE);
    
    parameter CLK_COUNTER_DEFAULT = 254;
    parameter PRE_POST_BUSY_PADDING_DEFAULT = 8;

    reg [7:0] clk_counter = CLK_COUNTER_DEFAULT;
    reg [7:0] padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;

    clock_divider #(.DIVISOR(8)) ClockDivideByEight (.clock_in(clk), .clock_out(SCLK), .rstn(busy));

    always @(posedge clk) begin

        if (!rstn) begin
            state = READY;
            clk_counter = CLK_COUNTER_DEFAULT;
            padding_counter = PRE_POST_BUSY_PADDING_DEFAULT;
            data_out = 0;
            MOSI = 0;
        end
        else begin
            case(state)
                READY: begin

                    CS = 1;
                    MOSI = data_in[31];

                    if (start)
                        state = PRE_BUSY;
                end
                PRE_BUSY: begin

                    CS = 0;
                    MOSI = data_in[31];

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
                    
                    if ((clk_counter + 4) % 8 == 0 && (clk_counter + 4) >= 8) begin
                        data_out[((clk_counter + 4) / 8) - 1] = MISO;
                    end

                    if (clk_counter % 8 == 0 && clk_counter >= 8) begin
                        MOSI = data_in[(clk_counter / 8) - 1];
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

                    if (start == 0)
                        state = READY;
                end

            endcase
        end
            
    end

endmodule