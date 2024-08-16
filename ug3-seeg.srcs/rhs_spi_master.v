module  rhs_spi_master (
    output reg MOSI,
    output reg CS,
    output wire SCLK,
    input wire MISO,
    input wire clk,
    output wire busy,
    input wire rstn,
    input wire start,
    input wire [31:0] data_in,
    output reg [31:0] data_out
);

    assign busy = state;

    reg state;
    parameter READY = 0, BUSY = 1;

    parameter CLK_COUNTER_DEFAULT = 128;

    reg [7:0] clk_counter = CLK_COUNTER_DEFAULT;

    clock_divider #(.DIVISOR(4)) ClockDivideByFour (.clock_in(clk), .clock_out(SCLK), .rstn(state));

    always @(posedge clk) begin

        if (!rstn)
            state = READY;
        else
            case(state)
                READY:
                    if (start)
                        state = BUSY;
                BUSY:
                    if (clk_counter == 0)
                        state = READY;
            endcase
            
    end

    always @(posedge clk) begin

        if (!rstn) begin
            clk_counter = CLK_COUNTER_DEFAULT;
            data_out = 0;
        end

        case(state)

            READY: begin
                CS = 1;
                MOSI = data_in[31];
            end

            BUSY: begin
                CS = 0;
                clk_counter = clk_counter - 1;
                if (clk_counter % 4 == 0) begin
                    MOSI = data_in[(clk_counter / 4) - 1];
                end
            end

        endcase
            

    end

endmodule