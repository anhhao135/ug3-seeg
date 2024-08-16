module clock_divider #(parameter DIVISOR = 28'd4)(
    input wire clock_in,
    output reg clock_out,
    input wire rstn
);

    reg[27:0] counter = 0;

    always @(posedge clock_in) begin
        if (!rstn) begin
            counter <= 0;
            clock_out <= 0;
        end
        else begin
            counter <= counter + 28'd1;
            if(counter>=(DIVISOR-1))
                counter <= 0;
            clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
        end
    end

endmodule