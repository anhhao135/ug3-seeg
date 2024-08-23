module clock_divider (
    input wire clock_in,
    output reg clock_out,
    input wire rstn,
    input wire [3:0] divisor
);

    reg[27:0] counter = 0;

    always @(posedge clock_in) begin
        if (!rstn) begin
            counter <= 0;
            clock_out <= 0;
        end
        else begin
            counter <= counter + 28'd1;
            if(counter>=(divisor-1))
                counter <= 0;
            clock_out <= (counter<divisor/2)?1'b1:1'b0;
        end
    end

endmodule