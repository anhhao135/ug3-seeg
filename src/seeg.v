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

    output reg record_data_valid,
    output reg zcheck_data_valid,

    input wire loopback_mode, //fake generated data from internal slaves

    output wire CS_RHD,
    output wire SCLK_RHD,
    output wire MOSI_RHD,
    
    output wire CS_RHS,
    output wire SCLK_RHS
    
    
);

    wire clk_rhd;
    clock_divider ClockDivideByTwo (.clock_in(clk), .clock_out(clk_rhd), .divisor(2)); //rhs runs on a clock twice as fast as rhd
    localparam READY = 0, RESET = 1, CONFIG_START = 2, CONFIG_WAIT = 3, RECORD_START = 4, RECORD_WAIT = 5, RECORD_STOP = 6, ZCHECK_RHD_START = 7, ZCHECK_RHD_WAIT = 8, ZCHECK_RHS_START = 9, ZCHECK_RHS_WAIT = 10, ZCHECK_STOP = 11;
    reg [7:0] state = READY;

    assign busy = (state != READY);
    assign zcheck_done = (state == ZCHECK_STOP);

    wire done_rhd;
    wire done_rhs;
    wire busy_rhd;
    wire busy_rhs;

    reg config_start_flag = 0;
    reg record_start_flag = 0;
    reg zcheck_rhd_start_flag = 0;
    reg zcheck_rhs_start_flag = 0;

    wire zcheck_in_progress;
    assign zcheck_in_progress = (state == ZCHECK_RHD_START) || (state == ZCHECK_RHD_WAIT) || (state == ZCHECK_RHS_START) || (state == ZCHECK_RHS_WAIT) || (state == ZCHECK_STOP);

    /*
    localparam RHD_CHANNELS = 2048;
    localparam RHS_CHANNELS = 256;
    */ //UNCOMMENT IN PRODUCTION

    localparam RHD_CHANNELS = 7;
    localparam RHS_CHANNELS = 5;

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

    assign channel_loopback_rhd = zcheck_in_progress ? zcheck_chip_channel_rhd + 2 : channel_out_rhd;
    assign channel_loopback_rhs = zcheck_in_progress ? zcheck_chip_channel_rhs + 2 : channel_out_rhs;

    reg done_rhd_flag = 0;
    reg done_rhs_flag = 0;

    reg config_done_record_flag = 0; //indicates if after config is done whether record state should be entered
    reg config_done_zcheck_flag = 0; //indicates if after config is done whether zcheck state should be entered
    reg config_done_reset_flag = 0; //indicates if after config is done whether reset state should be entered; this should be done after recording and zcheck as a register reset cycle

    reg [2559:0] zcheck_data_out_rhd_reg;
    reg [2559:0] zcheck_data_out_rhs_reg;

    wire [2559:0] zcheck_data_out_rhd;
    wire [2559:0] zcheck_data_out_rhs;

    wire [32767:0] data_out_rhd;
    wire [4095:0] data_out_rhs;


    wire [1:0] stim_waveform_data_out;

    rhd_2048 rhd_2048(
        .clk(clk_rhd),
        .rstn(rstn),
        .config_start(config_start_flag),
        .record_start(record_start_flag),
        .zcheck_start(zcheck_rhd_start_flag),
        .done(done_rhd),
        .busy(busy_rhd),
        .zcheck_global_channel(zcheck_global_channel_rhd),
        .zcheck_scale(zcheck_scale),
        .sampling_rate_20k(0), //hardcoded to 0 for now, only 2.5 kS/s
        .data_out(data_out_rhd),
        .zcheck_data_out(zcheck_data_out_rhd),
        .channel_out(channel_out_rhd),
        .CS(CS_RHD),
        .SCLK(SCLK_RHD),
        .MOSI(MOSI_RHD)
    );

    rhs_256 rhs_256(
        .clk(clk),
        .rstn(rstn),
        .config_start(config_start_flag),
        .record_start(record_start_flag),
        .zcheck_start(zcheck_rhs_start_flag),
        .done(done_rhs),
        .busy(busy_rhs),
        .channel_out(channel_out_rhs),

        .data_out(data_out_rhs),

        .zcheck_data_out(zcheck_data_out_rhs),
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
        .SCLK(SCLK_RHS)
        
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


    rhs_spi_slave #(.STARTING_SEED(0)) A_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_A),
        .MISO(MISO_A_loopback),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(16)) B_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_B),
        .MISO(MISO_B),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(32)) C_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_C),
        .MISO(MISO_C),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(48)) D_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_D),
        .MISO(MISO_D),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(64)) E_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_E),
        .MISO(MISO_E),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(80)) F_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_F),
        .MISO(MISO_F),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(96)) G_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_G),
        .MISO(MISO_G),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(112)) H_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_H),
        .MISO(MISO_H),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(128)) I_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_I),
        .MISO(MISO_I),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(144)) J_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_J),
        .MISO(MISO_J),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(160)) K_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_K),
        .MISO(MISO_K),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(176)) L_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_L),
        .MISO(MISO_L),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(192)) M_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_M),
        .MISO(MISO_M),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(208)) N_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_N),
        .MISO(MISO_N),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(224)) O_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_O),
        .MISO(MISO_O),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    rhs_spi_slave #(.STARTING_SEED(240)) P_slave(
        .SCLK(SCLK_RHS),
        .MOSI(MOSI_P),
        .MISO(MISO_P),
        .CS(CS),
        .channel(rhs_channel),
        .rstn(rstn)
    );

    

    always @ (posedge clk) begin
        if (!rstn) begin
            state = RESET;
        end
        else begin
            case (state)

                RESET: begin
                    config_start_flag = 0;
                    record_start_flag = 0;
                    zcheck_rhd_start_flag = 0;
                    zcheck_rhs_start_flag = 0;
                    done_rhd_flag = 0;
                    done_rhs_flag = 0;
                    state = READY;
                    zcheck_global_channel_rhd = 0;
                    zcheck_global_channel_rhs = 0;
                    config_done_record_flag = 0;
                    config_done_zcheck_flag = 0;
                    config_done_reset_flag = 0; 
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
                end

                ZCHECK_RHD_WAIT: begin
                    if (done_rhd_flag && busy_rhd == 0) begin
                        done_rhd_flag = 0;
                        zcheck_global_channel_rhd = zcheck_global_channel_rhd + 1;
                        state = ZCHECK_RHD_START;
                    end 
                    else if (done_rhd && !done_rhd_flag) begin
                        done_rhd_flag = 1;
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
                end

                ZCHECK_RHS_WAIT: begin
                    if (done_rhs_flag && busy_rhs == 0) begin
                        done_rhs_flag = 0;
                        zcheck_global_channel_rhs = zcheck_global_channel_rhs + 1;
                        state = ZCHECK_RHS_START;
                    end 
                    else if (done_rhs && !done_rhs_flag) begin
                        done_rhs_flag = 1;
                    end
                end

                ZCHECK_STOP: begin
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
                        record_start_flag = 1;
                        if (busy_rhd && busy_rhs) begin
                            record_start_flag = 0;
                            state = RECORD_WAIT;
                        end
                    end

                end

                RECORD_WAIT: begin
                    if (record_stop) begin
                        state = RECORD_STOP;
                    end
                    else begin
                        if (done_rhd_flag && done_rhs_flag && busy_rhd == 0 && busy_rhs == 0) begin
                            done_rhd_flag = 0;
                            done_rhs_flag = 0;
                            state = RECORD_START;
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