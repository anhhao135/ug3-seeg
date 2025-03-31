module delay #(
    parameter DELAY_CYCLES = 4,  // Number of clock cycles to delay
    parameter WIDTH = 1          // Bit-width of the signal
)(
    input wire clk,
    input wire rst_n,
    input wire [WIDTH-1:0] din,
    output wire [WIDTH-1:0] dout
);

    reg [WIDTH-1:0] shift_reg [0:DELAY_CYCLES-1];
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < DELAY_CYCLES; i = i + 1) begin
                shift_reg[i] <= {WIDTH{1'b0}};
            end
        end else begin
            shift_reg[0] <= din;
            for (i = 1; i < DELAY_CYCLES; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
        end
    end

    assign dout = shift_reg[DELAY_CYCLES-1];

endmodule
