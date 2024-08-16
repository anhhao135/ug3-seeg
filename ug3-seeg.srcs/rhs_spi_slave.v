module  rhs_spi_slave #(parameter STARTING_SEED = 0) (
    input wire MOSI,
    input wire CS,
    input wire SCLK,
    output wire MISO,
    input wire [4:0] channel
);


    reg miso_out;
    reg [15:0] counter_0_15;
    reg [31:0] miso_out_reg;

    parameter SCLK_COUNTER_DEFAULT = 31;

    reg [5:0] sclk_counter = SCLK_COUNTER_DEFAULT;
    
    assign MISO = miso_out;
    

    always @(negedge SCLK) begin

        miso_out_reg = {counter_0_15, 16'd0};
        counter_0_15 = channel - 2 + STARTING_SEED;

        if (CS == 1) begin
            sclk_counter <= SCLK_COUNTER_DEFAULT;
            miso_out = miso_out_reg[sclk_counter];
        end
        else begin
            sclk_counter = sclk_counter - 1;
            miso_out = miso_out_reg[sclk_counter];
        end

    end


endmodule