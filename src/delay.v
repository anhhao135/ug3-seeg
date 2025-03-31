module delay #(
    parameter WIDTH = 1          // Bit-width of the signal
)(
    input wire clk,
    input wire rst_n,
    input wire [63:0] delay_cycles, // 64-bit delay cycles input
    input wire [WIDTH-1:0] din,
    output wire [WIDTH-1:0] dout
);

    reg [WIDTH-1:0] shift_reg [0:255]; // Maximum delay of 256 cycles for practical synthesis
    integer i;
    reg [63:0] delay;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 256; i = i + 1) begin
                shift_reg[i] <= {WIDTH{1'b0}};
            end
            delay <= 0;
        end else begin
            delay <= (delay_cycles < 256) ? delay_cycles : 255; // Limit delay to 255 cycles
            shift_reg[0] <= din;
            for (i = 1; i < 256; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
        end
    end

    assign dout = shift_reg[delay];

endmodule
