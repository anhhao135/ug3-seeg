module clock_divider (
    input wire clock_in,
    output wire clock_out,
    input wire rstn,
    input wire [3:0] divisor
);

    reg clock_out_pre_buff = 0;

    BUFGCE BUFGCE_inst (
    .O(clock_out),   // 1-bit output: Buffer
    .CE(1), // 1-bit input: Buffer enable
    .I(clock_out_pre_buff)    // 1-bit input: Buffer
    );

    reg[27:0] counter = 0;

    always @(posedge clock_in) begin
        if (!rstn) begin    
            counter <= 0;
            clock_out_pre_buff <= 0;
        end
        else begin
            counter <= counter + 28'd1;
            if(counter>=(divisor-1))
                counter <= 0;
            clock_out_pre_buff <= (counter<divisor/2)?1'b1:1'b0;
        end
    end

endmodule