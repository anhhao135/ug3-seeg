module  rhd_spi_slave #(parameter STARTING_SEED = 0) (
    input wire MOSI,
    input wire CS,
    input wire SCLK,
    output wire MISO,
    input wire [5:0] channel,
    input wire rstn,
    input wire clk
);

    
    localparam CLK_COUNTER_DEFAULT = 1;
    localparam SCLK_COUNTER_DEFAULT = 16;

    reg miso_out;
    reg [16:0] counter_0_31;
    reg [16:0] counter_32_63;
    reg [6:0] clk_counter = CLK_COUNTER_DEFAULT;
    reg [4:0] sclk_counter = 16;

    reg counter_0_31_send = 0;
    reg counter_32_63_send = 0;

    reg SCLK_rising_edge_flag = 0;
    
    assign MISO = miso_out;

    always @(posedge clk) begin

        if (rstn == 0 || CS == 1) begin
            clk_counter <= CLK_COUNTER_DEFAULT;
            sclk_counter <= SCLK_COUNTER_DEFAULT;
            counter_0_31 <= channel - 2 + STARTING_SEED;
            counter_32_63 <= channel - 2 + 32 + STARTING_SEED;
            SCLK_rising_edge_flag = 0;
        end

        if (SCLK_rising_edge_flag == 0 && SCLK == 1)
            SCLK_rising_edge_flag = 1;

        if (SCLK_rising_edge_flag == 1) begin
            clk_counter = clk_counter + 1;
            if (clk_counter % 4 == 0) begin
                if (clk_counter % 8 == 0) begin
                    sclk_counter = sclk_counter - 1;
                    miso_out = counter_0_31[sclk_counter];
                    counter_0_31_send = 1;
                    
                end
                else begin
                    miso_out = counter_32_63[sclk_counter];
                    counter_32_63_send = 1;
                end
            end
            else begin
                counter_0_31_send = 0;
                counter_32_63_send = 0;
            end
        end

        if (sclk_counter == 0) begin
            clk_counter <= CLK_COUNTER_DEFAULT;
            sclk_counter <= SCLK_COUNTER_DEFAULT;
            SCLK_rising_edge_flag = 0;
        end

    end


endmodule