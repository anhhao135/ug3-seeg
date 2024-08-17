`timescale 1ns/1ps




module rhs
    (
    input  wire                              clk,
    input  wire                              resetn,
    input  wire                              M_AXIS_ACLK,
    input  wire                              M_AXIS_ARESETN,

    // SPI
    output reg                               CS_b,
    output reg                               SCLK,


    output wire                              MOSI1,
    output wire                              MOSI2,
    output wire                              MOSI3,
    output wire                              MOSI4,
    output wire                              MOSI5,
    output wire                              MOSI6,
    output wire                              MOSI7,
    output wire                              MOSI8,
    output wire                              MOSI9,
    output wire                              MOSI10,
    output wire                              MOSI11,
    output wire                              MOSI12,
    output wire                              MOSI13,
    output wire                              MOSI14,
    output wire                              MOSI15,
    output wire                              MOSI16,

    input  wire                              MISO1,
    input  wire                              MISO2,
    input  wire                              MISO3,
    input  wire                              MISO4,
    input  wire                              MISO5,
    input  wire                              MISO6,
    input  wire                              MISO7,
    input  wire                              MISO8,
    input  wire                              MISO9,
    input  wire                              MISO10,
    input  wire                              MISO11,
    input  wire                              MISO12,
    input  wire                              MISO13,
    input  wire                              MISO14,
    input  wire                              MISO15,
    input  wire                              MISO16,

    output wire [15:0]                       rhs_status, //reg0
    output wire                              FIFO_rstn,
    // AXI-Stream
    output wire [63:0]                       M_AXIS_tdata,
    output wire		                         M_AXIS_tvalid,
    input  wire		                         M_AXIS_tready,
    output wire		                         M_AXIS_tlast,


    // each register has 32 bits

    // REG0: RHS_SETUP
    input wire                               SPI_ONOFF,               // AXI4-Lite
    input wire                               init_en,                 // AXI4-Lite
    input wire                               mag_set_en,              // AXI4-Lite
    input wire				                 stim_en,                 // AXI4-Lite
    input wire                               impedance_check,         // AXI4-Lite


    // REG1: STIM_MAG
    input wire [15:0]                        mag_pos,                 // AXI4-Lite , 31:24 pos trim (128 by default), 23:16 pos mag
    input wire [15:0]                        mag_neg,                 // AXI4-Lite , 15:8 neg trim (128 by default), 7:0 neg mag

    // REG2: BATCH_SIZE
    input wire [15:0]                        batch_size,

    // REG3: ZCHECK_SETUP
    input wire [7:0]                         impedance_check_cycle, 
    input wire [1:0]                         impedance_check_scale,

    // REG4: STIM_CH
    input wire [15:0]                        stim_mask, // enable probe corresponds to 1 in bit index A-P <-> bit 0 - bit 15
    input wire                               stim_mono_vs_bi, //0 is mono, 1 is bi
    input wire                               stim_biphasic_polarity,       // 1 corresponds to rising edge first, 0 is falling edge first
    input wire [3:0]                         stim_ch_p, //choose positive electrode from 0 to 15, this will also be the monopolar channel
    input wire [3:0]                         stim_ch_n, //choose negative electrode from 0 to 15, this will not matter if in monopolar mode

    // REG5: PULSE_WIDTH
    input wire [10:0]                        stim_pulse_width, // 0-2047 * 29.1648us

    // REG6: INTRAPULSE_DELAY
    input wire [10:0]                        stim_intrapulse_delay, // 0-2047 * 29.1648us

    // REG7: NUMBER OF PULSES
    input wire [9:0]                         stim_num_pulse, 
    input wire                               stim_inf_pulse_mode, //bit 10
    
    output wire [5:0]                        channel_out, //for fake data headstage slave to keep track

    output wire [2:0]                        state_cable_delay_finder_out, //for fake data headstage slave to keep track

    input wire                               rhs_record_trigger,

    output wire                              rhs_fifo_pass_out,

    input wire                               use_manual_cable_delay,

    input wire [3:0]                         differential_cable_delay,
    input wire [3:0]                         single_ended_cable_delay,

    output wire                              flag_channel16_stream_250M_out,

    output wire fifoDoneLatchOut_250M,
    input wire fifoDoneLatchResetnIn_250M

    );
    


    // [SPI I/O]
	wire        MISO_1, MISO_2, MISO_3, MISO_4, MISO_5, MISO_6, MISO_7, MISO_8, MISO_9, MISO_10, MISO_11, MISO_12, MISO_13, MISO_14, MISO_15, MISO_16;
    reg         MOSI_1, MOSI_2, MOSI_3, MOSI_4, MOSI_5, MOSI_6, MOSI_7, MOSI_8, MOSI_9, MOSI_10, MOSI_11, MOSI_12, MOSI_13, MOSI_14, MOSI_15, MOSI_16;

    assign MISO_1 = MISO1;
    assign MISO_2 = MISO2;
    assign MISO_3 = MISO3;
    assign MISO_4 = MISO4;
    assign MISO_5 = MISO5;
    assign MISO_6 = MISO6;
    assign MISO_7 = MISO7;
    assign MISO_8 = MISO8;
    assign MISO_9 = MISO9;
    assign MISO_10 = MISO10;
    assign MISO_11 = MISO11;
    assign MISO_12 = MISO12;
    assign MISO_13 = MISO13;
    assign MISO_14 = MISO14;
    assign MISO_15 = MISO15;
    assign MISO_16 = MISO16;
    
    assign MOSI1 = MOSI_1;
    assign MOSI2 = MOSI_2;
    assign MOSI3 = MOSI_3;
    assign MOSI4 = MOSI_4;
    assign MOSI5 = MOSI_5;
    assign MOSI6 = MOSI_6;
    assign MOSI7 = MOSI_7;
    assign MOSI8 = MOSI_8;
    assign MOSI9 = MOSI_9;
    assign MOSI10 = MOSI_10;
    assign MOSI11 = MOSI_11;
    assign MOSI12 = MOSI_12;
    assign MOSI13 = MOSI_13;
    assign MOSI14 = MOSI_14;
    assign MOSI15 = MOSI_15;
    assign MOSI16 = MOSI_16;



    // [Channel/Batch/Init]
    reg             SPI_running;
    reg [15:0] 		timestamp;			 
    reg [5:0] 		channel; 
    reg [6:0]       channel_config;  // varies from 0-19 (amplfier channels 0-15, plus 3 auxiliary commands)

    assign channel_out = channel;

    // [State machine for cable delay finder]
    localparam
        IN_LOAD = 0,
        IN_SEND_TA_LOAD = 1,
        TA_SEND_IN_LOAD = 2,
        IN_GET_N0_SEND = 3,
        TA_GET = 4,
        N0_GET = 5,
        DONE = 6;

    reg [2:0] state_cable_delay_finder = IN_LOAD;

    assign state_cable_delay_finder_out = state_cable_delay_finder;

    reg rhs_record_flag = 0;

    // [State machine for pulse generation]
    reg  [2:0]      state_pulse;
    localparam
        S_OFF         = 3'b000,
        S_PULSE_ON_N  = 3'b001,
        S_PULSE_ON_P  = 3'b010,
        S_INTRAPULSE  = 3'b011,
        S_Q_RECOVERY  = 3'b100;
    reg  [10:0]     stim_counter; // stim counter [1, 1024]
    reg  [10:0]     time_counter; // step size = 29.1 us, max time length = 29.1 * 2047 = 59.5ms
    wire [10:0]     charge_recov_on_time; // time after D2 for recovery to start
    wire [10:0]     charge_recov_off_time; // time after D2 for recovery to stop
    reg             charge_recov_mode;
    
    assign charge_recov_on_time = 4; //default 4 * 29.1 = 116.4us
    assign charge_recov_off_time = 18; //default 18 * 29.1 = 523.8us

    // [registers related to stim] RHS2116 registers are 16 bit 
    reg [15:0] stim_on; //indicates which out of 16 channels on an RHS chip is activated
    reg [15:0] stim_pol;
    reg [15:0] charge_recov;
    reg [15:0] channel_select_p, channel_select_n; 

    wire [15:0] stim_on_1, stim_on_2, stim_on_3, stim_on_4, stim_on_5, stim_on_6, stim_on_7, stim_on_8, stim_on_9, stim_on_10, stim_on_11, stim_on_12, stim_on_13, stim_on_14, stim_on_15, stim_on_16; 

    //currently, the same channel on/off pattern will be broadcasted to all activated probes
    //future to implement individual probe pattern customization
    assign stim_on_1 = (stim_mask[0]) ? stim_on     :   0; //mask decides which probes will be activated
    assign stim_on_2 = (stim_mask[1]) ? stim_on     :   0;
    assign stim_on_3 = (stim_mask[2]) ? stim_on     :   0;
    assign stim_on_4 = (stim_mask[3]) ? stim_on     :   0;
    assign stim_on_5 = (stim_mask[4]) ? stim_on     :   0;
    assign stim_on_6 = (stim_mask[5]) ? stim_on     :   0;
    assign stim_on_7 = (stim_mask[6]) ? stim_on     :   0;
    assign stim_on_8 = (stim_mask[7]) ? stim_on     :   0;
    assign stim_on_9 = (stim_mask[8]) ? stim_on     :   0;
    assign stim_on_10 = (stim_mask[9]) ? stim_on     :   0;
    assign stim_on_11 = (stim_mask[10]) ? stim_on     :   0;
    assign stim_on_12 = (stim_mask[11]) ? stim_on     :   0;
    assign stim_on_13 = (stim_mask[12]) ? stim_on     :   0;
    assign stim_on_14 = (stim_mask[13]) ? stim_on     :   0;
    assign stim_on_15 = (stim_mask[14]) ? stim_on     :   0;
    assign stim_on_16 = (stim_mask[15]) ? stim_on     :   0;


    always @(*) begin //* means to autogenerate sensitivity list
    
        case (stim_ch_p) //bit mask channel select to be written to stimulator on register 42 of RHS
            0:      channel_select_p <= 16'b0000000000000001;      
            1:      channel_select_p <= 16'b0000000000000010;
            2:      channel_select_p <= 16'b0000000000000100;
            3:      channel_select_p <= 16'b0000000000001000;
            4:      channel_select_p <= 16'b0000000000010000;
            5:      channel_select_p <= 16'b0000000000100000;  
            6:      channel_select_p <= 16'b0000000001000000;
            7:      channel_select_p <= 16'b0000000010000000;
            8:      channel_select_p <= 16'b0000000100000000;
            9:      channel_select_p <= 16'b0000001000000000;
            10:     channel_select_p <= 16'b0000010000000000;
            11:     channel_select_p <= 16'b0000100000000000;
            12:     channel_select_p <= 16'b0001000000000000;
            13:     channel_select_p <= 16'b0010000000000000;
            14:     channel_select_p <= 16'b0100000000000000;
            15:     channel_select_p <= 16'b1000000000000000;
        endcase

        case (stim_ch_n)
            0:      channel_select_n <= 16'b0000000000000001;      
            1:      channel_select_n <= 16'b0000000000000010;
            2:      channel_select_n <= 16'b0000000000000100;
            3:      channel_select_n <= 16'b0000000000001000;
            4:      channel_select_n <= 16'b0000000000010000;
            5:      channel_select_n <= 16'b0000000000100000;  
            6:      channel_select_n <= 16'b0000000001000000;
            7:      channel_select_n <= 16'b0000000010000000;
            8:      channel_select_n <= 16'b0000000100000000;
            9:      channel_select_n <= 16'b0000001000000000;
            10:     channel_select_n <= 16'b0000010000000000;
            11:     channel_select_n <= 16'b0000100000000000;
            12:     channel_select_n <= 16'b0001000000000000;
            13:     channel_select_n <= 16'b0010000000000000;
            14:     channel_select_n <= 16'b0100000000000000;
            15:     channel_select_n <= 16'b1000000000000000;
        endcase
    end


    // [ZCheck]
    reg  [31:0]     ZCheck_cmd_1, ZCheck_cmd_2;
    reg             ZCheck_run;
    reg  [4:0]      ZCheck_command_count;
    reg             ZCheck_loop;
    reg             ZCheck_off_flag;
    reg  [6:0]      ZCheck_sine_cycle; 
    reg  [5:0]      ZCheck_channel;
    reg             reg_risingEdge_impCheck;
    reg             stim_en_fallingEdge;

    // [Magic number]
    wire [63:0]		header_magic_number_normal;
    wire [63:0]		header_magic_number_impCheck;
    wire [63:0]     header_magic_number;

    //assign header_magic_number_normal   = 64'hAAAAAAAAAAAAAAAA;  // Fixed 64-bit "magic number" that begins each data frame
    assign header_magic_number_normal   = 64'hCCCCCCCCCCCCCCCC;  
    assign header_magic_number_impCheck = 64'hF00FF00FF00FF00F;  // Fixed 64-bit "magic number" that begins each data frame
    assign header_magic_number          = { ZCheck_loop == 0 }? header_magic_number_normal: header_magic_number_impCheck;


    reg             flag_cable_delay_found = 0;

    reg             flag_spi_stop;
    reg             flag_stim_done;
    wire            flag_lastBatch;
    wire            flag_lastchannel;
    wire            flag_channel16_stream;
    wire            flag_lastconfig;
    wire            flag_terminate_stim;
    wire            flag_terminate_ZCheck;
    wire            flag_terminate_config;

    reg             flag_cable_delay_found_rising_edge_previous = 0;
    reg             flag_cable_delay_low_found = 0;


    assign  flag_lastBatch        = (timestamp == batch_size);
    assign  flag_lastchannel      = (channel == 19);
    assign  flag_channel16_stream = (channel == 18);
    assign  flag_lastconfig       = (channel_config == 39);
    assign  flag_terminate_stim   = flag_lastchannel && flag_lastBatch && flag_stim_done;
    assign  flag_terminate_ZCheck = flag_lastchannel && flag_lastBatch && ZCheck_off_flag;
    assign  flag_terminate_config = flag_lastconfig;

    // Status register
    assign rhs_status   =  {15'b0, flag_stim_done};


    // [MISO]
    //  4 sEEG will uses 8 RHD chips. Each RHD chip uses two stream paths (32 channel per each stream path) 
    //  16 channels in total 
    // Stream data :   
        //          MISO  
        //      --> in4x_
        //      --> in_ 
        //      --> result_
        //      --> data_stream_
        //      --> rhs_data_out
    reg [15:0] 	    rhs_data_out;
    reg				rhd_valid_out;

    reg [133:0] 	in4x_1, in4x_2, in4x_3, in4x_4, in4x_5, in4x_6, in4x_7, in4x_8, in4x_9, in4x_10, in4x_11, in4x_12, in4x_13, in4x_14, in4x_15, in4x_16;
    wire [31:0] 	in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, in_16;
    reg  [31:0] 	result_1, result_2, result_3, result_4, result_5, result_6, result_7, result_8, result_9, result_10, result_11, result_12, result_13, result_14, result_15, result_16;
    wire [31:0]		data_stream_1, data_stream_2, data_stream_3, data_stream_4, data_stream_5, data_stream_6, data_stream_7, data_stream_8, data_stream_9, data_stream_10, data_stream_11, data_stream_12, data_stream_13, data_stream_14, data_stream_15, data_stream_16;

    assign data_stream_1 = result_1;
    assign data_stream_2 = result_2;
    assign data_stream_3 = result_3;
    assign data_stream_4 = result_4;
    assign data_stream_5 = result_5;
    assign data_stream_6 = result_6;
    assign data_stream_7 = result_7;
    assign data_stream_8 = result_8;
    assign data_stream_9 = result_9;
    assign data_stream_10 = result_10;
    assign data_stream_11 = result_11;
    assign data_stream_12 = result_12;
    assign data_stream_13 = result_13;
    assign data_stream_14 = result_14;
    assign data_stream_15 = result_15;
    assign data_stream_16 = result_16;

    reg [3:0] phase_select = 0;

    reg [3:0] phase_select_low;

    wire [3:0] phase_select_out;

    
    assign phase_select_out = use_manual_cable_delay ? single_ended_cable_delay : phase_select;

    // MISO phase selectors (to compensate for headstage cable delays)

    MISO_phase_selector MISO_falling_edge_1 (
        .phase_select(phase_select_out), .MISO4x(in4x_1), .MISO(in_1));	

    MISO_phase_selector MISO_falling_edge_2 (
        .phase_select(phase_select_out), .MISO4x(in4x_2), .MISO(in_2));

    MISO_phase_selector MISO_falling_edge_3 (
        .phase_select(phase_select_out), .MISO4x(in4x_3), .MISO(in_3));	

    MISO_phase_selector MISO_falling_edge_4 (
        .phase_select(phase_select_out), .MISO4x(in4x_4), .MISO(in_4));

    MISO_phase_selector MISO_falling_edge_5 (
        .phase_select(phase_select_out), .MISO4x(in4x_5), .MISO(in_5));	

    MISO_phase_selector MISO_falling_edge_6 (
        .phase_select(phase_select_out), .MISO4x(in4x_6), .MISO(in_6));

    MISO_phase_selector MISO_falling_edge_7 (
        .phase_select(phase_select_out), .MISO4x(in4x_7), .MISO(in_7));	

    MISO_phase_selector MISO_falling_edge_8 (
        .phase_select(phase_select_out), .MISO4x(in4x_8), .MISO(in_8));

    MISO_phase_selector MISO_falling_edge_9 (
        .phase_select(phase_select_out), .MISO4x(in4x_9), .MISO(in_9));	

    MISO_phase_selector MISO_falling_edge_10 (
        .phase_select(phase_select_out), .MISO4x(in4x_10), .MISO(in_10));

    MISO_phase_selector MISO_falling_edge_11 (
        .phase_select(phase_select_out), .MISO4x(in4x_11), .MISO(in_11));	

    MISO_phase_selector MISO_falling_edge_12 (
        .phase_select(phase_select_out), .MISO4x(in4x_12), .MISO(in_12));

    MISO_phase_selector MISO_falling_edge_13 (
        .phase_select(phase_select_out), .MISO4x(in4x_13), .MISO(in_13));	

    MISO_phase_selector MISO_falling_edge_14 (
        .phase_select(phase_select_out), .MISO4x(in4x_14), .MISO(in_14));

    MISO_phase_selector MISO_falling_edge_15 (
        .phase_select(phase_select_out), .MISO4x(in4x_15), .MISO(in_15));	

    MISO_phase_selector MISO_falling_edge_16 (
        .phase_select(phase_select_out), .MISO4x(in4x_16), .MISO(in_16));



    // [INITIALIZATION]
    reg [31:0] 		MOSI_cmd_1, MOSI_cmd_2, MOSI_cmd_3, MOSI_cmd_4, MOSI_cmd_5, MOSI_cmd_6, MOSI_cmd_7, MOSI_cmd_8, MOSI_cmd_9, MOSI_cmd_10, MOSI_cmd_11, MOSI_cmd_12, MOSI_cmd_13, MOSI_cmd_14, MOSI_cmd_15, MOSI_cmd_16;


    /*
    wire [31:0] 	MOSI_cmd_selected_init_1, MOSI_cmd_selected_init_2, MOSI_cmd_selected_init_3, MOSI_cmd_selected_init_4, MOSI_cmd_selected_init_5, MOSI_cmd_selected_init_6, MOSI_cmd_selected_init_7, MOSI_cmd_selected_init_8, MOSI_cmd_selected_init_9, MOSI_cmd_selected_init_2, MOSI_cmd_selected_init_1, MOSI_cmd_selected_init_2, MOSI_cmd_selected_init_1, MOSI_cmd_selected_init_2, MOSI_cmd_selected_init_1, MOSI_cmd_selected_init_2;
    */

    wire [31:0] 	MOSI_cmd_selected_init;

    reg [31:0]     MOSI_cmd_selected_cable_delay_finder;

    wire [31:0]     MOSI_cmd_selected_amp;

    wire [31:0] 	MOSI_cmd_selected_norm_1, MOSI_cmd_selected_norm_2, MOSI_cmd_selected_norm_3, MOSI_cmd_selected_norm_4, MOSI_cmd_selected_norm_5, MOSI_cmd_selected_norm_6, MOSI_cmd_selected_norm_7, MOSI_cmd_selected_norm_8, MOSI_cmd_selected_norm_9, MOSI_cmd_selected_norm_10, MOSI_cmd_selected_norm_11, MOSI_cmd_selected_norm_12, MOSI_cmd_selected_norm_13, MOSI_cmd_selected_norm_14, MOSI_cmd_selected_norm_15, MOSI_cmd_selected_norm_16; 


    // `command selector` controls the MOSI commands.

    command_initialization command_selector_init_1 (
        .init_en(init_en),
        .channel_config(channel_config),
        .MOSI_cmd(MOSI_cmd_selected_init));


    /*
    command_initialization command_selector_init_2 (
        .init_en(init_en),
        .channel_config(channel_config),
        .MOSI_cmd(MOSI_cmd_selected_init_2));
    */


    command_amplitudeSetup command_selector_amp (
        .mag_set_en(mag_set_en),
        .channel_config(channel_config),
        .mag_pos(mag_pos),
        .mag_neg(mag_neg),
        .MOSI_cmd(MOSI_cmd_selected_amp));


    /*
    command_amplitudeSetup command_selector_amp_2 (
        .mag_set_en(mag_set_en),
        .channel_config(channel_config),
        .mag_pos(mag_pos),
        .mag_neg(mag_neg),
        .MOSI_cmd(MOSI_cmd_selected_amp_2));
    */

    command_selector_stim command_selector_stim_1 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_1),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_1));

    command_selector_stim command_selector_stim_2 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_2),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_2));

    command_selector_stim command_selector_stim_3 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_3),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_3));

    command_selector_stim command_selector_stim_4 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_4),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_4));

    command_selector_stim command_selector_stim_5 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_5),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_5));

    command_selector_stim command_selector_stim_6 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_6),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_6));

    command_selector_stim command_selector_stim_7 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_7),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_7));

    command_selector_stim command_selector_stim_8 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_8),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_8));

    command_selector_stim command_selector_stim_9 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_9),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_9));

    command_selector_stim command_selector_stim_10 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_10),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_10));

    command_selector_stim command_selector_stim_11 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_11),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_11));

    command_selector_stim command_selector_stim_12 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_12),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_12));

    command_selector_stim command_selector_stim_13 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_13),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_13));

    command_selector_stim command_selector_stim_14 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_14),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_14));

    command_selector_stim command_selector_stim_15 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_15),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_15));

    command_selector_stim command_selector_stim_16 (
        .enable(!init_en && !mag_set_en),
        .channel(channel),
        .charge_recov_mode(charge_recov_mode),
        .ZCheck_cmd_1(ZCheck_cmd_1),
        .ZCheck_cmd_2(ZCheck_cmd_2),
        .stim_en(stim_en),
        .stim_on(stim_on_16),
        .stim_pol(stim_pol),
        .charge_recov(charge_recov),
        .MOSI_cmd(MOSI_cmd_selected_norm_16));



    // AXI-Stream interface
    wire empty;
    wire valid_fifo_out;
    wire [63:0] data_fifo_out;

    reg rhs_fifo_pass = 0;

    wire rhs_fifo_pass_out_internal;

    assign rhs_fifo_pass_out_internal = rhs_fifo_pass || rhs_record_flag;

    wire SPI_running_250M;


    xpm_cdc_1bit xpm_cdc_1bit_inst_rhs_fifo_pass_out(
        .dest_clk(M_AXIS_ACLK),
        .dest_out(rhs_fifo_pass_out),
        .src_clk(clk),
        .src_in(rhs_fifo_pass_out_internal));    
    
    xpm_cdc_1bit xpm_cdc_1bit_inst_1(
        .dest_clk(M_AXIS_ACLK),
        .dest_out(SPI_running_250M),
        .src_clk(clk),
        .src_in(SPI_running));    


    fifo_generator_0 fifo_inst (
        .srst(!resetn || !SPI_running),
        .wr_clk(clk),
        .rd_clk(M_AXIS_ACLK),
        .din(rhs_data_out),
        .wr_en(rhd_valid_out && (channel >= 3) && (channel <= 18) && flag_cable_delay_found), // overwrite if FIFO is full, there are 2-channel delay in the SPI interface
        .rd_en(M_AXIS_tready && SPI_running_250M && !empty), // read when SPI is running + FIFO is not empty
        .dout(data_fifo_out),
        .full(),
        .empty(empty),
        .valid(valid_fifo_out),
        .wr_rst_busy(),
        .rd_rst_busy()
        );




    wire fifoDoneLatchResetn;

    xpm_cdc_1bit fifoDoneLatchBuffer(
        .dest_clk(M_AXIS_ACLK),
        .dest_out(fifoDoneLatchOut_250M),
        .src_clk(clk),
        .src_in(fifoDoneLatch)); 

    xpm_cdc_1bit fifoDoneLatchResetnBuffer(
        .dest_clk(clk),
        .dest_out(fifoDoneLatchResetn),
        .src_clk(M_AXIS_ACLK),
        .src_in(fifoDoneLatchResetnIn_250M)); 


    wire fifoDoneLatch;
    assign fifoDoneLatch = (flag_lastchannel) && (!init_en) && (!mag_set_en);
    //risingEdgeLatch fifoDoneLatchModule (resetn, (flag_lastchannel) && (!init_en) && (!mag_set_en), fifoDoneLatch);


    assign FIFO_rstn        = SPI_running_250M;

    // TLAST Generator

    wire         flag_lastBatch_250M;
    wire         flag_channel16_stream_250M;
    wire         rhs_record_trigger_internal;


    xpm_cdc_1bit xpm_cdc_1bit_inst_2(
        .dest_clk(M_AXIS_ACLK),
        .dest_out(flag_lastBatch_250M),
        .src_clk(clk),
        .src_in(flag_lastBatch));    

    xpm_cdc_1bit xpm_cdc_5bit_inst_3(
        .dest_clk(M_AXIS_ACLK),
        .dest_out(flag_channel16_stream_250M),
        .src_clk(clk),
        .src_in(flag_channel16_stream));    

    xpm_cdc_1bit xpm_cdc_5bit_inst_rhs_record_trigger(
        .dest_clk(clk),
        .dest_out(rhs_record_trigger_internal),
        .src_clk(M_AXIS_ACLK),
        .src_in(rhs_record_trigger));    

    wire        tlast_flag_bit;
    assign      tlast_flag_bit = flag_channel16_stream_250M && valid_fifo_out;
    assign      flag_channel16_stream_250M_out = flag_channel16_stream_250M;

    //reg [3:0]   tlast_cnt; 
    //assign      tlast_flag_bit = tlast_cnt[3];

    //always @(posedge M_AXIS_ACLK) begin
    //    if (!M_AXIS_ARESETN) begin
    //        tlast_cnt <= 0;
    //    end 
    //    else begin
    //        if (flag_channel16_stream_250M && valid_fifo_out) begin
    //            tlast_cnt <= tlast_cnt + 1;
    //        end
    //        if (tlast_flag_bit == 1) begin
    //            tlast_cnt <= 0;
    //        end
    //    end
    //end


    reg [63:0] maxis_data_reg;
    reg        maxis_valid_reg;




    always @(posedge M_AXIS_ACLK) begin


        if (!M_AXIS_ARESETN) begin
            maxis_data_reg  <= 0;
            maxis_valid_reg <= 0;
        end 
        else begin
            maxis_data_reg  <= data_fifo_out;
            maxis_valid_reg <= valid_fifo_out;
        end
    end

    assign M_AXIS_tvalid = maxis_valid_reg;
    assign M_AXIS_tlast  = flag_lastBatch_250M && tlast_flag_bit;
    assign M_AXIS_tdata  = maxis_data_reg;






    reg rhs_record_trigger_rising_edge_previous;
    reg flag_lastchannel_rising_edge_previous;



    // Main state machine for generating SPI signals
    reg [7:0] main_state;
    localparam
        ms_wait    = 00,
        ms_cs_j    = 01,
        ms_clk1_a  = 02,
        ms_clk1_b  = 03,
        ms_clk1_c  = 04,
        ms_clk1_d  = 05,
        ms_clk2_a  = 06,
        ms_clk2_b  = 07,
        ms_clk2_c  = 08,
        ms_clk2_d  = 09,
        ms_clk3_a  = 10,
        ms_clk3_b  = 11,
        ms_clk3_c  = 12,
        ms_clk3_d  = 13,
        ms_clk4_a  = 14,
        ms_clk4_b  = 15,
        ms_clk4_c  = 16,
        ms_clk4_d  = 17,
        ms_clk5_a  = 18,
        ms_clk5_b  = 19,
        ms_clk5_c  = 20,
        ms_clk5_d  = 21,
        ms_clk6_a  = 22,
        ms_clk6_b  = 23,
        ms_clk6_c  = 24,
        ms_clk6_d  = 25,
        ms_clk7_a  = 26,
        ms_clk7_b  = 27,
        ms_clk7_c  = 28,
        ms_clk7_d  = 29,
        ms_clk8_a  = 30,
        ms_clk8_b  = 31,
        ms_clk8_c  = 32,
        ms_clk8_d  = 33,
        ms_clk9_a  = 34,
        ms_clk9_b  = 35,
        ms_clk9_c  = 36,
        ms_clk9_d  = 37,
        ms_clk10_a = 38,
        ms_clk10_b = 39,
        ms_clk10_c = 40,
        ms_clk10_d = 41,
        ms_clk11_a = 42,
        ms_clk11_b = 43,
        ms_clk11_c = 44,
        ms_clk11_d = 45,
        ms_clk12_a = 46,
        ms_clk12_b = 47,
        ms_clk12_c = 48,
        ms_clk12_d = 49,
        ms_clk13_a = 50,
        ms_clk13_b = 51,
        ms_clk13_c = 52,
        ms_clk13_d = 53,
        ms_clk14_a = 54,
        ms_clk14_b = 55,
        ms_clk14_c = 56,
        ms_clk14_d = 57,
        ms_clk15_a = 58,
        ms_clk15_b = 59,
        ms_clk15_c = 60,
        ms_clk15_d = 61,
        ms_clk16_a = 62,
        ms_clk16_b = 63,
        ms_clk16_c = 64,
        ms_clk16_d = 65,
        ms_clk17_a = 66,
        ms_clk17_b = 67,
        ms_clk17_c = 68,
        ms_clk17_d = 69,

        ms_clk18_a = 70,
        ms_clk18_b = 71,
        ms_clk18_c = 72,
        ms_clk18_d = 73,

        ms_clk19_a = 74,
        ms_clk19_b = 75,
        ms_clk19_c = 76,
        ms_clk19_d = 77,

        ms_clk20_a = 78,
        ms_clk20_b = 79,
        ms_clk20_c = 80,
        ms_clk20_d = 81,

        ms_clk21_a = 82,
        ms_clk21_b = 83,
        ms_clk21_c = 84,
        ms_clk21_d = 85,

        ms_clk22_a = 86,
        ms_clk22_b = 87,
        ms_clk22_c = 88,
        ms_clk22_d = 89,

        ms_clk23_a = 90,
        ms_clk23_b = 91,
        ms_clk23_c = 92,
        ms_clk23_d = 93,

        ms_clk24_a = 94,
        ms_clk24_b = 95,
        ms_clk24_c = 96,
        ms_clk24_d = 97,

        ms_clk25_a = 98,
        ms_clk25_b = 99,
        ms_clk25_c = 100,
        ms_clk25_d = 101,

        ms_clk26_a = 102,
        ms_clk26_b = 103,
        ms_clk26_c = 104,
        ms_clk26_d = 105,

        ms_clk27_a = 106,
        ms_clk27_b = 107,
        ms_clk27_c = 108,
        ms_clk27_d = 109,

        ms_clk28_a = 110,
        ms_clk28_b = 111,
        ms_clk28_c = 112,
        ms_clk28_d = 113,

        ms_clk29_a = 114,
        ms_clk29_b = 115,
        ms_clk29_c = 116,
        ms_clk29_d = 117,

        ms_clk30_a = 118,
        ms_clk30_b = 119,
        ms_clk30_c = 120,
        ms_clk30_d = 121,

        ms_clk31_a = 122,
        ms_clk31_b = 123,
        ms_clk31_c = 124,
        ms_clk31_d = 125,

        ms_clk32_a = 126,
        ms_clk32_b = 127,
        ms_clk32_c = 128,
        ms_clk32_d = 129,
            
        ms_clk33_a = 130,
        ms_clk33_b = 131,
        ms_cs_a    = 132,
        ms_cs_b    = 133,
        ms_cs_c    = 134,
        ms_cs_d    = 135,
        ms_cs_e    = 136,
        ms_cs_f    = 137,
        ms_cs_g    = 138,
        ms_cs_h    = 139,
        ms_cs_i    = 140,
        ms_cs_k    = 141,
        ms_cs_l    = 142;
  
    /* SPI main state */
    always @(posedge clk) begin


        if (rhs_record_trigger_internal == 1 && rhs_record_trigger_rising_edge_previous == 0) begin
            rhs_record_flag = 1;
        end


        if (flag_lastchannel == 1 && flag_lastchannel_rising_edge_previous == 0) begin
            if (rhs_record_flag) begin
                rhs_fifo_pass = 1;
                rhs_record_flag = 0;
            end
            else
                rhs_fifo_pass = 0;
        end

        rhs_record_trigger_rising_edge_previous = rhs_record_trigger_internal;
        flag_lastchannel_rising_edge_previous = flag_lastchannel;

        if (!resetn) begin
            main_state <= ms_wait;
        end
        else begin
            case (main_state)
            ms_wait: begin 
                if (SPI_ONOFF && !flag_spi_stop) begin
                    main_state <= ms_cs_j;
                end
            end
            ms_cs_i: begin
                /*
                if (flag_terminate_stim || flag_terminate_config || flag_terminate_ZCheck) begin
                    main_state <= ms_cs_k;
                end else begin
                    main_state <= ms_cs_j;
                end
                */
                //if (flag_terminate_config || flag_terminate_ZCheck) begin
                if (flag_terminate_config) begin
                    main_state <= ms_cs_k; //exit spi
                end else begin
                    main_state <= ms_cs_j; //loop spi
                end
            end
            ms_cs_l: begin
                main_state <= ms_wait;
            end
            default: begin
                main_state <= main_state + 1;
            end
            endcase
        end
    end    
    
    /* timestamp, channel count, flag, status */
    always @(posedge clk) begin
        if (!resetn) begin
            timestamp <= 0;
            channel <= 0;
            channel_config <= 0;    
            SPI_running <= 1'b0;  
            flag_spi_stop <= 1'b0;   
        end 
        else begin
            case (main_state)
                ms_wait: begin
                    timestamp <= 0;
                    channel <= 0;
                    channel_config <= 0;
                    SPI_running <= 1'b0;
                    if (!SPI_ONOFF) begin
                        flag_spi_stop <= 1'b0;
                    end
                end
                ms_cs_j: begin
                    SPI_running <= 1'b1;
                    // Timestamp is used to define the "batch size"
                    // Timestamp starts with 1 .... ends with BATCH_SIZE. 
                    if (channel == 0) begin
                        if (flag_lastBatch) begin
                            timestamp <= 1;
                        end
                        else begin 
                            timestamp <= timestamp + 1;
                        end
                    end
                end	
				ms_cs_i: begin

                    if (!fifoDoneLatch || !fifoDoneLatchResetn) begin
                        if (flag_lastchannel) begin
                            channel <= 0;
                        end else begin
                            channel <= channel + 1;
                        end
                    end

                    if (init_en || mag_set_en) begin
                        
                        if (flag_lastconfig) begin
                            channel_config <= 0;
                        end else begin
                            if (flag_cable_delay_found == 1 && flag_cable_delay_found_rising_edge_previous == 0) begin
                                channel_config = 0;
                            end
                            else if (flag_cable_delay_found)
                                channel_config = channel_config + 1;
                        end

                        flag_cable_delay_found_rising_edge_previous = flag_cable_delay_found;
                    end
				end
                ms_cs_l: begin
                    flag_spi_stop <= 1'b1;
                end
			endcase
		end
	end

    /* CS_b */
    always @(posedge clk) begin
        if (!resetn) begin
            CS_b <= 1'b1;
        end
        else begin
            CS_b <= 1'b0;
            case (main_state)
                ms_wait: begin
                    CS_b <= 1;
                end
                ms_cs_j: begin
                    CS_b <= 1;
                end
                ms_cs_a: begin
                    CS_b <= 1;
                end
                ms_cs_b: begin
                    CS_b <= 1;
                end
                ms_cs_c: begin
                    CS_b <= 1;
                end
                ms_cs_d: begin
                    CS_b <= 1;
                end
                ms_cs_e: begin
                    CS_b <= 1;
                end
                ms_cs_f: begin
                    CS_b <= 1;
                end
                ms_cs_g: begin
                    CS_b <= 1;
                end
                ms_cs_h: begin
                    CS_b <= 1;
                end
                ms_cs_i: begin
                    CS_b <= 1;
                end
                default: begin
                    CS_b <= 0;
                end
            endcase
        end
    end

    /* SCLK */
    always @(posedge clk) begin
        if (!resetn) begin
            SCLK <= 1'b0;
        end
        else begin
            SCLK <= 1'b0;
            if (main_state >= 4 && main_state < 130 && (main_state % 4) < 2) begin 
                SCLK <= 1;
            end else begin
                SCLK <= 0;
            end
        end
    end

    /* MOSI */
    always @(posedge clk) begin
        if (!resetn) begin
            MOSI_1 <= 1'b0;
            MOSI_2 <= 1'b0;
            MOSI_3 <= 1'b0;
            MOSI_4 <= 1'b0;
            MOSI_5 <= 1'b0;
            MOSI_6 <= 1'b0;
            MOSI_7 <= 1'b0;
            MOSI_8 <= 1'b0;
            MOSI_9 <= 1'b0;
            MOSI_10 <= 1'b0;
            MOSI_11 <= 1'b0;
            MOSI_12 <= 1'b0;
            MOSI_13 <= 1'b0;
            MOSI_14 <= 1'b0;
            MOSI_15 <= 1'b0;
            MOSI_16 <= 1'b0;
            
            MOSI_cmd_1 <= 32'b0;
            MOSI_cmd_2 <= 32'b0;
            MOSI_cmd_3 <= 32'b0;
            MOSI_cmd_4 <= 32'b0;
            MOSI_cmd_5 <= 32'b0;
            MOSI_cmd_6 <= 32'b0;
            MOSI_cmd_7 <= 32'b0;
            MOSI_cmd_8 <= 32'b0;
            MOSI_cmd_9 <= 32'b0;
            MOSI_cmd_10 <= 32'b0;
            MOSI_cmd_11 <= 32'b0;
            MOSI_cmd_12 <= 32'b0;
            MOSI_cmd_13 <= 32'b0;
            MOSI_cmd_14 <= 32'b0;
            MOSI_cmd_15 <= 32'b0;
            MOSI_cmd_16 <= 32'b0;
        end
        else begin
            case (main_state) 
                ms_wait: begin
                    MOSI_1 <= 1'b0;
                    MOSI_2 <= 1'b0;
                    MOSI_3 <= 1'b0;
                    MOSI_4 <= 1'b0;
                    MOSI_5 <= 1'b0;
                    MOSI_6 <= 1'b0;
                    MOSI_7 <= 1'b0;
                    MOSI_8 <= 1'b0;
                    MOSI_9 <= 1'b0;
                    MOSI_10 <= 1'b0;
                    MOSI_11 <= 1'b0;
                    MOSI_12 <= 1'b0;
                    MOSI_13 <= 1'b0;
                    MOSI_14 <= 1'b0;
                    MOSI_15 <= 1'b0;
                    MOSI_16 <= 1'b0;
                    
                    MOSI_cmd_1 <= 32'b0;
                    MOSI_cmd_2 <= 32'b0;
                    MOSI_cmd_3 <= 32'b0;
                    MOSI_cmd_4 <= 32'b0;
                    MOSI_cmd_5 <= 32'b0;
                    MOSI_cmd_6 <= 32'b0;
                    MOSI_cmd_7 <= 32'b0;
                    MOSI_cmd_8 <= 32'b0;
                    MOSI_cmd_9 <= 32'b0;
                    MOSI_cmd_10 <= 32'b0;
                    MOSI_cmd_11 <= 32'b0;
                    MOSI_cmd_12 <= 32'b0;
                    MOSI_cmd_13 <= 32'b0;
                    MOSI_cmd_14 <= 32'b0;
                    MOSI_cmd_15 <= 32'b0;
                    MOSI_cmd_16 <= 32'b0;
                end
                ms_cs_j: begin
                    if (!flag_cable_delay_found && init_en) begin
                        MOSI_cmd_1 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_2 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_3 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_4 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_5 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_6 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_7 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_8 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_9 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_10 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_11 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_12 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_13 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_14 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_15 <= MOSI_cmd_selected_cable_delay_finder;
                        MOSI_cmd_16 <= MOSI_cmd_selected_cable_delay_finder;
                    end
                    else if (flag_cable_delay_found && init_en) begin
                        MOSI_cmd_1 <= MOSI_cmd_selected_init;
                        MOSI_cmd_2 <= MOSI_cmd_selected_init;
                        MOSI_cmd_3 <= MOSI_cmd_selected_init;
                        MOSI_cmd_4 <= MOSI_cmd_selected_init;
                        MOSI_cmd_5 <= MOSI_cmd_selected_init;
                        MOSI_cmd_6 <= MOSI_cmd_selected_init;
                        MOSI_cmd_7 <= MOSI_cmd_selected_init;
                        MOSI_cmd_8 <= MOSI_cmd_selected_init;
                        MOSI_cmd_9 <= MOSI_cmd_selected_init;
                        MOSI_cmd_10 <= MOSI_cmd_selected_init;
                        MOSI_cmd_11 <= MOSI_cmd_selected_init;
                        MOSI_cmd_12 <= MOSI_cmd_selected_init;
                        MOSI_cmd_13 <= MOSI_cmd_selected_init;
                        MOSI_cmd_14 <= MOSI_cmd_selected_init;
                        MOSI_cmd_15 <= MOSI_cmd_selected_init;
                        MOSI_cmd_16 <= MOSI_cmd_selected_init;
                    end 
                    else if (mag_set_en) begin
                        MOSI_cmd_1 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_2 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_3 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_4 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_5 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_6 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_7 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_8 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_9 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_10 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_11 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_12 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_13 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_14 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_15 <= MOSI_cmd_selected_amp;
                        MOSI_cmd_16 <= MOSI_cmd_selected_amp;
                    end 
                    else begin
                        MOSI_cmd_1 <= MOSI_cmd_selected_norm_1;
                        MOSI_cmd_2 <= MOSI_cmd_selected_norm_2;
                        MOSI_cmd_3 <= MOSI_cmd_selected_norm_3;
                        MOSI_cmd_4 <= MOSI_cmd_selected_norm_4;
                        MOSI_cmd_5 <= MOSI_cmd_selected_norm_5;
                        MOSI_cmd_6 <= MOSI_cmd_selected_norm_6;
                        MOSI_cmd_7 <= MOSI_cmd_selected_norm_7;
                        MOSI_cmd_8 <= MOSI_cmd_selected_norm_8;
                        MOSI_cmd_9 <= MOSI_cmd_selected_norm_9;
                        MOSI_cmd_10 <= MOSI_cmd_selected_norm_10;
                        MOSI_cmd_11 <= MOSI_cmd_selected_norm_11;
                        MOSI_cmd_12 <= MOSI_cmd_selected_norm_12;
                        MOSI_cmd_13 <= MOSI_cmd_selected_norm_13;
                        MOSI_cmd_14 <= MOSI_cmd_selected_norm_14;
                        MOSI_cmd_15 <= MOSI_cmd_selected_norm_15;
                        MOSI_cmd_16 <= MOSI_cmd_selected_norm_16;
                    end
                end
                ms_clk1_a: begin
                    MOSI_1 <= MOSI_cmd_1[31];
                    MOSI_2 <= MOSI_cmd_2[31];
                    MOSI_3 <= MOSI_cmd_3[31];
                    MOSI_4 <= MOSI_cmd_4[31];
                    MOSI_5 <= MOSI_cmd_5[31];
                    MOSI_6 <= MOSI_cmd_6[31];
                    MOSI_7 <= MOSI_cmd_7[31];
                    MOSI_8 <= MOSI_cmd_8[31];
                    MOSI_9 <= MOSI_cmd_9[31];
                    MOSI_10 <= MOSI_cmd_10[31];
                    MOSI_11 <= MOSI_cmd_11[31];
                    MOSI_12 <= MOSI_cmd_12[31];
                    MOSI_13 <= MOSI_cmd_13[31];
                    MOSI_14 <= MOSI_cmd_14[31];
                    MOSI_15 <= MOSI_cmd_15[31];
                    MOSI_16 <= MOSI_cmd_16[31];
                end
                ms_clk2_a: begin
                    MOSI_1 <= MOSI_cmd_1[30];
                    MOSI_2 <= MOSI_cmd_2[30];
                    MOSI_3 <= MOSI_cmd_3[30];
                    MOSI_4 <= MOSI_cmd_4[30];
                    MOSI_5 <= MOSI_cmd_5[30];
                    MOSI_6 <= MOSI_cmd_6[30];
                    MOSI_7 <= MOSI_cmd_7[30];
                    MOSI_8 <= MOSI_cmd_8[30];
                    MOSI_9 <= MOSI_cmd_9[30];
                    MOSI_10 <= MOSI_cmd_10[30];
                    MOSI_11 <= MOSI_cmd_11[30];
                    MOSI_12 <= MOSI_cmd_12[30];
                    MOSI_13 <= MOSI_cmd_13[30];
                    MOSI_14 <= MOSI_cmd_14[30];
                    MOSI_15 <= MOSI_cmd_15[30];
                    MOSI_16 <= MOSI_cmd_16[30];
                end
                ms_clk3_a: begin
                    MOSI_1 <= MOSI_cmd_1[29];
                    MOSI_2 <= MOSI_cmd_2[29];
                    MOSI_3 <= MOSI_cmd_3[29];
                    MOSI_4 <= MOSI_cmd_4[29];
                    MOSI_5 <= MOSI_cmd_5[29];
                    MOSI_6 <= MOSI_cmd_6[29];
                    MOSI_7 <= MOSI_cmd_7[29];
                    MOSI_8 <= MOSI_cmd_8[29];
                    MOSI_9 <= MOSI_cmd_9[29];
                    MOSI_10 <= MOSI_cmd_10[29];
                    MOSI_11 <= MOSI_cmd_11[29];
                    MOSI_12 <= MOSI_cmd_12[29];
                    MOSI_13 <= MOSI_cmd_13[29];
                    MOSI_14 <= MOSI_cmd_14[29];
                    MOSI_15 <= MOSI_cmd_15[29];
                    MOSI_16 <= MOSI_cmd_16[29];
                end
                ms_clk4_a: begin
                    MOSI_1 <= MOSI_cmd_1[28];
                    MOSI_2 <= MOSI_cmd_2[28];
                    MOSI_3 <= MOSI_cmd_3[28];
                    MOSI_4 <= MOSI_cmd_4[28];
                    MOSI_5 <= MOSI_cmd_5[28];
                    MOSI_6 <= MOSI_cmd_6[28];
                    MOSI_7 <= MOSI_cmd_7[28];
                    MOSI_8 <= MOSI_cmd_8[28];
                    MOSI_9 <= MOSI_cmd_9[28];
                    MOSI_10 <= MOSI_cmd_10[28];
                    MOSI_11 <= MOSI_cmd_11[28];
                    MOSI_12 <= MOSI_cmd_12[28];
                    MOSI_13 <= MOSI_cmd_13[28];
                    MOSI_14 <= MOSI_cmd_14[28];
                    MOSI_15 <= MOSI_cmd_15[28];
                    MOSI_16 <= MOSI_cmd_16[28];
                end
                ms_clk5_a: begin
                    MOSI_1 <= MOSI_cmd_1[27];
                    MOSI_2 <= MOSI_cmd_2[27];
                    MOSI_3 <= MOSI_cmd_3[27];
                    MOSI_4 <= MOSI_cmd_4[27];
                    MOSI_5 <= MOSI_cmd_5[27];
                    MOSI_6 <= MOSI_cmd_6[27];
                    MOSI_7 <= MOSI_cmd_7[27];
                    MOSI_8 <= MOSI_cmd_8[27];
                    MOSI_9 <= MOSI_cmd_9[27];
                    MOSI_10 <= MOSI_cmd_10[27];
                    MOSI_11 <= MOSI_cmd_11[27];
                    MOSI_12 <= MOSI_cmd_12[27];
                    MOSI_13 <= MOSI_cmd_13[27];
                    MOSI_14 <= MOSI_cmd_14[27];
                    MOSI_15 <= MOSI_cmd_15[27];
                    MOSI_16 <= MOSI_cmd_16[27];
                end
                ms_clk6_a: begin
                    MOSI_1 <= MOSI_cmd_1[26];
                    MOSI_2 <= MOSI_cmd_2[26];
                    MOSI_3 <= MOSI_cmd_3[26];
                    MOSI_4 <= MOSI_cmd_4[26];
                    MOSI_5 <= MOSI_cmd_5[26];
                    MOSI_6 <= MOSI_cmd_6[26];
                    MOSI_7 <= MOSI_cmd_7[26];
                    MOSI_8 <= MOSI_cmd_8[26];
                    MOSI_9 <= MOSI_cmd_9[26];
                    MOSI_10 <= MOSI_cmd_10[26];
                    MOSI_11 <= MOSI_cmd_11[26];
                    MOSI_12 <= MOSI_cmd_12[26];
                    MOSI_13 <= MOSI_cmd_13[26];
                    MOSI_14 <= MOSI_cmd_14[26];
                    MOSI_15 <= MOSI_cmd_15[26];
                    MOSI_16 <= MOSI_cmd_16[26];
                end
                ms_clk7_a: begin
                    MOSI_1 <= MOSI_cmd_1[25];
                    MOSI_2 <= MOSI_cmd_2[25];
                    MOSI_3 <= MOSI_cmd_3[25];
                    MOSI_4 <= MOSI_cmd_4[25];
                    MOSI_5 <= MOSI_cmd_5[25];
                    MOSI_6 <= MOSI_cmd_6[25];
                    MOSI_7 <= MOSI_cmd_7[25];
                    MOSI_8 <= MOSI_cmd_8[25];
                    MOSI_9 <= MOSI_cmd_9[25];
                    MOSI_10 <= MOSI_cmd_10[25];
                    MOSI_11 <= MOSI_cmd_11[25];
                    MOSI_12 <= MOSI_cmd_12[25];
                    MOSI_13 <= MOSI_cmd_13[25];
                    MOSI_14 <= MOSI_cmd_14[25];
                    MOSI_15 <= MOSI_cmd_15[25];
                    MOSI_16 <= MOSI_cmd_16[25];
                end
                ms_clk8_a: begin
                    MOSI_1 <= MOSI_cmd_1[24];
                    MOSI_2 <= MOSI_cmd_2[24];
                    MOSI_3 <= MOSI_cmd_3[24];
                    MOSI_4 <= MOSI_cmd_4[24];
                    MOSI_5 <= MOSI_cmd_5[24];
                    MOSI_6 <= MOSI_cmd_6[24];
                    MOSI_7 <= MOSI_cmd_7[24];
                    MOSI_8 <= MOSI_cmd_8[24];
                    MOSI_9 <= MOSI_cmd_9[24];
                    MOSI_10 <= MOSI_cmd_10[24];
                    MOSI_11 <= MOSI_cmd_11[24];
                    MOSI_12 <= MOSI_cmd_12[24];
                    MOSI_13 <= MOSI_cmd_13[24];
                    MOSI_14 <= MOSI_cmd_14[24];
                    MOSI_15 <= MOSI_cmd_15[24];
                    MOSI_16 <= MOSI_cmd_16[24];
                end
                ms_clk9_a: begin
                    MOSI_1 <= MOSI_cmd_1[23];
                    MOSI_2 <= MOSI_cmd_2[23];
                    MOSI_3 <= MOSI_cmd_3[23];
                    MOSI_4 <= MOSI_cmd_4[23];
                    MOSI_5 <= MOSI_cmd_5[23];
                    MOSI_6 <= MOSI_cmd_6[23];
                    MOSI_7 <= MOSI_cmd_7[23];
                    MOSI_8 <= MOSI_cmd_8[23];
                    MOSI_9 <= MOSI_cmd_9[23];
                    MOSI_10 <= MOSI_cmd_10[23];
                    MOSI_11 <= MOSI_cmd_11[23];
                    MOSI_12 <= MOSI_cmd_12[23];
                    MOSI_13 <= MOSI_cmd_13[23];
                    MOSI_14 <= MOSI_cmd_14[23];
                    MOSI_15 <= MOSI_cmd_15[23];
                    MOSI_16 <= MOSI_cmd_16[23];
                end
                ms_clk10_a: begin
                    MOSI_1 <= MOSI_cmd_1[22];
                    MOSI_2 <= MOSI_cmd_2[22];
                    MOSI_3 <= MOSI_cmd_3[22];
                    MOSI_4 <= MOSI_cmd_4[22];
                    MOSI_5 <= MOSI_cmd_5[22];
                    MOSI_6 <= MOSI_cmd_6[22];
                    MOSI_7 <= MOSI_cmd_7[22];
                    MOSI_8 <= MOSI_cmd_8[22];
                    MOSI_9 <= MOSI_cmd_9[22];
                    MOSI_10 <= MOSI_cmd_10[22];
                    MOSI_11 <= MOSI_cmd_11[22];
                    MOSI_12 <= MOSI_cmd_12[22];
                    MOSI_13 <= MOSI_cmd_13[22];
                    MOSI_14 <= MOSI_cmd_14[22];
                    MOSI_15 <= MOSI_cmd_15[22];
                    MOSI_16 <= MOSI_cmd_16[22];
                end
                ms_clk11_a: begin
                    MOSI_1 <= MOSI_cmd_1[21];
                    MOSI_2 <= MOSI_cmd_2[21];
                    MOSI_3 <= MOSI_cmd_3[21];
                    MOSI_4 <= MOSI_cmd_4[21];
                    MOSI_5 <= MOSI_cmd_5[21];
                    MOSI_6 <= MOSI_cmd_6[21];
                    MOSI_7 <= MOSI_cmd_7[21];
                    MOSI_8 <= MOSI_cmd_8[21];
                    MOSI_9 <= MOSI_cmd_9[21];
                    MOSI_10 <= MOSI_cmd_10[21];
                    MOSI_11 <= MOSI_cmd_11[21];
                    MOSI_12 <= MOSI_cmd_12[21];
                    MOSI_13 <= MOSI_cmd_13[21];
                    MOSI_14 <= MOSI_cmd_14[21];
                    MOSI_15 <= MOSI_cmd_15[21];
                    MOSI_16 <= MOSI_cmd_16[21];
                end
                ms_clk12_a: begin
                    MOSI_1 <= MOSI_cmd_1[20];
                    MOSI_2 <= MOSI_cmd_2[20];
                    MOSI_3 <= MOSI_cmd_3[20];
                    MOSI_4 <= MOSI_cmd_4[20];
                    MOSI_5 <= MOSI_cmd_5[20];
                    MOSI_6 <= MOSI_cmd_6[20];
                    MOSI_7 <= MOSI_cmd_7[20];
                    MOSI_8 <= MOSI_cmd_8[20];
                    MOSI_9 <= MOSI_cmd_9[20];
                    MOSI_10 <= MOSI_cmd_10[20];
                    MOSI_11 <= MOSI_cmd_11[20];
                    MOSI_12 <= MOSI_cmd_12[20];
                    MOSI_13 <= MOSI_cmd_13[20];
                    MOSI_14 <= MOSI_cmd_14[20];
                    MOSI_15 <= MOSI_cmd_15[20];
                    MOSI_16 <= MOSI_cmd_16[20];
                end
                ms_clk13_a: begin
                    MOSI_1 <= MOSI_cmd_1[19];
                    MOSI_2 <= MOSI_cmd_2[19];
                    MOSI_3 <= MOSI_cmd_3[19];
                    MOSI_4 <= MOSI_cmd_4[19];
                    MOSI_5 <= MOSI_cmd_5[19];
                    MOSI_6 <= MOSI_cmd_6[19];
                    MOSI_7 <= MOSI_cmd_7[19];
                    MOSI_8 <= MOSI_cmd_8[19];
                    MOSI_9 <= MOSI_cmd_9[19];
                    MOSI_10 <= MOSI_cmd_10[19];
                    MOSI_11 <= MOSI_cmd_11[19];
                    MOSI_12 <= MOSI_cmd_12[19];
                    MOSI_13 <= MOSI_cmd_13[19];
                    MOSI_14 <= MOSI_cmd_14[19];
                    MOSI_15 <= MOSI_cmd_15[19];
                    MOSI_16 <= MOSI_cmd_16[19];
                end
                ms_clk14_a: begin
                    MOSI_1 <= MOSI_cmd_1[18];
                    MOSI_2 <= MOSI_cmd_2[18];
                    MOSI_3 <= MOSI_cmd_3[18];
                    MOSI_4 <= MOSI_cmd_4[18];
                    MOSI_5 <= MOSI_cmd_5[18];
                    MOSI_6 <= MOSI_cmd_6[18];
                    MOSI_7 <= MOSI_cmd_7[18];
                    MOSI_8 <= MOSI_cmd_8[18];
                    MOSI_9 <= MOSI_cmd_9[18];
                    MOSI_10 <= MOSI_cmd_10[18];
                    MOSI_11 <= MOSI_cmd_11[18];
                    MOSI_12 <= MOSI_cmd_12[18];
                    MOSI_13 <= MOSI_cmd_13[18];
                    MOSI_14 <= MOSI_cmd_14[18];
                    MOSI_15 <= MOSI_cmd_15[18];
                    MOSI_16 <= MOSI_cmd_16[18];
                end
                ms_clk15_a: begin
                    MOSI_1 <= MOSI_cmd_1[17];
                    MOSI_2 <= MOSI_cmd_2[17];
                    MOSI_3 <= MOSI_cmd_3[17];
                    MOSI_4 <= MOSI_cmd_4[17];
                    MOSI_5 <= MOSI_cmd_5[17];
                    MOSI_6 <= MOSI_cmd_6[17];
                    MOSI_7 <= MOSI_cmd_7[17];
                    MOSI_8 <= MOSI_cmd_8[17];
                    MOSI_9 <= MOSI_cmd_9[17];
                    MOSI_10 <= MOSI_cmd_10[17];
                    MOSI_11 <= MOSI_cmd_11[17];
                    MOSI_12 <= MOSI_cmd_12[17];
                    MOSI_13 <= MOSI_cmd_13[17];
                    MOSI_14 <= MOSI_cmd_14[17];
                    MOSI_15 <= MOSI_cmd_15[17];
                    MOSI_16 <= MOSI_cmd_16[17];
                end
                ms_clk16_a: begin
                    MOSI_1 <= MOSI_cmd_1[16];
                    MOSI_2 <= MOSI_cmd_2[16];
                    MOSI_3 <= MOSI_cmd_3[16];
                    MOSI_4 <= MOSI_cmd_4[16];
                    MOSI_5 <= MOSI_cmd_5[16];
                    MOSI_6 <= MOSI_cmd_6[16];
                    MOSI_7 <= MOSI_cmd_7[16];
                    MOSI_8 <= MOSI_cmd_8[16];
                    MOSI_9 <= MOSI_cmd_9[16];
                    MOSI_10 <= MOSI_cmd_10[16];
                    MOSI_11 <= MOSI_cmd_11[16];
                    MOSI_12 <= MOSI_cmd_12[16];
                    MOSI_13 <= MOSI_cmd_13[16];
                    MOSI_14 <= MOSI_cmd_14[16];
                    MOSI_15 <= MOSI_cmd_15[16];
                    MOSI_16 <= MOSI_cmd_16[16];
                end
                ms_clk17_a: begin
                    MOSI_1 <= MOSI_cmd_1[15];
                    MOSI_2 <= MOSI_cmd_2[15];
                    MOSI_3 <= MOSI_cmd_3[15];
                    MOSI_4 <= MOSI_cmd_4[15];
                    MOSI_5 <= MOSI_cmd_5[15];
                    MOSI_6 <= MOSI_cmd_6[15];
                    MOSI_7 <= MOSI_cmd_7[15];
                    MOSI_8 <= MOSI_cmd_8[15];
                    MOSI_9 <= MOSI_cmd_9[15];
                    MOSI_10 <= MOSI_cmd_10[15];
                    MOSI_11 <= MOSI_cmd_11[15];
                    MOSI_12 <= MOSI_cmd_12[15];
                    MOSI_13 <= MOSI_cmd_13[15];
                    MOSI_14 <= MOSI_cmd_14[15];
                    MOSI_15 <= MOSI_cmd_15[15];
                    MOSI_16 <= MOSI_cmd_16[15];
                end
                ms_clk18_a: begin
                    MOSI_1 <= MOSI_cmd_1[14];
                    MOSI_2 <= MOSI_cmd_2[14];
                    MOSI_3 <= MOSI_cmd_3[14];
                    MOSI_4 <= MOSI_cmd_4[14];
                    MOSI_5 <= MOSI_cmd_5[14];
                    MOSI_6 <= MOSI_cmd_6[14];
                    MOSI_7 <= MOSI_cmd_7[14];
                    MOSI_8 <= MOSI_cmd_8[14];
                    MOSI_9 <= MOSI_cmd_9[14];
                    MOSI_10 <= MOSI_cmd_10[14];
                    MOSI_11 <= MOSI_cmd_11[14];
                    MOSI_12 <= MOSI_cmd_12[14];
                    MOSI_13 <= MOSI_cmd_13[14];
                    MOSI_14 <= MOSI_cmd_14[14];
                    MOSI_15 <= MOSI_cmd_15[14];
                    MOSI_16 <= MOSI_cmd_16[14];
                end
                ms_clk19_a: begin
                    MOSI_1 <= MOSI_cmd_1[13];
                    MOSI_2 <= MOSI_cmd_2[13];
                    MOSI_3 <= MOSI_cmd_3[13];
                    MOSI_4 <= MOSI_cmd_4[13];
                    MOSI_5 <= MOSI_cmd_5[13];
                    MOSI_6 <= MOSI_cmd_6[13];
                    MOSI_7 <= MOSI_cmd_7[13];
                    MOSI_8 <= MOSI_cmd_8[13];
                    MOSI_9 <= MOSI_cmd_9[13];
                    MOSI_10 <= MOSI_cmd_10[13];
                    MOSI_11 <= MOSI_cmd_11[13];
                    MOSI_12 <= MOSI_cmd_12[13];
                    MOSI_13 <= MOSI_cmd_13[13];
                    MOSI_14 <= MOSI_cmd_14[13];
                    MOSI_15 <= MOSI_cmd_15[13];
                    MOSI_16 <= MOSI_cmd_16[13];
                end
                ms_clk20_a: begin
                    MOSI_1 <= MOSI_cmd_1[12];
                    MOSI_2 <= MOSI_cmd_2[12];
                    MOSI_3 <= MOSI_cmd_3[12];
                    MOSI_4 <= MOSI_cmd_4[12];
                    MOSI_5 <= MOSI_cmd_5[12];
                    MOSI_6 <= MOSI_cmd_6[12];
                    MOSI_7 <= MOSI_cmd_7[12];
                    MOSI_8 <= MOSI_cmd_8[12];
                    MOSI_9 <= MOSI_cmd_9[12];
                    MOSI_10 <= MOSI_cmd_10[12];
                    MOSI_11 <= MOSI_cmd_11[12];
                    MOSI_12 <= MOSI_cmd_12[12];
                    MOSI_13 <= MOSI_cmd_13[12];
                    MOSI_14 <= MOSI_cmd_14[12];
                    MOSI_15 <= MOSI_cmd_15[12];
                    MOSI_16 <= MOSI_cmd_16[12];
                end
                ms_clk21_a: begin
                    MOSI_1 <= MOSI_cmd_1[11];
                    MOSI_2 <= MOSI_cmd_2[11];
                    MOSI_3 <= MOSI_cmd_3[11];
                    MOSI_4 <= MOSI_cmd_4[11];
                    MOSI_5 <= MOSI_cmd_5[11];
                    MOSI_6 <= MOSI_cmd_6[11];
                    MOSI_7 <= MOSI_cmd_7[11];
                    MOSI_8 <= MOSI_cmd_8[11];
                    MOSI_9 <= MOSI_cmd_9[11];
                    MOSI_10 <= MOSI_cmd_10[11];
                    MOSI_11 <= MOSI_cmd_11[11];
                    MOSI_12 <= MOSI_cmd_12[11];
                    MOSI_13 <= MOSI_cmd_13[11];
                    MOSI_14 <= MOSI_cmd_14[11];
                    MOSI_15 <= MOSI_cmd_15[11];
                    MOSI_16 <= MOSI_cmd_16[11];
                end
                ms_clk22_a: begin
                    MOSI_1 <= MOSI_cmd_1[10];
                    MOSI_2 <= MOSI_cmd_2[10];
                    MOSI_3 <= MOSI_cmd_3[10];
                    MOSI_4 <= MOSI_cmd_4[10];
                    MOSI_5 <= MOSI_cmd_5[10];
                    MOSI_6 <= MOSI_cmd_6[10];
                    MOSI_7 <= MOSI_cmd_7[10];
                    MOSI_8 <= MOSI_cmd_8[10];
                    MOSI_9 <= MOSI_cmd_9[10];
                    MOSI_10 <= MOSI_cmd_10[10];
                    MOSI_11 <= MOSI_cmd_11[10];
                    MOSI_12 <= MOSI_cmd_12[10];
                    MOSI_13 <= MOSI_cmd_13[10];
                    MOSI_14 <= MOSI_cmd_14[10];
                    MOSI_15 <= MOSI_cmd_15[10];
                    MOSI_16 <= MOSI_cmd_16[10];
                end
                ms_clk23_a: begin
                    MOSI_1 <= MOSI_cmd_1[9];
                    MOSI_2 <= MOSI_cmd_2[9];
                    MOSI_3 <= MOSI_cmd_3[9];
                    MOSI_4 <= MOSI_cmd_4[9];
                    MOSI_5 <= MOSI_cmd_5[9];
                    MOSI_6 <= MOSI_cmd_6[9];
                    MOSI_7 <= MOSI_cmd_7[9];
                    MOSI_8 <= MOSI_cmd_8[9];
                    MOSI_9 <= MOSI_cmd_9[9];
                    MOSI_10 <= MOSI_cmd_10[9];
                    MOSI_11 <= MOSI_cmd_11[9];
                    MOSI_12 <= MOSI_cmd_12[9];
                    MOSI_13 <= MOSI_cmd_13[9];
                    MOSI_14 <= MOSI_cmd_14[9];
                    MOSI_15 <= MOSI_cmd_15[9];
                    MOSI_16 <= MOSI_cmd_16[9];
                end
                ms_clk24_a: begin
                    MOSI_1 <= MOSI_cmd_1[8];
                    MOSI_2 <= MOSI_cmd_2[8];
                    MOSI_3 <= MOSI_cmd_3[8];
                    MOSI_4 <= MOSI_cmd_4[8];
                    MOSI_5 <= MOSI_cmd_5[8];
                    MOSI_6 <= MOSI_cmd_6[8];
                    MOSI_7 <= MOSI_cmd_7[8];
                    MOSI_8 <= MOSI_cmd_8[8];
                    MOSI_9 <= MOSI_cmd_9[8];
                    MOSI_10 <= MOSI_cmd_10[8];
                    MOSI_11 <= MOSI_cmd_11[8];
                    MOSI_12 <= MOSI_cmd_12[8];
                    MOSI_13 <= MOSI_cmd_13[8];
                    MOSI_14 <= MOSI_cmd_14[8];
                    MOSI_15 <= MOSI_cmd_15[8];
                    MOSI_16 <= MOSI_cmd_16[8];
                end
                ms_clk25_a: begin
                    MOSI_1 <= MOSI_cmd_1[7];
                    MOSI_2 <= MOSI_cmd_2[7];
                    MOSI_3 <= MOSI_cmd_3[7];
                    MOSI_4 <= MOSI_cmd_4[7];
                    MOSI_5 <= MOSI_cmd_5[7];
                    MOSI_6 <= MOSI_cmd_6[7];
                    MOSI_7 <= MOSI_cmd_7[7];
                    MOSI_8 <= MOSI_cmd_8[7];
                    MOSI_9 <= MOSI_cmd_9[7];
                    MOSI_10 <= MOSI_cmd_10[7];
                    MOSI_11 <= MOSI_cmd_11[7];
                    MOSI_12 <= MOSI_cmd_12[7];
                    MOSI_13 <= MOSI_cmd_13[7];
                    MOSI_14 <= MOSI_cmd_14[7];
                    MOSI_15 <= MOSI_cmd_15[7];
                    MOSI_16 <= MOSI_cmd_16[7];
                end
                ms_clk26_a: begin
                    MOSI_1 <= MOSI_cmd_1[6];
                    MOSI_2 <= MOSI_cmd_2[6];
                    MOSI_3 <= MOSI_cmd_3[6];
                    MOSI_4 <= MOSI_cmd_4[6];
                    MOSI_5 <= MOSI_cmd_5[6];
                    MOSI_6 <= MOSI_cmd_6[6];
                    MOSI_7 <= MOSI_cmd_7[6];
                    MOSI_8 <= MOSI_cmd_8[6];
                    MOSI_9 <= MOSI_cmd_9[6];
                    MOSI_10 <= MOSI_cmd_10[6];
                    MOSI_11 <= MOSI_cmd_11[6];
                    MOSI_12 <= MOSI_cmd_12[6];
                    MOSI_13 <= MOSI_cmd_13[6];
                    MOSI_14 <= MOSI_cmd_14[6];
                    MOSI_15 <= MOSI_cmd_15[6];
                    MOSI_16 <= MOSI_cmd_16[6];
                end
                ms_clk27_a: begin
                    MOSI_1 <= MOSI_cmd_1[5];
                    MOSI_2 <= MOSI_cmd_2[5];
                    MOSI_3 <= MOSI_cmd_3[5];
                    MOSI_4 <= MOSI_cmd_4[5];
                    MOSI_5 <= MOSI_cmd_5[5];
                    MOSI_6 <= MOSI_cmd_6[5];
                    MOSI_7 <= MOSI_cmd_7[5];
                    MOSI_8 <= MOSI_cmd_8[5];
                    MOSI_9 <= MOSI_cmd_9[5];
                    MOSI_10 <= MOSI_cmd_10[5];
                    MOSI_11 <= MOSI_cmd_11[5];
                    MOSI_12 <= MOSI_cmd_12[5];
                    MOSI_13 <= MOSI_cmd_13[5];
                    MOSI_14 <= MOSI_cmd_14[5];
                    MOSI_15 <= MOSI_cmd_15[5];
                    MOSI_16 <= MOSI_cmd_16[5];
                end
                ms_clk28_a: begin
                    MOSI_1 <= MOSI_cmd_1[4];
                    MOSI_2 <= MOSI_cmd_2[4];
                    MOSI_3 <= MOSI_cmd_3[4];
                    MOSI_4 <= MOSI_cmd_4[4];
                    MOSI_5 <= MOSI_cmd_5[4];
                    MOSI_6 <= MOSI_cmd_6[4];
                    MOSI_7 <= MOSI_cmd_7[4];
                    MOSI_8 <= MOSI_cmd_8[4];
                    MOSI_9 <= MOSI_cmd_9[4];
                    MOSI_10 <= MOSI_cmd_10[4];
                    MOSI_11 <= MOSI_cmd_11[4];
                    MOSI_12 <= MOSI_cmd_12[4];
                    MOSI_13 <= MOSI_cmd_13[4];
                    MOSI_14 <= MOSI_cmd_14[4];
                    MOSI_15 <= MOSI_cmd_15[4];
                    MOSI_16 <= MOSI_cmd_16[4];
                end
                ms_clk29_a: begin
                    MOSI_1 <= MOSI_cmd_1[3];
                    MOSI_2 <= MOSI_cmd_2[3];
                    MOSI_3 <= MOSI_cmd_3[3];
                    MOSI_4 <= MOSI_cmd_4[3];
                    MOSI_5 <= MOSI_cmd_5[3];
                    MOSI_6 <= MOSI_cmd_6[3];
                    MOSI_7 <= MOSI_cmd_7[3];
                    MOSI_8 <= MOSI_cmd_8[3];
                    MOSI_9 <= MOSI_cmd_9[3];
                    MOSI_10 <= MOSI_cmd_10[3];
                    MOSI_11 <= MOSI_cmd_11[3];
                    MOSI_12 <= MOSI_cmd_12[3];
                    MOSI_13 <= MOSI_cmd_13[3];
                    MOSI_14 <= MOSI_cmd_14[3];
                    MOSI_15 <= MOSI_cmd_15[3];
                    MOSI_16 <= MOSI_cmd_16[3];
                end
                ms_clk30_a: begin
                    MOSI_1 <= MOSI_cmd_1[2];
                    MOSI_2 <= MOSI_cmd_2[2];
                    MOSI_3 <= MOSI_cmd_3[2];
                    MOSI_4 <= MOSI_cmd_4[2];
                    MOSI_5 <= MOSI_cmd_5[2];
                    MOSI_6 <= MOSI_cmd_6[2];
                    MOSI_7 <= MOSI_cmd_7[2];
                    MOSI_8 <= MOSI_cmd_8[2];
                    MOSI_9 <= MOSI_cmd_9[2];
                    MOSI_10 <= MOSI_cmd_10[2];
                    MOSI_11 <= MOSI_cmd_11[2];
                    MOSI_12 <= MOSI_cmd_12[2];
                    MOSI_13 <= MOSI_cmd_13[2];
                    MOSI_14 <= MOSI_cmd_14[2];
                    MOSI_15 <= MOSI_cmd_15[2];
                    MOSI_16 <= MOSI_cmd_16[2];
                end
                ms_clk31_a: begin
                    MOSI_1 <= MOSI_cmd_1[1];
                    MOSI_2 <= MOSI_cmd_2[1];
                    MOSI_3 <= MOSI_cmd_3[1];
                    MOSI_4 <= MOSI_cmd_4[1];
                    MOSI_5 <= MOSI_cmd_5[1];
                    MOSI_6 <= MOSI_cmd_6[1];
                    MOSI_7 <= MOSI_cmd_7[1];
                    MOSI_8 <= MOSI_cmd_8[1];
                    MOSI_9 <= MOSI_cmd_9[1];
                    MOSI_10 <= MOSI_cmd_10[1];
                    MOSI_11 <= MOSI_cmd_11[1];
                    MOSI_12 <= MOSI_cmd_12[1];
                    MOSI_13 <= MOSI_cmd_13[1];
                    MOSI_14 <= MOSI_cmd_14[1];
                    MOSI_15 <= MOSI_cmd_15[1];
                    MOSI_16 <= MOSI_cmd_16[1];
                end
                ms_clk32_a: begin
                    MOSI_1 <= MOSI_cmd_1[0];
                    MOSI_2 <= MOSI_cmd_2[0];
                    MOSI_3 <= MOSI_cmd_3[0];
                    MOSI_4 <= MOSI_cmd_4[0];
                    MOSI_5 <= MOSI_cmd_5[0];
                    MOSI_6 <= MOSI_cmd_6[0];
                    MOSI_7 <= MOSI_cmd_7[0];
                    MOSI_8 <= MOSI_cmd_8[0];
                    MOSI_9 <= MOSI_cmd_9[0];
                    MOSI_10 <= MOSI_cmd_10[0];
                    MOSI_11 <= MOSI_cmd_11[0];
                    MOSI_12 <= MOSI_cmd_12[0];
                    MOSI_13 <= MOSI_cmd_13[0];
                    MOSI_14 <= MOSI_cmd_14[0];
                    MOSI_15 <= MOSI_cmd_15[0];
                    MOSI_16 <= MOSI_cmd_16[0];
                end
                default: begin
                    MOSI_1 <= MOSI_1;
                    MOSI_2 <= MOSI_2;
                    MOSI_3 <= MOSI_3;
                    MOSI_4 <= MOSI_4;
                    MOSI_5 <= MOSI_5;
                    MOSI_6 <= MOSI_6;
                    MOSI_7 <= MOSI_7;
                    MOSI_8 <= MOSI_8;
                    MOSI_9 <= MOSI_9;
                    MOSI_10 <= MOSI_10;
                    MOSI_11 <= MOSI_11;
                    MOSI_12 <= MOSI_12;
                    MOSI_13 <= MOSI_13;
                    MOSI_14 <= MOSI_14;
                    MOSI_15 <= MOSI_15;
                    MOSI_16 <= MOSI_16;

                    MOSI_cmd_1 <= MOSI_cmd_1;
                    MOSI_cmd_2 <= MOSI_cmd_2;
                    MOSI_cmd_3 <= MOSI_cmd_3;
                    MOSI_cmd_4 <= MOSI_cmd_4;
                    MOSI_cmd_5 <= MOSI_cmd_5;
                    MOSI_cmd_6 <= MOSI_cmd_6;
                    MOSI_cmd_7 <= MOSI_cmd_7;
                    MOSI_cmd_8 <= MOSI_cmd_8;
                    MOSI_cmd_9 <= MOSI_cmd_9;
                    MOSI_cmd_10 <= MOSI_cmd_10;
                    MOSI_cmd_11 <= MOSI_cmd_11;
                    MOSI_cmd_12 <= MOSI_cmd_12;
                    MOSI_cmd_13 <= MOSI_cmd_13;
                    MOSI_cmd_14 <= MOSI_cmd_14;
                    MOSI_cmd_15 <= MOSI_cmd_15;
                    MOSI_cmd_16 <= MOSI_cmd_16;
                end
            endcase
        end
    end

    /* MISO */
    always @(posedge clk) begin
        if (!resetn) begin
            rhs_data_out <= 16'b0;
            rhd_valid_out <= 1'b0;

            in4x_1 <= 0;
            in4x_2 <= 0;
            in4x_3 <= 0;
            in4x_4 <= 0;
            in4x_5 <= 0;
            in4x_6 <= 0;
            in4x_7 <= 0;
            in4x_8 <= 0;
            in4x_9 <= 0;
            in4x_10 <= 0;
            in4x_11 <= 0;
            in4x_12 <= 0;
            in4x_13 <= 0;
            in4x_14 <= 0;
            in4x_15 <= 0;
            in4x_16 <= 0;

            result_1 <= 0;
            result_2 <= 0;
            result_3 <= 0;
            result_4 <= 0;
            result_5 <= 0;
            result_6 <= 0;
            result_7 <= 0;
            result_8 <= 0;
            result_9 <= 0;
            result_10 <= 0;
            result_11 <= 0;
            result_12 <= 0;
            result_13 <= 0;
            result_14 <= 0;
            result_15 <= 0;
            result_16 <= 0;


        end
        else begin
            rhs_data_out <= 16'b0;
            rhd_valid_out <= 1'b0;
            if (main_state >= 2 && main_state <= 135 ) begin
                in4x_1[main_state-2] <= MISO_1; 
                in4x_2[main_state-2] <= MISO_2;
                in4x_3[main_state-2] <= MISO_3; 
                in4x_4[main_state-2] <= MISO_4;
                in4x_5[main_state-2] <= MISO_5; 
                in4x_6[main_state-2] <= MISO_6;
                in4x_7[main_state-2] <= MISO_7; 
                in4x_8[main_state-2] <= MISO_8;
                in4x_9[main_state-2] <= MISO_9; 
                in4x_10[main_state-2] <= MISO_10;
                in4x_11[main_state-2] <= MISO_11; 
                in4x_12[main_state-2] <= MISO_12;
                in4x_13[main_state-2] <= MISO_13; 
                in4x_14[main_state-2] <= MISO_14;
                in4x_15[main_state-2] <= MISO_15; 
                in4x_16[main_state-2] <= MISO_16;
            end
            case (main_state)
                ms_wait: begin
                    in4x_1 <= 0;
                    in4x_2 <= 0;
                    in4x_3 <= 0;
                    in4x_4 <= 0;
                    in4x_5 <= 0;
                    in4x_6 <= 0;
                    in4x_7 <= 0;
                    in4x_8 <= 0;
                    in4x_9 <= 0;
                    in4x_10 <= 0;
                    in4x_11 <= 0;
                    in4x_12 <= 0;
                    in4x_13 <= 0;
                    in4x_14 <= 0;
                    in4x_15 <= 0;
                    in4x_16 <= 0;

                    result_1 <= 0;
                    result_2 <= 0;
                    result_3 <= 0;
                    result_4 <= 0;
                    result_5 <= 0;
                    result_6 <= 0;
                    result_7 <= 0;
                    result_8 <= 0;
                    result_9 <= 0;
                    result_10 <= 0;
                    result_11 <= 0;
                    result_12 <= 0;
                    result_13 <= 0;
                    result_14 <= 0;
                    result_15 <= 0;
                    result_16 <= 0;
                    rhs_data_out <= 16'b0;
                    rhd_valid_out <= 1'b0;
                end



                ms_clk1_b: begin
                    if (channel == 3) begin
                        rhs_data_out <= header_magic_number[15:0];
                        rhd_valid_out <= 1'b1;
                    end
                end
    
                ms_clk1_c: begin
                    if (channel == 3) begin
                        rhs_data_out <= header_magic_number[31:16];
                        rhd_valid_out <= 1'b1;
                    end
                end
                
                ms_clk1_d: begin
                    if (channel == 3) begin
                        rhs_data_out <= header_magic_number[47:32];
                        rhd_valid_out <= 1'b1;
                    end
                end
                
                ms_clk2_a: begin
                    if (channel == 3) begin
                        rhs_data_out <= header_magic_number[63:48];
                        //rhs_data_out <= state_pulse; //the most sig 2 bytes of the header is going to be the state pulse, this is going to be the stimulation marker
                        rhd_valid_out <= 1'b1;
                    end
                end

                



                ms_clk3_a: begin
                    //rhs_data_out <= data_stream_1[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk3_b: begin
                    rhs_data_out <= data_stream_1[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk3_c: begin
                    //rhs_data_out <= data_stream_2[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk3_d: begin
                    rhs_data_out <= data_stream_2[31:16];
                    rhd_valid_out <= 1'b1;
                end


                ms_clk4_a: begin
                    //rhs_data_out <= data_stream_3[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk4_b: begin
                    rhs_data_out <= data_stream_3[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk4_c: begin
                    //rhs_data_out <= data_stream_4[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk4_d: begin
                    rhs_data_out <= data_stream_4[31:16];
                    rhd_valid_out <= 1'b1;
                end


                ms_clk5_a: begin
                    //rhs_data_out <= data_stream_5[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk5_b: begin
                    rhs_data_out <= data_stream_5[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk5_c: begin
                    //rhs_data_out <= data_stream_6[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk5_d: begin
                    rhs_data_out <= data_stream_6[31:16];
                    rhd_valid_out <= 1'b1;
                end


                ms_clk6_a: begin
                    //rhs_data_out <= data_stream_7[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk6_b: begin
                    rhs_data_out <= data_stream_7[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk6_c: begin
                    //rhs_data_out <= data_stream_8[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk6_d: begin
                    rhs_data_out <= data_stream_8[31:16];
                    rhd_valid_out <= 1'b1;
                end



                ms_clk7_a: begin
                    //rhs_data_out <= data_stream_9[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk7_b: begin
                    rhs_data_out <= data_stream_9[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk7_c: begin
                    //rhs_data_out <= data_stream_10[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk7_d: begin
                    rhs_data_out <= data_stream_10[31:16];
                    rhd_valid_out <= 1'b1;
                end


                ms_clk8_a: begin
                    //rhs_data_out <= data_stream_11[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk8_b: begin
                    rhs_data_out <= data_stream_11[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk8_c: begin
                    //rhs_data_out <= data_stream_12[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk8_d: begin
                    rhs_data_out <= data_stream_12[31:16];
                    rhd_valid_out <= 1'b1;
                end


                ms_clk9_a: begin
                    //rhs_data_out <= data_stream_13[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk9_b: begin
                    rhs_data_out <= data_stream_13[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk9_c: begin
                    //rhs_data_out <= data_stream_14[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk9_d: begin
                    rhs_data_out <= data_stream_14[31:16];
                    rhd_valid_out <= 1'b1;
                end


                ms_clk10_a: begin
                    //rhs_data_out <= data_stream_15[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk10_b: begin
                    rhs_data_out <= data_stream_15[31:16];
                    rhd_valid_out <= 1'b1;
                end

                ms_clk10_c: begin
                    //rhs_data_out <= data_stream_16[15:0];
                    //rhd_valid_out <= 1'b1;
                end

                ms_clk10_d: begin
                    rhs_data_out <= data_stream_16[31:16];
                    rhd_valid_out <= 1'b1;
                end

                




				ms_cs_g: begin
					result_1 <= in_1; 
                    result_2 <= in_2;
                    result_3 <= in_3; 
                    result_4 <= in_4;
                    result_5 <= in_5; 
                    result_6 <= in_6;
                    result_7 <= in_7; 
                    result_8 <= in_8;
                    result_9 <= in_9; 
                    result_10 <= in_10;
                    result_11 <= in_11; 
                    result_12 <= in_12;
                    result_13 <= in_13; 
                    result_14 <= in_14;
                    result_15 <= in_15; 
                    result_16 <= in_16;
				end

            endcase
        end
    end

    // stim_counter & time_counter & state_pulse
    always @(posedge clk) begin

        if(stim_en_fallingEdge && !stim_en)
            flag_stim_done <= 1'b0;

        stim_en_fallingEdge <= stim_en;


        if (!resetn) begin
            state_pulse <= 3'b00;
            stim_counter <= 10'b0;
            time_counter <= 11'b0;
        end 
        else begin
            case (main_state) 
                ms_wait: begin
                    state_pulse <= S_OFF;
                end
                ms_cs_i: begin
                    if (flag_lastchannel && !fifoDoneLatchResetn) begin
                        time_counter <= time_counter + 1;
                        case (state_pulse) 
                            S_OFF: begin
                                time_counter <= 0; 
                                if (stim_en && SPI_ONOFF && !flag_stim_done)
                                        state_pulse  <= S_PULSE_ON_N;
                                end
                            S_PULSE_ON_N: begin
                                if (time_counter == stim_pulse_width) begin
                                    time_counter <= 0;
                                    state_pulse  <= S_PULSE_ON_P;
                                end
                            end
                            S_PULSE_ON_P: begin
                                if (time_counter == stim_pulse_width) begin
                                    time_counter <= 0;
                                    if (!stim_inf_pulse_mode && stim_counter == stim_num_pulse - 1) begin
                                        state_pulse  <= S_Q_RECOVERY;
                                        stim_counter <= 0;
                                    end
                                    else if (stim_inf_pulse_mode && !stim_en) begin
                                        state_pulse  <= S_Q_RECOVERY;
                                        stim_counter <= 0;
                                    end
                                    else begin
                                        state_pulse  <= S_INTRAPULSE;
                                        stim_counter <= stim_counter + 1;
                                    end
                                end
                            end
                            S_INTRAPULSE: begin
                                if (time_counter == stim_intrapulse_delay) begin
                                    time_counter <= 0;  
                                    state_pulse  <= S_PULSE_ON_N;
                                end
                            end
                            S_Q_RECOVERY: begin
                                if (time_counter > charge_recov_off_time) begin
                                    time_counter <= 0;   
                                    state_pulse  <= S_OFF;
                                end
                            end
                        endcase
                    end
                end
            endcase
        end
    end

    // stim registers
    always @(posedge clk) begin

        if (!resetn) begin
            flag_stim_done <= 1'b0;
            stim_on      <= 16'b0;
            stim_pol     <= 16'b0;
            charge_recov <= 16'b0;
            charge_recov_mode <= 1'b0; 
        end 
        else begin
            case (main_state) 
                ms_wait: begin
                    stim_on      <= 16'b0;
                    stim_pol     <= 16'b0;
                    charge_recov <= 16'b0;
                    if (!SPI_ONOFF) begin
                        flag_stim_done <= 1'b0; 
                    end 
                end
                ms_cs_a: begin
                    case (state_pulse) 
                        S_PULSE_ON_N: begin

                            if (stim_mono_vs_bi) begin //1 means bipolar
                                stim_on = channel_select_p | channel_select_n; //build mask based on the hot one encodings of selected channels
                            end
                            else begin //0 means monopolar
                                stim_on = channel_select_p; //channel mask is just positive channel selection
                            end

                            if (stim_biphasic_polarity) begin //if true means rising edge first
                                stim_pol = channel_select_p; //stim pol is register 44, 1 means positive current, 0 means negative current
                            end
                            else begin
                                stim_pol = ~channel_select_p;
                            end

                            charge_recov<= 16'b0;
                        end
                        S_PULSE_ON_P: begin

                            if (stim_mono_vs_bi) begin //1 means bipolar
                                stim_on = channel_select_p | channel_select_n; //build mask based on the hot one encodings of selected channels
                            end
                            else begin //0 means monopolar
                                stim_on = channel_select_p; //channel mask is just positive channel selection
                            end

                            if (stim_biphasic_polarity) begin //if true means rising edge first
                                stim_pol = ~channel_select_p; //stim pol is register 44, 1 means positive current, 0 means negative current
                            end
                            else begin
                                stim_pol = channel_select_p;
                            end

                            charge_recov<= 16'b0;
                        end
                        S_INTRAPULSE: begin
                            stim_on     <= 16'b0;
                            stim_pol    <= 16'b0;
                            charge_recov<= 16'b0;
                        end
                        S_Q_RECOVERY: begin
                            stim_on     <= 16'b0;
                            stim_pol    <= 16'b0;

                            charge_recov<= channel_select_p | channel_select_n;

                            if (time_counter == charge_recov_on_time)
                                charge_recov_mode <= 1;
                            if (time_counter == charge_recov_off_time) begin
                                charge_recov_mode <= 0;
                                if (!stim_inf_pulse_mode)
                                    flag_stim_done <= 1'b1; 
                            end
                        end
                    endcase
                end
            endcase
        end
    end


    // Cable day finder state machine


    reg [47:0] INTAN_reg = 0;
    reg [47:0] INTAN_expected = 48'b010010010100111001010100010000010100111000000000;

    always @(posedge clk) begin
        if (!resetn) begin
            flag_cable_delay_found <= 0;
            flag_cable_delay_low_found <= 0;
            MOSI_cmd_selected_cable_delay_finder <= 0;
            state_cable_delay_finder <= IN_LOAD;
            phase_select <= 0;
            INTAN_reg <= 0;
        end 
        else begin
            case (main_state) 
                ms_wait: begin
                    MOSI_cmd_selected_cable_delay_finder <= 0;
                end
                ms_cs_h: begin
                    case (state_cable_delay_finder) 
                        IN_LOAD: begin
                            MOSI_cmd_selected_cable_delay_finder <= { 2'b11, 2'b00, 4'b0000, 8'd251, 16'b0 };
                            state_cable_delay_finder <= IN_SEND_TA_LOAD;
                        end
                        IN_SEND_TA_LOAD: begin
                            MOSI_cmd_selected_cable_delay_finder <= { 2'b11, 2'b00, 4'b0000, 8'd252, 16'b0 };
                            state_cable_delay_finder <= TA_SEND_IN_LOAD;
                        end
                        TA_SEND_IN_LOAD: begin
                            MOSI_cmd_selected_cable_delay_finder <= { 2'b11, 2'b00, 4'b0000, 8'd253, 16'b0 };
                            state_cable_delay_finder <= IN_GET_N0_SEND;
                        end
                        IN_GET_N0_SEND: begin
                            INTAN_reg[47:32] <= result_2[15:0];
                            state_cable_delay_finder <= TA_GET;
                        end
                        TA_GET: begin
                            INTAN_reg[31:16] <= result_2[15:0];
                            state_cable_delay_finder <= N0_GET;
                        end
                        N0_GET: begin
                            INTAN_reg[15:0] = result_2[15:0];
                            if (INTAN_reg == INTAN_expected && !flag_cable_delay_low_found) begin
                                state_cable_delay_finder = IN_LOAD;
                                flag_cable_delay_low_found = 1;
                                phase_select_low = phase_select;
                                phase_select = phase_select + 1;
                            end
                            else if (INTAN_reg != INTAN_expected && flag_cable_delay_low_found) begin
                                state_cable_delay_finder = DONE;
                                if (phase_select >= 2)
                                    phase_select = (phase_select_low + phase_select) / 2;
                            end
                            else begin
                                phase_select = phase_select + 1;
                                state_cable_delay_finder <= IN_LOAD;
                            end
                            MOSI_cmd_selected_cable_delay_finder <= 0;
                        end
                        DONE: begin
                            flag_cable_delay_found <= 1;
                            MOSI_cmd_selected_cable_delay_finder <= 0;
                        end
                    endcase
                end
            endcase
        end
    end




    /* ZCheck */
    always @(posedge clk) begin
        if (!resetn) begin
            reg_risingEdge_impCheck <= 0;
            ZCheck_cmd_1 <= 32'b0;
            ZCheck_cmd_2 <= 32'b0;
            ZCheck_run <= 1'b0;
            ZCheck_loop <= 1'b0;
            ZCheck_off_flag <= 1'b0;
            ZCheck_command_count <= 0;
            ZCheck_sine_cycle <= 0;
            ZCheck_channel <= 0;
        end
        else begin
            reg_risingEdge_impCheck <= impedance_check; //rising edge check of impedance check signal c
            if (impedance_check & ~reg_risingEdge_impCheck) begin
                ZCheck_run <= 1'b1;
            end
            case (main_state)
                ms_wait: begin
                    reg_risingEdge_impCheck <= 0;
                    ZCheck_cmd_1 <= 32'b0;
                    ZCheck_cmd_2 <= 32'b0;
                    ZCheck_run <= 1'b0;
                    ZCheck_loop <= 1'b0;
                    ZCheck_off_flag <= 1'b0;
                    ZCheck_command_count <= 0;
                    ZCheck_sine_cycle <= 0;
                    ZCheck_channel <= 0;
                end
                ms_cs_a: begin
                    // Check whether going into Zcheck mode
                    if (ZCheck_run && (flag_lastBatch) && (channel==14) ) begin
                        ZCheck_run <= 1'b0; 
                        ZCheck_loop <= 1'b1;
                        ZCheck_command_count <= 0;
                        ZCheck_sine_cycle <= 0;
                    end
                end
                
                ms_cs_b: begin
                    // Generating Zcheck commands
                    if (channel == 15) begin
                        if (ZCheck_loop) begin
                            case (ZCheck_command_count)
                                0:          begin ZCheck_cmd_1 <= { 2'b10, 2'b00, 4'b0000, 8'h02, 2'b00, ZCheck_channel, 1'b0, 1'b1, 1'b0, impedance_check_scale, 2'b0, 1'b0 };   ZCheck_command_count <= ZCheck_command_count + 1; end //zcheck en, last bit, is 0
                                1:          begin ZCheck_cmd_1 <= { 2'b10, 2'b00, 4'b0000, 8'h02, 2'b00, ZCheck_channel, 1'b0, 1'b1, 1'b0, impedance_check_scale, 2'b0, 1'b1 };   ZCheck_command_count <= ZCheck_command_count + 1; end //zcheck en, last bit, is 1 to activate
                                2:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                3:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                4:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                5:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                6:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                7:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                8:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                9:          begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                10:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                11:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                12:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                13:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                14:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                15:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                16:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                17:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                18:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                19:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };                     ZCheck_command_count <= ZCheck_command_count + 1; end
                                20:         begin ZCheck_cmd_1 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };
                                                  if (ZCheck_sine_cycle == impedance_check_cycle) 
                                                        begin 
                                                            ZCheck_sine_cycle <= 0;  
                                                            ZCheck_command_count <= 0;  
                                                            if (ZCheck_channel == 15) begin
                                                                    ZCheck_channel <= 0; 
                                                                    ZCheck_loop <= 0; 
                                                                    ZCheck_off_flag <= 1'b1;
                                                                end
                                                            else    ZCheck_channel <= ZCheck_channel + 1;                       
                                                        end
                                                  else  begin 
                                                          ZCheck_sine_cycle <= ZCheck_sine_cycle + 1;   
                                                          ZCheck_command_count <= 1; 
                                                        end
                                            end
                            endcase
                        end
                        else begin
                            ZCheck_cmd_1 <= { 2'b10, 2'b00, 4'b0000, 8'h02, 2'b00, ZCheck_channel, 1'b0, 1'b1, 1'b0, impedance_check_scale, 2'b0, 1'b0 }; 
                        end
                    end
                    if (channel == 16) begin
                        if (ZCheck_loop) begin
                            case (ZCheck_command_count)
                                // Generate the 1 kHz sine wave - 20 kSps 
                                // MATLAB code: 
                                    // fs = 20e3;
                                    // fsine = 1e3;
                                    // n = 0 : 1/fs : 1/fsine - 1/fs;
                                    // y = dec2bin(round(sin(2*pi*fsine*n)*127 + 128));
                                1:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b10000000}};   end
                                2:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b10100111}};   end
                                3:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11001011}};   end
                                4:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11100111}};   end
                                5:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11111001}};   end
                                6:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11111111}};   end
                                7:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11111001}};   end
                                8:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11100111}};   end
                                9:          begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b11001011}};   end
                                10:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b10100111}};   end
                                11:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b10000000}};   end
                                12:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b01011001}};   end
                                13:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00110101}};   end
                                14:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00011001}};   end
                                15:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00000111}};   end
                                16:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00000001}};   end
                                17:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00000111}};   end
                                18:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00011001}};   end
                                19:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00110101}};   end
                                20:         begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b01011001}};   end          
                                default:    begin ZCheck_cmd_2 <= {2'b10, 2'b00, 4'b0000, 8'h03, {8'b00000000 ,8'b00000000}};   end 
                            endcase
                        end
                        else begin
                            ZCheck_cmd_2 <= { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0}; 
                        end
                    end
                end
            endcase
        end
    end
endmodule

// This simple module creates MOSI commands for the initialization
module command_initialization (
    input wire              init_en,
    input wire [6:0] 		channel_config, //increment channel config to run through init steps
    output reg [31:0] 	    MOSI_cmd
);
    wire [31:0] read_rom255_cmd, clean_cmd;
    assign read_rom255_cmd = { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 }; //read from intan ID register, should return decimal 32
    assign clean_cmd = {4'b0110, 4'b1010, 24'b0}; //calibration of ADC, no need to send follow up dummy commands

    always @(*) begin
        if (init_en) begin
            case (channel_config)

                //recording set up

                0:       MOSI_cmd <=  read_rom255_cmd;
                1:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd32, 16'h0000}; //clears magic number reg A
                2:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd33, 16'h0000}; //clears magic number reg B
                3:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd38, 16'hFFFF}; //set all 1s to provide DC amp power to all channels upon power up
                4:       MOSI_cmd <=  clean_cmd; //recalibrate ADC
                5:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd0,  16'h00C7}; //11 000101 page 16
                // HAL FOR 5:, CHANGED WRITE DATA FROM 16'h00C7 to 16'h00C5, so ADC sampling rate is >=440kS/s , ADC buffer bias is 3, MUX bias is 5
                6:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd1,  16'h051A}; //0 1 0 1 0 0 0 1 1 010 digout 1 and 2 are driven to aux outs, driven to high, enable twos complement
                7:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd2,  16'h0040}; // 0100 0000 6bit high sets Zcheck DAC power on, waveform generator will be constantly on, zcheck scale is set to 0.1pF series capacitor
                8:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd3,  16'h0080}; // 1000 0000 by default sets dac voltage to (128 / 255) * 1.225V = 0.61V, middle point


                9:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd4,  16'h0016};
                10:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd5,  16'h0017};
                11:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd6,  16'h00A8};
                12:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd7,  16'h000A}; // cut off frequencies




                13:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd8,  16'hFFFF}; //AC amp power, all set to 1 to power on

                14:      MOSI_cmd <=  { 2'b10, 2'b10, 4'b0000, 8'd10, 16'h0000};    // U-FLAG = 1 (this is triggered) close switch for fast settle
                15:      MOSI_cmd <=  { 2'b10, 2'b10, 4'b0000, 8'd12, 16'hFFFF};    // U-FLAG = 1 (this is triggered)


                //stim set up


                16:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd34, 16'h000F};    // sel1=15, sel2=0, sel3=0

                17:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd35, 16'h00FF};    // STIM PBIAS=STIM NBIAS=15

                18:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd36, 16'h0080};    // 128 (target voltage is zero)
                
                19:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd37, 16'h4F00};    // sel1=0, sel2=30, sel3=2 X100 1111 0000 0000
                

                20:      MOSI_cmd <=  { 2'b10, 2'b10, 4'b0000, 8'd42, 16'h0000};    // U-FLAG = 1 stim on triggered
                21:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd44, 16'h0000}; //stim polarity ,triggered
                // 10101000  0 is negative, 1 is positive
                22:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd46, 16'h0000}; //charge recovery switch to gnd, not current limited, 1010, so elec 2 and 4 by default are tied to gnd, triggered
                23:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd48, 16'hFFFF}; //charge recovery switch, uses DAC, all to 1 so all electrodes settle to 0V, from register 36, triggered
                default: MOSI_cmd <=  read_rom255_cmd;
                endcase
            end
            else begin
                MOSI_cmd <=  read_rom255_cmd;
            end
    end	
endmodule


// This simple module creates MOSI commands for the amplitude settings
module command_amplitudeSetup (
    input wire              mag_set_en,
    input wire [6:0] 		channel_config, //increment to run through all channel mags and lock them in
    input wire [15:0]       mag_pos,
    input wire [15:0]       mag_neg,
    output reg [31:0] 	    MOSI_cmd
);
wire [31:0] read_rom255_cmd;
assign read_rom255_cmd = { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };

    always @(*) begin
        if (mag_set_en) begin
            case (channel_config)
                0:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd64, mag_neg};
                1:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd65, mag_neg};
                2:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd66, mag_neg};
                3:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd67, mag_neg};
                4:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd68, mag_neg};
                5:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd69, mag_neg};
                6:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd70, mag_neg};
                7:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd71, mag_neg};
                8:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd72, mag_neg};
                9:       MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd73, mag_neg};
                10:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd74, mag_neg};
                11:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd75, mag_neg};
                12:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd76, mag_neg};
                13:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd77, mag_neg};
                14:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd78, mag_neg};   
                15:      MOSI_cmd <=  { 2'b10, 2'b10, 4'b0000, 8'd79, mag_neg};    // U-FLAG = 1
                16:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd96,  mag_pos};   
                17:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd97,  mag_pos};   
                18:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd98,  mag_pos};  
                19:      MOSI_cmd <=  { 2'b10, 2'b10, 4'b0000, 8'd99,  mag_pos};   //U-FLAG = 1
                20:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd100, mag_pos};    
                21:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd101, mag_pos};
                22:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd102, mag_pos};
                23:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd103, mag_pos};
                24:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd104, mag_pos};
                25:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd105, mag_pos};
                26:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd106, mag_pos};
                27:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd107, mag_pos};
                28:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd108, mag_pos};
                29:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd109, mag_pos};
                30:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd110, mag_pos};
                31:      MOSI_cmd <=  { 2'b10, 2'b10, 4'b0000, 8'd111, mag_pos};    // U-FLAG = 1
                32:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd32, 16'hAAAA}; //magic number
                33:      MOSI_cmd <=  { 2'b10, 2'b00, 4'b0000, 8'd33, 16'h00FF}; //magic number does not actually trigger current sources, but just arm stimulators once both registers are written
                34:      MOSI_cmd <=  { 2'b11, 2'b01, 4'b0000, 8'hff, 16'b0 };      // M-FLAG = 1 clears compliance monitor register
                default: MOSI_cmd <=  read_rom255_cmd;
                endcase
        end
        else begin
            MOSI_cmd <= read_rom255_cmd;
        end
    end	
endmodule



// This simple module creates MOSI commands.  If channel is between 0 and 15, the command is CONVERT(channel),
// and the LSB is set if DSP_settle = 1.  If channel is between 16 and 19, send stimulation commands.
module command_selector_stim (
    input wire              enable, 
	input wire [5:0] 		channel,
	input wire				charge_recov_mode, //0 means recovery is current limited i.e. switched to DAC, 1 means not current limited i.e. switched to stim_gnd which is tied to gnd
	input wire [31:0] 	    ZCheck_cmd_1,
    input wire [31:0] 	    ZCheck_cmd_2,
	input wire				stim_en,
	input wire [15:0]		stim_on,
	input wire [15:0]		stim_pol,
	input wire [15:0]		charge_recov,
	output reg [31:0] 	    MOSI_cmd
	);

    /* Register address */
	wire [7:0] charge_recov_register, compliance_register, stim_on_register, stim_pol_register;
	
	assign compliance_register = 8'd40;
	assign stim_on_register = 8'd42; //BIT MASK TO TURN ON CHANNEL CURRENT SOURCES
	assign stim_pol_register = 8'd44; //BIT MASK TO CONFIGURE POLARITY OF CHANNEL CURRENT SOURCES
	// If charge_recov_mode = 0, use current-limited charge recovery drivers (Register 48)
	// If charge_recov_mode = 1, use charge recovery switch (Register 46)
	assign charge_recov_register = charge_recov_mode ? 8'd46 : 8'd48;

    wire [31:0] read_rom255_cmd;
    assign read_rom255_cmd = { 2'b11, 2'b00, 4'b0000, 8'hff, 16'b0 };


	// If shutdown == 1, issue commands to turn off stimulation, amp settling, and charge recovery circuits.
	wire [15:0] stim_on_cmd, stim_pol_cmd, charge_recov_cmd;
	assign stim_on_cmd = stim_on;
	assign stim_pol_cmd = stim_pol;
	//assign charge_recov_cmd = charge_recov;
	assign charge_recov_cmd = stim_on; //stim_on channel mask will also determine if they need charge recovery

    // DSP_settle
    wire DSP_settle;
    assign DSP_settle = 1'b0;
	
	always @(*) begin
		case (channel)
			0:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			1:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			2:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			3:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			4:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			5:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			6:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			7:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			8:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			9:       MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			10:      MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			11:      MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			12:      MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			13:      MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			14:      MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			15:      MOSI_cmd <= { 1'b0, 2'b00, 2'b01, DSP_settle, 4'b0000, channel, 16'h0000 };
			16:		 MOSI_cmd <= stim_en ? { 2'b10, 2'b00, 4'b0000, stim_on_register, stim_on_cmd  }            : ZCheck_cmd_1; // turn stim on/off
			17:		 MOSI_cmd <= stim_en ? { 2'b10, 2'b00, 4'b0000, stim_pol_register, stim_pol_cmd }           : ZCheck_cmd_2; // set stim polarity , 1 is pos, 0 is neg
            18:		 MOSI_cmd <= !stim_en ? { 2'b10, 2'b00, 4'b0000, stim_on_register, 0} : read_rom255_cmd; // when stim_en is low, always turn off the stimulators; else just do dummy command
			//18:		 MOSI_cmd <= { 2'b11, 2'b00, 4'b0000, compliance_register, 16'h0000 }; //            : read_rom255_cmd;
			19:		 MOSI_cmd <= stim_en ? { 2'b10, 2'b11, 4'b0000, charge_recov_register, charge_recov_cmd }   : { 2'b10, 2'b11, 4'b0000, charge_recov_register, 0 }; // set charge recovery, trigger U flag; when stim_en is low, turn off charge recovery
			default: MOSI_cmd <= 32'b0;
			endcase
	end	
	
endmodule




module MISO_phase_selector(
	input wire [3:0] 		phase_select,	// MISO sampling phase lag to compensate for headstage cable delay
	input wire [133:0] 	MISO4x,			// 4x oversampled MISO input
	output reg [31:0] 	MISO				// 32-bit MISO output
	);
	
	always @(*) begin
		case (phase_select)
			0:       MISO <= {MISO4x[0],  MISO4x[4],  MISO4x[8],  MISO4x[12], MISO4x[16], MISO4x[20], MISO4x[24], MISO4x[28], MISO4x[32], MISO4x[36], MISO4x[40], MISO4x[44], MISO4x[48], MISO4x[52], MISO4x[56], MISO4x[60], MISO4x[64], MISO4x[68], MISO4x[72], MISO4x[76], MISO4x[80], MISO4x[84], MISO4x[88], MISO4x[92], MISO4x[96], MISO4x[100], MISO4x[104], MISO4x[108], MISO4x[112], MISO4x[116], MISO4x[120], MISO4x[124]};
			1:       MISO <= {MISO4x[1],  MISO4x[5],  MISO4x[9],  MISO4x[13], MISO4x[17], MISO4x[21], MISO4x[25], MISO4x[29], MISO4x[33], MISO4x[37], MISO4x[41], MISO4x[45], MISO4x[49], MISO4x[53], MISO4x[57], MISO4x[61], MISO4x[65], MISO4x[69], MISO4x[73], MISO4x[77], MISO4x[81], MISO4x[85], MISO4x[89], MISO4x[93], MISO4x[97], MISO4x[101], MISO4x[105], MISO4x[109], MISO4x[113], MISO4x[118], MISO4x[121], MISO4x[125]};
			2:       MISO <= {MISO4x[2],  MISO4x[6],  MISO4x[10], MISO4x[14], MISO4x[18], MISO4x[22], MISO4x[26], MISO4x[30], MISO4x[34], MISO4x[38], MISO4x[42], MISO4x[46], MISO4x[50], MISO4x[54], MISO4x[58], MISO4x[62], MISO4x[66], MISO4x[70], MISO4x[74], MISO4x[78], MISO4x[82], MISO4x[86], MISO4x[90], MISO4x[94], MISO4x[98], MISO4x[102], MISO4x[106], MISO4x[110], MISO4x[114], MISO4x[119], MISO4x[122], MISO4x[126]};
			3:       MISO <= {MISO4x[3],  MISO4x[7],  MISO4x[11], MISO4x[15], MISO4x[19], MISO4x[23], MISO4x[27], MISO4x[31], MISO4x[35], MISO4x[39], MISO4x[43], MISO4x[47], MISO4x[51], MISO4x[55], MISO4x[59], MISO4x[63], MISO4x[67], MISO4x[71], MISO4x[75], MISO4x[79], MISO4x[83], MISO4x[87], MISO4x[91], MISO4x[95], MISO4x[99], MISO4x[103], MISO4x[107], MISO4x[111], MISO4x[115], MISO4x[120], MISO4x[123], MISO4x[127]};
			4:       MISO <= {MISO4x[4],  MISO4x[8],  MISO4x[12], MISO4x[16], MISO4x[20], MISO4x[24], MISO4x[28], MISO4x[32], MISO4x[36], MISO4x[40], MISO4x[44], MISO4x[48], MISO4x[52], MISO4x[56], MISO4x[60], MISO4x[64], MISO4x[68], MISO4x[72], MISO4x[76], MISO4x[80], MISO4x[84], MISO4x[88], MISO4x[92], MISO4x[96], MISO4x[100], MISO4x[104], MISO4x[108], MISO4x[112], MISO4x[116], MISO4x[121], MISO4x[124], MISO4x[128]};
			5:       MISO <= {MISO4x[5],  MISO4x[9],  MISO4x[13], MISO4x[17], MISO4x[21], MISO4x[25], MISO4x[29], MISO4x[33], MISO4x[37], MISO4x[41], MISO4x[45], MISO4x[49], MISO4x[53], MISO4x[57], MISO4x[61], MISO4x[65], MISO4x[69], MISO4x[73], MISO4x[77], MISO4x[81], MISO4x[85], MISO4x[89], MISO4x[93], MISO4x[97], MISO4x[101], MISO4x[105], MISO4x[109], MISO4x[113], MISO4x[117], MISO4x[122], MISO4x[125], MISO4x[129]};
			6:       MISO <= {MISO4x[6],  MISO4x[10], MISO4x[14], MISO4x[18], MISO4x[22], MISO4x[26], MISO4x[30], MISO4x[34], MISO4x[38], MISO4x[42], MISO4x[46], MISO4x[50], MISO4x[54], MISO4x[58], MISO4x[62], MISO4x[66], MISO4x[70], MISO4x[74], MISO4x[78], MISO4x[82], MISO4x[86], MISO4x[90], MISO4x[94], MISO4x[98], MISO4x[102], MISO4x[106], MISO4x[110], MISO4x[114], MISO4x[118], MISO4x[123], MISO4x[126], MISO4x[130]};
			7:       MISO <= {MISO4x[7],  MISO4x[11], MISO4x[15], MISO4x[19], MISO4x[23], MISO4x[27], MISO4x[31], MISO4x[35], MISO4x[39], MISO4x[43], MISO4x[47], MISO4x[51], MISO4x[55], MISO4x[59], MISO4x[63], MISO4x[67], MISO4x[71], MISO4x[75], MISO4x[79], MISO4x[83], MISO4x[87], MISO4x[91], MISO4x[95], MISO4x[99], MISO4x[103], MISO4x[107], MISO4x[111], MISO4x[115], MISO4x[119], MISO4x[124], MISO4x[127], MISO4x[131]};
			8:       MISO <= {MISO4x[8],  MISO4x[12], MISO4x[16], MISO4x[20], MISO4x[24], MISO4x[28], MISO4x[32], MISO4x[36], MISO4x[40], MISO4x[44], MISO4x[48], MISO4x[52], MISO4x[56], MISO4x[60], MISO4x[64], MISO4x[68], MISO4x[72], MISO4x[76], MISO4x[80], MISO4x[84], MISO4x[88], MISO4x[92], MISO4x[96], MISO4x[100], MISO4x[104], MISO4x[108], MISO4x[112], MISO4x[116], MISO4x[120], MISO4x[125], MISO4x[128], MISO4x[132]};
			9:       MISO <= {MISO4x[9],  MISO4x[13], MISO4x[17], MISO4x[21], MISO4x[25], MISO4x[29], MISO4x[33], MISO4x[37], MISO4x[41], MISO4x[45], MISO4x[49], MISO4x[53], MISO4x[57], MISO4x[61], MISO4x[65], MISO4x[69], MISO4x[73], MISO4x[77], MISO4x[81], MISO4x[85], MISO4x[89], MISO4x[93], MISO4x[97], MISO4x[101], MISO4x[105], MISO4x[109], MISO4x[113], MISO4x[117], MISO4x[121], MISO4x[126], MISO4x[129], MISO4x[133]};
			default: MISO <= {MISO4x[9],  MISO4x[13], MISO4x[17], MISO4x[21], MISO4x[25], MISO4x[29], MISO4x[33], MISO4x[37], MISO4x[41], MISO4x[45], MISO4x[49], MISO4x[53], MISO4x[57], MISO4x[61], MISO4x[65], MISO4x[69], MISO4x[73], MISO4x[77], MISO4x[81], MISO4x[85], MISO4x[89], MISO4x[93], MISO4x[97], MISO4x[101], MISO4x[105], MISO4x[109], MISO4x[113], MISO4x[117], MISO4x[121], MISO4x[126], MISO4x[129], MISO4x[133]};
		endcase
	end
endmodule

module risingEdgeLatch (input resetn, input data, output reg q);
    always @ (resetn, data) begin
        if (!resetn)
            q <= 0;
        else if (data == 1 && q == 0)
            q <= 1;
    end
endmodule