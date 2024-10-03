module seeg (
    input wire rstn,
    input wire clk,
    output wire busy,
    input wire record_start,
    input wire record_stop,
    input wire zcheck_start,
    output wire zcheck_done,
    input wire [1:0] zcheck_scale,
    //(binary) = (cap)(current amplitude at 1 kHz sine wave) (max voltage for 1 Mohm electrode)
    //00 = 0.1pF 0.38nA 0.38mV
    //01 = 1.0pF 3.8nA 3.8mV
    //11 = 10pF 38nA 38mV (saturates past 5mV limit)
    //selects AC cap that transforms DAC zcheck test voltage to current
    //SEEG contacts expected to be below 100k
    //11 = 10pF 38nA 3.8mV (should be ok)


    input wire [15:0] stim_mask_probe_select, //bit mask 0 - 15 to choose which probes will be stimulating
    input wire [15:0] stim_mask_channel_positive, //binary mask channels 0 - 15, 1 means channel is activated
    input wire [15:0] stim_mask_channel_negative, //binary mask channels 0 - 15, 1 means channel is activated
    input wire stim_bipolar_mode, //current flows out of positive to negative if bipolar mode, else current flows out of positive and then to ground return
    input wire [3:0] stim_current_step_size,
    //0 - 9
    //10 nA, 20 nA, 50 nA, 100 nA, 200 nA, 500 nA, 1 uA, 2 uA, 5 uA, 10 uA
    // x 255
    //can be switched between positive or negative current

    input wire [15:0] stim_pulse_length,
    input wire [7:0] stim_pulse_magnitude,
    input wire [15:0] stim_inter_bipulse_delay,
    input wire [15:0] stim_inter_pulse_delay,
    input wire [15:0] stim_inter_train_delay,
    input wire [15:0] stim_bipulses_per_train_count,
    input wire [15:0] stim_train_count,
    input wire [15:0] stim_charge_recovery_time,
    input wire stim_rising_edge_first,

    output wire stim_finite_mode_done,
    input wire stim_finite_mode_start,
    input wire stim_infinite_mode_start,
    input wire stim_infinite_mode_stop,

    input wire loopback_mode, //fake generated data from internal slaves


    output wire CS_RHD,
    output wire SCLK_RHD,
    output wire MOSI_RHD,

    input wire MISO1_A,
    input wire MISO2_A,

    input wire MISO1_B,
    input wire MISO2_B,

    input wire MISO1_C,
    input wire MISO2_C,

    input wire MISO1_D,
    input wire MISO2_D,

    input wire MISO1_E,
    input wire MISO2_E,

    input wire MISO1_F,
    input wire MISO2_F,

    input wire MISO1_G,
    input wire MISO2_G,

    input wire MISO1_H,
    input wire MISO2_H,

    input wire MISO1_I,
    input wire MISO2_I,

    input wire MISO1_J,
    input wire MISO2_J,

    input wire MISO1_K,
    input wire MISO2_K,

    input wire MISO1_L,
    input wire MISO2_L,

    input wire MISO1_M,
    input wire MISO2_M,

    input wire MISO1_N,
    input wire MISO2_N,

    input wire MISO1_O,
    input wire MISO2_O,

    input wire MISO1_P,
    input wire MISO2_P,
    


    output wire CS_RHS,
    output wire SCLK_RHS,

    output wire MOSI_A,
    output wire MOSI_B,
    output wire MOSI_C,
    output wire MOSI_D,
    output wire MOSI_E,
    output wire MOSI_F,
    output wire MOSI_G,
    output wire MOSI_H,
    output wire MOSI_I,
    output wire MOSI_J,
    output wire MOSI_K,
    output wire MOSI_L,
    output wire MOSI_M,
    output wire MOSI_N,
    output wire MOSI_O,
    output wire MOSI_P,

    input wire MISO_A,
    input wire MISO_B,
    input wire MISO_C,
    input wire MISO_D,
    input wire MISO_E,
    input wire MISO_F,
    input wire MISO_G,
    input wire MISO_H,
    input wire MISO_I,
    input wire MISO_J,
    input wire MISO_K,
    input wire MISO_L,
    input wire MISO_M,
    input wire MISO_N,
    input wire MISO_O,
    input wire MISO_P,

    input wire [7:0] oversample_offset_A1,
    input wire [7:0] oversample_offset_A2,
    input wire [7:0] oversample_offset_B1,
    input wire [7:0] oversample_offset_B2,
    input wire [7:0] oversample_offset_C1,
    input wire [7:0] oversample_offset_C2,
    input wire [7:0] oversample_offset_D1,
    input wire [7:0] oversample_offset_D2,
    input wire [7:0] oversample_offset_E1,
    input wire [7:0] oversample_offset_E2,
    input wire [7:0] oversample_offset_F1,
    input wire [7:0] oversample_offset_F2,
    input wire [7:0] oversample_offset_G1,
    input wire [7:0] oversample_offset_G2,
    input wire [7:0] oversample_offset_H1,
    input wire [7:0] oversample_offset_H2,
    input wire [7:0] oversample_offset_I1,
    input wire [7:0] oversample_offset_I2,
    input wire [7:0] oversample_offset_J1,
    input wire [7:0] oversample_offset_J2,
    input wire [7:0] oversample_offset_K1,
    input wire [7:0] oversample_offset_K2,
    input wire [7:0] oversample_offset_L1,
    input wire [7:0] oversample_offset_L2,
    input wire [7:0] oversample_offset_M1,
    input wire [7:0] oversample_offset_M2,
    input wire [7:0] oversample_offset_N1,
    input wire [7:0] oversample_offset_N2,
    input wire [7:0] oversample_offset_O1,
    input wire [7:0] oversample_offset_O2,
    input wire [7:0] oversample_offset_P1,
    input wire [7:0] oversample_offset_P2,

    input wire [7:0] oversample_offset_A,
    input wire [7:0] oversample_offset_B,
    input wire [7:0] oversample_offset_C,
    input wire [7:0] oversample_offset_D,
    input wire [7:0] oversample_offset_E,
    input wire [7:0] oversample_offset_F,
    input wire [7:0] oversample_offset_G,
    input wire [7:0] oversample_offset_H,
    input wire [7:0] oversample_offset_I,
    input wire [7:0] oversample_offset_J,
    input wire [7:0] oversample_offset_K,
    input wire [7:0] oversample_offset_L,
    input wire [7:0] oversample_offset_M,
    input wire [7:0] oversample_offset_N,
    input wire [7:0] oversample_offset_O,
    input wire [7:0] oversample_offset_P,

    output reg [63:0] data_out,
    output reg valid_out,
    output reg last_out,
    output wire [1:0] stim_waveform_data_out,

    output wire busy_recording,
    output wire busy_zcheck,

    output wire [7:0] current_state,

    input wire [15:0] batch_size,
    input wire aux_signal
    
    
);


    wire clk_rhd;
    wire clk_rhs_zcheck;
    wire clk_rhs;
    //clock_divider ClockDivideByTwo (.clock_in(clk), .clock_out(clk_rhd), .divisor(2)); //rhs runs on a clock twice as fast as rhd
    clock_divider ClockDivideByFour (.clock_in(clk), .clock_out(clk_rhd), .divisor(4), .rstn(1)); //rhs runs on a clock 4 times as fast as rhd
    clock_divider ClockDivideByTwo (.clock_in(clk), .clock_out(clk_rhs_zcheck), .divisor(2), .rstn(1)); //rhs during zcheck mode needs a clock that is 2 times slower
    localparam READY = 0, RESET = 1, CONFIG_START = 2, CONFIG_WAIT = 3, RECORD_START = 4, RECORD_WAIT = 5, RECORD_STOP = 6, ZCHECK_RHD_START = 7, ZCHECK_RHD_WAIT = 8, ZCHECK_RHS_START = 9, ZCHECK_RHS_WAIT = 10, ZCHECK_STOP = 11;
    reg [7:0] state = READY;

    reg [15:0] magic_number_recording = 16'hCCCC;
    reg [15:0] magic_number_zcheck = 16'hF00F;
    reg data_out_header_sent_flag = 0;

    assign current_state = state;

    assign busy = (state != READY);
    assign zcheck_done = (state == ZCHECK_STOP);

    wire done_rhd;
    wire done_rhs;
    wire busy_rhd; 
    wire busy_rhs;

    reg config_start_flag = 0;
    reg record_start_flag_rhd = 0;
    reg record_start_flag_rhs = 0;
    reg zcheck_rhd_start_flag = 0;
    reg zcheck_rhs_start_flag = 0;

    wire zcheck_in_progress;
    assign zcheck_in_progress = (state == ZCHECK_RHD_START) || (state == ZCHECK_RHD_WAIT) || (state == ZCHECK_RHS_START) || (state == ZCHECK_RHS_WAIT) || (state == ZCHECK_STOP);

    assign busy_recording = (state == RECORD_START) || (state == RECORD_WAIT) || (state == RECORD_STOP);
    assign busy_zcheck = zcheck_in_progress;

    assign clk_rhs = zcheck_in_progress ? clk_rhs_zcheck : clk;

    /*
    localparam RHD_CHANNELS = 2048;
    localparam RHS_CHANNELS = 256;
    */

    
    localparam RHD_CHANNELS = 1;
    localparam RHS_CHANNELS = 1;
    

    localparam RHD_64_BIT_CHUNKS = 512; //for recording
    localparam RHS_64_BIT_CHUNKS = 64; //for recording

    localparam ZCHECK_64_BIT_CHUNKS = 40; //for zcheck one channel without header

    reg [9:0] rhd_64_bit_chunks_counter = RHD_64_BIT_CHUNKS;
    reg [9:0] rhs_64_bit_chunks_counter = RHS_64_BIT_CHUNKS;
    reg [9:0] zcheck_64_bit_chunks_counter = ZCHECK_64_BIT_CHUNKS;

    reg [15:0] batch_size_counter = 0;


    reg [11:0] zcheck_global_channel_rhd = 0; // 0 - 2047
    reg [11:0] zcheck_global_channel_rhs = 0; //0 - 255

    localparam CHANNELS_PER_RHS_CHIP = 16;
    localparam CHANNELS_PER_RHD_CHIP = 64;
    
    wire [7:0] channel_out_rhd; //from module
    wire [7:0] channel_out_rhs; //from module

    wire [11:0] zcheck_chip_channel_rhd; //for zcheck only
    wire [11:0] zcheck_chip_channel_rhs; //for zcheck only


    assign zcheck_chip_channel_rhd = zcheck_global_channel_rhd % CHANNELS_PER_RHD_CHIP;
    assign zcheck_chip_channel_rhs = zcheck_global_channel_rhs % CHANNELS_PER_RHS_CHIP;

    wire [7:0] channel_loopback_rhd; //to loopback slaves
    wire [7:0] channel_loopback_rhs; //to loopback slaves

    assign channel_loopback_rhd = zcheck_in_progress ? ((zcheck_chip_channel_rhd % 32) + 2) : channel_out_rhd;
    assign channel_loopback_rhs = zcheck_in_progress ? ((zcheck_chip_channel_rhs % 16) + 2) : channel_out_rhs;

    wire busy_stim_rhs;

    wire MISO1_A_module;
    wire MISO2_A_module;

    wire MISO1_B_module;
    wire MISO2_B_module;

    wire MISO1_C_module;
    wire MISO2_C_module;

    wire MISO1_D_module;
    wire MISO2_D_module;

    wire MISO1_E_module;
    wire MISO2_E_module;

    wire MISO1_F_module;
    wire MISO2_F_module;

    wire MISO1_G_module;
    wire MISO2_G_module;

    wire MISO1_H_module;
    wire MISO2_H_module;

    wire MISO1_I_module;
    wire MISO2_I_module;

    wire MISO1_J_module;
    wire MISO2_J_module;

    wire MISO1_K_module;
    wire MISO2_K_module;

    wire MISO1_L_module;
    wire MISO2_L_module;

    wire MISO1_M_module;
    wire MISO2_M_module;

    wire MISO1_N_module;
    wire MISO2_N_module;

    wire MISO1_O_module;
    wire MISO2_O_module;

    wire MISO1_P_module;
    wire MISO2_P_module;

    assign MISO1_A_module = loopback_mode ? MISO1_A_loopback : MISO1_A;
    assign MISO2_A_module = loopback_mode ? MISO2_A_loopback : MISO2_A;
    
    assign MISO1_B_module = loopback_mode ? MISO1_B_loopback : MISO1_B;
    assign MISO2_B_module = loopback_mode ? MISO2_B_loopback : MISO2_B;

    assign MISO1_C_module = loopback_mode ? MISO1_C_loopback : MISO1_C;
    assign MISO2_C_module = loopback_mode ? MISO2_C_loopback : MISO2_C;

    assign MISO1_D_module = loopback_mode ? MISO1_D_loopback : MISO1_D;
    assign MISO2_D_module = loopback_mode ? MISO2_D_loopback : MISO2_D;

    assign MISO1_E_module = loopback_mode ? MISO1_E_loopback : MISO1_E;
    assign MISO2_E_module = loopback_mode ? MISO2_E_loopback : MISO2_E;
    
    assign MISO1_F_module = loopback_mode ? MISO1_F_loopback : MISO1_F;
    assign MISO2_F_module = loopback_mode ? MISO2_F_loopback : MISO2_F;

    assign MISO1_G_module = loopback_mode ? MISO1_G_loopback : MISO1_G;
    assign MISO2_G_module = loopback_mode ? MISO2_G_loopback : MISO2_G;

    assign MISO1_H_module = loopback_mode ? MISO1_H_loopback : MISO1_H;
    assign MISO2_H_module = loopback_mode ? MISO2_H_loopback : MISO2_H;

    assign MISO1_I_module = loopback_mode ? MISO1_I_loopback : MISO1_I;
    assign MISO2_I_module = loopback_mode ? MISO2_I_loopback : MISO2_I;
    
    assign MISO1_J_module = loopback_mode ? MISO1_J_loopback : MISO1_J;
    assign MISO2_J_module = loopback_mode ? MISO2_J_loopback : MISO2_J;

    assign MISO1_K_module = loopback_mode ? MISO1_K_loopback : MISO1_K;
    assign MISO2_K_module = loopback_mode ? MISO2_K_loopback : MISO2_K;

    assign MISO1_L_module = loopback_mode ? MISO1_L_loopback : MISO1_L;
    assign MISO2_L_module = loopback_mode ? MISO2_L_loopback : MISO2_L;

    assign MISO1_M_module = loopback_mode ? MISO1_M_loopback : MISO1_M;
    assign MISO2_M_module = loopback_mode ? MISO2_M_loopback : MISO2_M;
    
    assign MISO1_N_module = loopback_mode ? MISO1_N_loopback : MISO1_N;
    assign MISO2_N_module = loopback_mode ? MISO2_N_loopback : MISO2_N;

    assign MISO1_O_module = loopback_mode ? MISO1_O_loopback : MISO1_O;
    assign MISO2_O_module = loopback_mode ? MISO2_O_loopback : MISO2_O;

    assign MISO1_P_module = loopback_mode ? MISO1_P_loopback : MISO1_P;
    assign MISO2_P_module = loopback_mode ? MISO2_P_loopback : MISO2_P;


    wire MISO_A_module;
    wire MISO_B_module;
    wire MISO_C_module;
    wire MISO_D_module;
    wire MISO_E_module;
    wire MISO_F_module;
    wire MISO_G_module;
    wire MISO_H_module;
    wire MISO_I_module;
    wire MISO_J_module;
    wire MISO_K_module;
    wire MISO_L_module;
    wire MISO_M_module;
    wire MISO_N_module;
    wire MISO_O_module;
    wire MISO_P_module;

    assign MISO_A_module = loopback_mode ? MISO_A_loopback : MISO_A;
    assign MISO_B_module = loopback_mode ? MISO_B_loopback : MISO_B;
    assign MISO_C_module = loopback_mode ? MISO_C_loopback : MISO_C;
    assign MISO_D_module = loopback_mode ? MISO_D_loopback : MISO_D;
    assign MISO_E_module = loopback_mode ? MISO_E_loopback : MISO_E;   
    assign MISO_F_module = loopback_mode ? MISO_F_loopback : MISO_F;
    assign MISO_G_module = loopback_mode ? MISO_G_loopback : MISO_G;
    assign MISO_H_module = loopback_mode ? MISO_H_loopback : MISO_H;
    assign MISO_I_module = loopback_mode ? MISO_I_loopback : MISO_I;   
    assign MISO_J_module = loopback_mode ? MISO_J_loopback : MISO_J;
    assign MISO_K_module = loopback_mode ? MISO_K_loopback : MISO_K;
    assign MISO_L_module = loopback_mode ? MISO_L_loopback : MISO_L;
    assign MISO_M_module = loopback_mode ? MISO_M_loopback : MISO_M;   
    assign MISO_N_module = loopback_mode ? MISO_N_loopback : MISO_N;
    assign MISO_O_module = loopback_mode ? MISO_O_loopback : MISO_O;
    assign MISO_P_module = loopback_mode ? MISO_P_loopback : MISO_P;




    reg done_rhd_flag = 0;
    reg done_rhs_flag = 0;

    reg config_done_record_flag = 0; //indicates if after config is done whether record state should be entered
    reg config_done_zcheck_flag = 0; //indicates if after config is done whether zcheck state should be entered
    reg config_done_reset_flag = 0; //indicates if after config is done whether reset state should be entered; this should be done after recording and zcheck as a register reset cycle



    reg fifo_read_en_rhd = 0;
    reg fifo_rst_rhd = 1;
    reg fifo_write_en_rhd = 0;
    wire fifo_valid_out_rhd;
    wire [63:0] fifo_data_out_rhd;

    reg fifo_read_en_rhs = 0;
    reg fifo_rst_rhs = 1;
    reg fifo_write_en_rhs = 0;
    wire fifo_valid_out_rhs;
    wire [63:0] fifo_data_out_rhs;

    reg fifo_dump_en = 0;

    reg [63:0] fifo_data_out_header = 0;
    reg fifo_valid_out_header = 0;

    reg [15:0] timestamp = 0;


    rhd_2048 rhd_2048(
        .clk(clk_rhd),
        .clk_fifo_out(clk), //faster clock
        .rstn(rstn),
        .config_start(config_start_flag),
        .record_start(record_start_flag_rhd),
        .zcheck_start(zcheck_rhd_start_flag),
        .done(done_rhd),
        .busy(busy_rhd),
        .zcheck_global_channel(zcheck_global_channel_rhd),
        .zcheck_scale(zcheck_scale),
        .sampling_rate_20k(0), //hardcoded to 0 for now, only 2.5 kS/s
        .channel_out(channel_out_rhd),

        .fifo_read_en(fifo_read_en_rhd),
        .fifo_rst(fifo_rst_rhd),
        .fifo_write_en_external(fifo_write_en_rhd),
        .fifo_valid_out(fifo_valid_out_rhd),
        .fifo_data_out(fifo_data_out_rhd),

        .CS(CS_RHD),
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO1_A(MISO1_A_module),
        .MISO2_A(MISO2_A_module),
        .MISO1_B(MISO1_B_module),
        .MISO2_B(MISO2_B_module),
        .MISO1_C(MISO1_C_module),
        .MISO2_C(MISO2_C_module),
        .MISO1_D(MISO1_D_module),
        .MISO2_D(MISO2_D_module),
        .MISO1_E(MISO1_E_module),
        .MISO2_E(MISO2_E_module),
        .MISO1_F(MISO1_F_module),
        .MISO2_F(MISO2_F_module),
        .MISO1_G(MISO1_G_module),
        .MISO2_G(MISO2_G_module),
        .MISO1_H(MISO1_H_module),
        .MISO2_H(MISO2_H_module),
        .MISO1_I(MISO1_I_module),
        .MISO2_I(MISO2_I_module),
        .MISO1_J(MISO1_J_module),
        .MISO2_J(MISO2_J_module),
        .MISO1_K(MISO1_K_module),
        .MISO2_K(MISO2_K_module),
        .MISO1_L(MISO1_L_module),
        .MISO2_L(MISO2_L_module),
        .MISO1_M(MISO1_M_module),
        .MISO2_M(MISO2_M_module),
        .MISO1_N(MISO1_N_module),
        .MISO2_N(MISO2_N_module),
        .MISO1_O(MISO1_O_module),
        .MISO2_O(MISO2_O_module),
        .MISO1_P(MISO1_P_module),
        .MISO2_P(MISO2_P_module),
        .oversample_offset_A1(loopback_mode ? 0 : oversample_offset_A1),
        .oversample_offset_A2(loopback_mode ? 0 : oversample_offset_A2),
        .oversample_offset_B1(loopback_mode ? 0 : oversample_offset_B1),
        .oversample_offset_B2(loopback_mode ? 0 : oversample_offset_B2),
        .oversample_offset_C1(loopback_mode ? 0 : oversample_offset_C1),
        .oversample_offset_C2(loopback_mode ? 0 : oversample_offset_C2),
        .oversample_offset_D1(loopback_mode ? 0 : oversample_offset_D1),
        .oversample_offset_D2(loopback_mode ? 0 : oversample_offset_D2),
        .oversample_offset_E1(loopback_mode ? 0 : oversample_offset_E1),
        .oversample_offset_E2(loopback_mode ? 0 : oversample_offset_E2),
        .oversample_offset_F1(loopback_mode ? 0 : oversample_offset_F1),
        .oversample_offset_F2(loopback_mode ? 0 : oversample_offset_F2),
        .oversample_offset_G1(loopback_mode ? 0 : oversample_offset_G1),
        .oversample_offset_G2(loopback_mode ? 0 : oversample_offset_G2),
        .oversample_offset_H1(loopback_mode ? 0 : oversample_offset_H1),
        .oversample_offset_H2(loopback_mode ? 0 : oversample_offset_H2),
        .oversample_offset_I1(loopback_mode ? 0 : oversample_offset_I1),
        .oversample_offset_I2(loopback_mode ? 0 : oversample_offset_I2),
        .oversample_offset_J1(loopback_mode ? 0 : oversample_offset_J1),
        .oversample_offset_J2(loopback_mode ? 0 : oversample_offset_J2),
        .oversample_offset_K1(loopback_mode ? 0 : oversample_offset_K1),
        .oversample_offset_K2(loopback_mode ? 0 : oversample_offset_K2),
        .oversample_offset_L1(loopback_mode ? 0 : oversample_offset_L1),
        .oversample_offset_L2(loopback_mode ? 0 : oversample_offset_L2),
        .oversample_offset_M1(loopback_mode ? 0 : oversample_offset_M1),
        .oversample_offset_M2(loopback_mode ? 0 : oversample_offset_M2),
        .oversample_offset_N1(loopback_mode ? 0 : oversample_offset_N1),
        .oversample_offset_N2(loopback_mode ? 0 : oversample_offset_N2),
        .oversample_offset_O1(loopback_mode ? 0 : oversample_offset_O1),
        .oversample_offset_O2(loopback_mode ? 0 : oversample_offset_O2),
        .oversample_offset_P1(loopback_mode ? 0 : oversample_offset_P1),
        .oversample_offset_P2(loopback_mode ? 0 : oversample_offset_P2)
    );

    rhs_256 rhs_256(
        .clk(clk_rhs),
        .clk_fifo_out(clk),
        .rstn(rstn),
        .config_start(config_start_flag),
        .record_start(record_start_flag_rhs),
        .zcheck_start(zcheck_rhs_start_flag),
        .done(done_rhs),
        .busy(busy_rhs),
        .busy_stim(busy_stim_rhs),
        .channel_out(channel_out_rhs),

        .fifo_read_en(fifo_read_en_rhs),
        .fifo_rst(fifo_rst_rhs),
        .fifo_write_en_external(fifo_write_en_rhs),
        .fifo_valid_out(fifo_valid_out_rhs),
        .fifo_data_out(fifo_data_out_rhs),

        .zcheck_global_channel(zcheck_global_channel_rhs),
        .zcheck_scale(zcheck_scale),

        .stim_mask_probe_select(stim_mask_probe_select),
        .stim_mask_channel_positive(stim_mask_channel_positive),
        .stim_mask_channel_negative(stim_mask_channel_negative),
        .stim_bipolar_mode(stim_bipolar_mode),
        .stim_current_step_size(stim_current_step_size),
        .stim_pulse_length(stim_pulse_length),
        .stim_pulse_magnitude(stim_pulse_magnitude),
        .stim_inter_bipulse_delay(stim_inter_bipulse_delay),
        .stim_inter_pulse_delay(stim_inter_pulse_delay),
        .stim_bipulses_per_train_count(stim_bipulses_per_train_count),
        .stim_train_count(stim_train_count),
        .stim_charge_recovery_time(stim_charge_recovery_time),
        .stim_rising_edge_first(stim_rising_edge_first),
        .stim_inter_train_delay(stim_inter_train_delay),
        .stim_finite_mode_done(stim_finite_mode_done),
        .stim_finite_mode_start(stim_finite_mode_start),
        .stim_infinite_mode_start(stim_infinite_mode_start),
        .stim_infinite_mode_stop(stim_infinite_mode_stop),
        .stim_waveform_data_out(stim_waveform_data_out),

        .CS(CS_RHS),
        .SCLK(SCLK_RHS),
        .MOSI_A(MOSI_A),
        .MOSI_B(MOSI_B),
        .MOSI_C(MOSI_C),
        .MOSI_D(MOSI_D),
        .MOSI_E(MOSI_E),
        .MOSI_F(MOSI_F),
        .MOSI_G(MOSI_G),
        .MOSI_H(MOSI_H),
        .MOSI_I(MOSI_I),
        .MOSI_J(MOSI_J),
        .MOSI_K(MOSI_K),
        .MOSI_L(MOSI_L),
        .MOSI_M(MOSI_M),
        .MOSI_N(MOSI_N),
        .MOSI_O(MOSI_O),
        .MOSI_P(MOSI_P),
        .MISO_A(MISO_A_module),
        .MISO_B(MISO_B_module),
        .MISO_C(MISO_C_module),
        .MISO_D(MISO_D_module),
        .MISO_E(MISO_E_module),
        .MISO_F(MISO_F_module),
        .MISO_G(MISO_G_module),
        .MISO_H(MISO_H_module),
        .MISO_I(MISO_I_module),
        .MISO_J(MISO_J_module),
        .MISO_K(MISO_K_module),
        .MISO_L(MISO_L_module),
        .MISO_M(MISO_M_module),
        .MISO_N(MISO_N_module),
        .MISO_O(MISO_O_module),
        .MISO_P(MISO_P_module),
        .oversample_offset_A(loopback_mode ? 0 : oversample_offset_A),
        .oversample_offset_B(loopback_mode ? 0 : oversample_offset_B),
        .oversample_offset_C(loopback_mode ? 0 : oversample_offset_C),
        .oversample_offset_D(loopback_mode ? 0 : oversample_offset_D),
        .oversample_offset_E(loopback_mode ? 0 : oversample_offset_E),
        .oversample_offset_F(loopback_mode ? 0 : oversample_offset_F),
        .oversample_offset_G(loopback_mode ? 0 : oversample_offset_G),
        .oversample_offset_H(loopback_mode ? 0 : oversample_offset_H),
        .oversample_offset_I(loopback_mode ? 0 : oversample_offset_I),
        .oversample_offset_J(loopback_mode ? 0 : oversample_offset_J),
        .oversample_offset_K(loopback_mode ? 0 : oversample_offset_K),
        .oversample_offset_L(loopback_mode ? 0 : oversample_offset_L),
        .oversample_offset_M(loopback_mode ? 0 : oversample_offset_M),
        .oversample_offset_N(loopback_mode ? 0 : oversample_offset_N),
        .oversample_offset_O(loopback_mode ? 0 : oversample_offset_O),
        .oversample_offset_P(loopback_mode ? 0 : oversample_offset_P)
    );


    rhd_spi_slave #(.STARTING_SEED(0)) A1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_A_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(64)) A2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_A_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(144)) B1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_B_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(208)) B2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_B_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(288)) C1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_C_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(352)) C2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_C_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(432)) D1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_D_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(496)) D2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_D_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(576)) E1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_E_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(640)) E2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_E_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(720)) F1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_F_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(784)) F2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_F_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(864)) G1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_G_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(928)) G2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_G_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1008)) H1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_H_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1072)) H2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_H_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1152)) I1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_I_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1216)) I2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_I_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1296)) J1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_J_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1360)) J2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_J_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1440)) K1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_K_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1504)) K2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_K_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1584)) L1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_L_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1648)) L2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_L_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1728)) M1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_M_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1792)) M2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_M_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1872)) N1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_N_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(1936)) N2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_N_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(2016)) O1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_O_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(2080)) O2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_O_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(2160)) P1_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO1_P_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );

    rhd_spi_slave #(.STARTING_SEED(2224)) P2_slave(
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD),
        .MISO(MISO2_P_loopback),
        .CS(CS_RHD),
        .channel(channel_loopback_rhd),
        .rstn(rstn),
        .clk(clk_rhd)
    );


    rhs_spi_slave #(.STARTING_SEED(128)) A_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_A),
        .MISO(MISO_A_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(272)) B_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_B),
        .MISO(MISO_B_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(416)) C_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_C),
        .MISO(MISO_C_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(560)) D_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_D),
        .MISO(MISO_D_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(704)) E_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_E),
        .MISO(MISO_E_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(848)) F_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_F),
        .MISO(MISO_F_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(992)) G_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_G),
        .MISO(MISO_G_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(1136)) H_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_H),
        .MISO(MISO_H_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(1280)) I_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_I),
        .MISO(MISO_I_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(1424)) J_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_J),
        .MISO(MISO_J_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(1568)) K_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_K),
        .MISO(MISO_K_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(1712)) L_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_L),
        .MISO(MISO_L_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(1856)) M_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_M),
        .MISO(MISO_M_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(2000)) N_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_N),
        .MISO(MISO_N_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(2144)) O_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_O),
        .MISO(MISO_O_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    rhs_spi_slave #(.STARTING_SEED(2288)) P_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_P),
        .MISO(MISO_P_loopback),
        .CS(CS_RHS),
        .channel(channel_loopback_rhs),
        .rstn(rstn),
        .clk(clk_rhs)
    );

    

    always @ (posedge clk) begin
        if (!rstn) begin
            state = RESET;
        end
        else begin

            case (state)
                RESET: begin
                    config_start_flag = 0;
                    record_start_flag_rhd = 0;
                    record_start_flag_rhs = 0;
                    zcheck_rhd_start_flag = 0;
                    zcheck_rhs_start_flag = 0;
                    done_rhd_flag = 0;
                    done_rhs_flag = 0;

                    zcheck_global_channel_rhd = 0;
                    zcheck_global_channel_rhs = 0;
                    config_done_record_flag = 0;
                    config_done_zcheck_flag = 0;
                    config_done_reset_flag = 0; 

                    fifo_read_en_rhd = 0;
                    fifo_rst_rhd = 1;
                    fifo_write_en_rhd = 0;

                    fifo_read_en_rhs = 0;
                    fifo_rst_rhs = 1;
                    fifo_write_en_rhs = 0;

                    rhd_64_bit_chunks_counter = RHD_64_BIT_CHUNKS;
                    rhs_64_bit_chunks_counter = RHS_64_BIT_CHUNKS;
                    zcheck_64_bit_chunks_counter = ZCHECK_64_BIT_CHUNKS;
                    fifo_dump_en = 0;

                    fifo_data_out_header = 0;
                    fifo_valid_out_header = 0;

                    data_out = 0;
                    valid_out = 0;
                    last_out = 0;

                    batch_size_counter = batch_size;
                    data_out_header_sent_flag = 0;

                    timestamp = 0;

                    state = READY;
                end

                READY: begin
                    if (record_start) begin
                        config_done_record_flag = 1;
                        state = CONFIG_START;
                    end
                    else if (zcheck_start) begin
                        config_done_zcheck_flag = 1;
                        state = CONFIG_START;
                    end
                end

                CONFIG_START: begin
                    batch_size_counter = batch_size;
                    config_start_flag = 1;
                    if (busy_rhd && busy_rhs) begin
                        config_start_flag = 0;
                        state = CONFIG_WAIT;
                    end
                end

                CONFIG_WAIT: begin
                    if (done_rhd_flag && done_rhs_flag && busy_rhd == 0 && busy_rhs == 0) begin
                        done_rhd_flag = 0;
                        done_rhs_flag = 0;
                        
                        if (config_done_record_flag) begin
                            config_done_record_flag = 0;
                            state = RECORD_START;
                        end
                        else if (config_done_zcheck_flag) begin
                            config_done_zcheck_flag = 0;
                            state = ZCHECK_RHD_START;
                        end
                        else if (config_done_reset_flag) begin
                            config_done_reset_flag = 0;
                            state = RESET;
                        end
                        
                    end
                    else begin
                        if (done_rhd && !done_rhd_flag) begin
                            done_rhd_flag = 1;
                        end
                        if (done_rhs && !done_rhs_flag) begin
                            done_rhs_flag = 1;
                        end
                    end
                end

                ZCHECK_RHD_START: begin
                    if (zcheck_global_channel_rhd == RHD_CHANNELS) begin
                        state = ZCHECK_RHS_START;
                    end
                    else begin
                        zcheck_rhd_start_flag = 1;

                        if (busy_rhd) begin
                            zcheck_rhd_start_flag = 0;
                            state = ZCHECK_RHD_WAIT;
                        end
                    end

                    data_out = 0;
                    valid_out = 0;
                    last_out = 0;

                    fifo_read_en_rhd = 0;
                    fifo_rst_rhd = 0;
                    fifo_write_en_rhd = 1;
                    
                    fifo_read_en_rhs = 0;
                    fifo_rst_rhs = 0;
                    fifo_write_en_rhs = 0;

                end

                ZCHECK_RHD_WAIT: begin


                    if (data_out_header_sent_flag == 0) begin
                        data_out = {magic_number_zcheck, 6'b0, zcheck_global_channel_rhs, zcheck_global_channel_rhd, 2'b0, timestamp};
                        valid_out = 1;
                        data_out_header_sent_flag = 1;
                        batch_size_counter = batch_size_counter - 1;
                    end
                    else begin
                        fifo_read_en_rhd = 1;
                        fifo_read_en_rhs = 0;
                        data_out = fifo_data_out_rhd;
                        valid_out = fifo_valid_out_rhd;
                        last_out = 0;
                    end


                    if (done_rhd_flag && busy_rhd == 0) begin
                        done_rhd_flag = 0;
                        zcheck_global_channel_rhd = zcheck_global_channel_rhd + 1;
                        timestamp = timestamp + 1;
                        data_out_header_sent_flag = 0;
                        state = ZCHECK_RHD_START;
                        
                    end 
                    else if (done_rhd && !done_rhd_flag) begin
                        done_rhd_flag = 1;
                    end

                    if (fifo_valid_out_rhd) begin
                        batch_size_counter = batch_size_counter - 1;
                    end

                    if (batch_size_counter == 0) begin
                        last_out = 1;
                        batch_size_counter = batch_size;
                    end

                end

                ZCHECK_RHS_START: begin
                    if (zcheck_global_channel_rhs == RHS_CHANNELS) begin
                        state = ZCHECK_STOP;
                    end
                    else begin
                        zcheck_rhs_start_flag = 1;

                        if (busy_rhs) begin
                            zcheck_rhs_start_flag = 0;
                            state = ZCHECK_RHS_WAIT;
                        end
                    end

                    data_out = 0;
                    valid_out = 0;
                    last_out = 0;

                    fifo_read_en_rhd = 0;
                    fifo_rst_rhd = 0;
                    fifo_write_en_rhd = 0;
                    
                    fifo_read_en_rhs = 0;
                    fifo_rst_rhs = 0;
                    fifo_write_en_rhs = 1;
                end

                ZCHECK_RHS_WAIT: begin

                    if (data_out_header_sent_flag == 0) begin
                        data_out = {magic_number_zcheck, 6'b0, zcheck_global_channel_rhs, zcheck_global_channel_rhd, 2'b0, timestamp};
                        valid_out = 1;
                        data_out_header_sent_flag = 1;
                        batch_size_counter = batch_size_counter - 1;
                    end
                    else begin
                        fifo_read_en_rhd = 0;
                        fifo_read_en_rhs = 1;
                        data_out = fifo_data_out_rhs;
                        valid_out = fifo_valid_out_rhs;
                        last_out = 0;
                    end

                    if (done_rhs_flag && busy_rhs == 0) begin
                        done_rhs_flag = 0;
                        zcheck_global_channel_rhs = zcheck_global_channel_rhs + 1;
                        timestamp = timestamp + 1;
                        data_out_header_sent_flag = 0;
                        state = ZCHECK_RHS_START;
                    end 
                    else if (done_rhs && !done_rhs_flag) begin
                        done_rhs_flag = 1;
                    end

                    if (fifo_valid_out_rhs) begin
                        batch_size_counter = batch_size_counter - 1;
                    end

                    if (batch_size_counter == 0) begin
                        last_out = 1;
                        batch_size_counter = batch_size;
                    end

                end

                ZCHECK_STOP: begin

                    fifo_read_en_rhd = 0;
                    fifo_rst_rhd = 0;
                    fifo_write_en_rhd = 0;
                    
                    fifo_read_en_rhs = 0;
                    fifo_rst_rhs = 0;
                    fifo_write_en_rhs = 0;

                    data_out = 0;
                    valid_out = 0;
                    last_out = 0;

                    if (!busy_rhd && !busy_rhs) begin
                        config_done_reset_flag = 1;
                        state = CONFIG_START;
                    end
                end

                RECORD_START: begin

                    if (record_stop) begin
                        state = RECORD_STOP;
                    end
                    else begin
                        record_start_flag_rhd = 1;
                        record_start_flag_rhs = 1;
                        if (busy_rhd && busy_rhs) begin
                            record_start_flag_rhd = 0;
                            //record_start_flag_rhs = 0;
                            state = RECORD_WAIT;
                        end
                    end

                    fifo_read_en_rhd = 0;
                    fifo_rst_rhd = 0;
                    fifo_write_en_rhd = 1;
                    
                    fifo_read_en_rhs = 0;
                    fifo_rst_rhs = 0;
                    fifo_write_en_rhs = 0;



                end

                RECORD_WAIT: begin

                    fifo_read_en_rhd = 0;
                    fifo_read_en_rhs = 0;
                    data_out = 0;
                    valid_out = 0;
                    last_out = 0;

                    if (fifo_dump_en) begin
                        if (data_out_header_sent_flag == 0) begin //header sending
                            data_out = {magic_number_recording, 30'b0, aux_signal, busy_stim_rhs, timestamp - 16'b1};
                            valid_out = 1;
                            data_out_header_sent_flag = 1;
                        end
                        else if (rhd_64_bit_chunks_counter > 0) begin
                            fifo_read_en_rhd = 1;
                            if (fifo_valid_out_rhd) begin
                                data_out = fifo_data_out_rhd;
                                valid_out = fifo_valid_out_rhd;
                                rhd_64_bit_chunks_counter = rhd_64_bit_chunks_counter - 1;
                            end
                        end
                        else if (rhs_64_bit_chunks_counter > 0) begin
                            fifo_read_en_rhs = 1;

                            if (fifo_valid_out_rhs) begin
                                data_out = fifo_data_out_rhs;
                                valid_out = fifo_valid_out_rhs;
                                if (rhs_64_bit_chunks_counter == 1) begin
                                    if (batch_size_counter == 0) begin
                                        last_out = 1;
                                        batch_size_counter = batch_size;
                                    end
                                end
                                rhs_64_bit_chunks_counter = rhs_64_bit_chunks_counter - 1;
                            end
                        end
                    end

                    if (record_stop) begin
                        state = RECORD_STOP;
                    end
                    else begin
                        if (done_rhd_flag && done_rhs_flag && busy_rhd == 0) begin

                            batch_size_counter = batch_size_counter - 1;
                            timestamp = timestamp + 1;

                            done_rhd_flag = 0;
                            done_rhs_flag = 0;
                            fifo_dump_en = 1;
                            rhd_64_bit_chunks_counter = RHD_64_BIT_CHUNKS;
                            rhs_64_bit_chunks_counter = RHS_64_BIT_CHUNKS;

                            data_out_header_sent_flag = 0;

                            state = RECORD_START;
                        end
                        else begin
                            if (done_rhd && !done_rhd_flag) begin
                                done_rhd_flag = 1;
                                fifo_write_en_rhd = 0;
                            end
                            if (done_rhs && !done_rhs_flag && fifo_write_en_rhs == 0) begin
                                //done_rhs_flag = 1;
                                fifo_write_en_rhs = 1;
                            end
                            else if (done_rhs && !done_rhs_flag && fifo_write_en_rhs == 1) begin
                                done_rhs_flag = 1;
                                fifo_write_en_rhs = 0;
                            end
                        end

                    end


                end

                RECORD_STOP: begin
                    if (!busy_rhd && !busy_rhs) begin
                        config_done_reset_flag = 1;
                        state = CONFIG_START;
                    end
                end

            endcase
        end
    end






 endmodule