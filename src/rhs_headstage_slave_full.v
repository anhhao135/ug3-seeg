module rhs_headstage_slave_full(
    input wire MOSI,
    input wire CS,
    input wire clk,
    input wire SCLK,
    output wire MISO_A,
    output wire MISO_B,
    output wire MISO_C,
    output wire MISO_D,
    output wire MISO_E,
    output wire MISO_F,
    output wire MISO_G,
    output wire MISO_H,
    output wire MISO_I,
    output wire MISO_J,
    output wire MISO_K,
    output wire MISO_L,
    output wire MISO_M,
    output wire MISO_N,
    output wire MISO_O,
    output wire MISO_P,
    input wire [5:0] channel,
    input wire [2:0] state_cable_delay_finder,
    input wire zcheck_en

);

    rhs_headstage_slave #(.STARTING_SEED(128)) A (MOSI, CS, clk, SCLK, MISO_A, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(272)) B (MOSI, CS, clk, SCLK, MISO_B, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(416)) C (MOSI, CS, clk, SCLK, MISO_C, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(560)) D (MOSI, CS, clk, SCLK, MISO_D, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(704)) E (MOSI, CS, clk, SCLK, MISO_E, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(848)) F (MOSI, CS, clk, SCLK, MISO_F, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(992)) G (MOSI, CS, clk, SCLK, MISO_G, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(1136)) H (MOSI, CS, clk, SCLK, MISO_H, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(1280)) I (MOSI, CS, clk, SCLK, MISO_I, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(1424)) J (MOSI, CS, clk, SCLK, MISO_J, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(1568)) K (MOSI, CS, clk, SCLK, MISO_K, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(1712)) L (MOSI, CS, clk, SCLK, MISO_L, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(1856)) M (MOSI, CS, clk, SCLK, MISO_M, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(2000)) N (MOSI, CS, clk, SCLK, MISO_N, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(2144)) O (MOSI, CS, clk, SCLK, MISO_O, channel, state_cable_delay_finder, zcheck_en);
    rhs_headstage_slave #(.STARTING_SEED(2288)) P (MOSI, CS, clk, SCLK, MISO_P, channel, state_cable_delay_finder, zcheck_en);
    



endmodule