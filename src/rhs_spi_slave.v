module  rhs_spi_slave #(parameter STARTING_SEED = 0) (
    input wire MOSI,
    input wire CS,
    input wire SCLK,
    output wire MISO,
    input wire [4:0] channel,
    input wire rstn,
    input wire clk
);


    reg miso_out;
    reg [15:0] counter_0_15;
    reg [31:0] miso_out_reg;

    localparam SCLK_COUNTER_DEFAULT = 124;

    reg [6:0] sclk_counter = SCLK_COUNTER_DEFAULT;
    
    assign MISO = miso_out;
    

    always @(posedge clk) begin

        if (rstn == 0) begin
            sclk_counter = SCLK_COUNTER_DEFAULT;
            miso_out = 0;
        end
        else begin

            counter_0_15 = channel - 2 + STARTING_SEED;
            miso_out_reg = {counter_0_15, 16'd0};

            if (CS == 1) begin
                sclk_counter = SCLK_COUNTER_DEFAULT;

            end
            else begin
                if (SCLK) begin
                    if (sclk_counter > 0) begin
                        sclk_counter = sclk_counter - 1;
                    end
                end
                
            end

            if (sclk_counter % 4 == 0) begin
                miso_out = miso_out_reg[sclk_counter / 4];
            end
            
            
        end

    end


endmodule