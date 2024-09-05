module seeg (
    input wire rstn,
    input wire clk,
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

    output reg stim_finite_mode_done,
    input wire stim_finite_mode_start,
    input wire stim_infinite_mode_start,
    input wire stim_infinite_mode_stop,

    output reg record_data_valid,
    output reg zcheck_data_valid

    
    
    
);

    wire clk_rhd;
    clock_divider ClockDivideByTwo (.clock_in(clk), .clock_out(clk_rhd), .divisor(2)); //rhs runs on a clock twice as fast as rhd
    localparam READY = 0, RESET = 1, CONFIG_START = 2, CONFIG_WAIT = 3, RECORD_START = 4, RECORD_WAIT = 5, RECORD_STOP = 6, ZCHECK_RHD_START = 7, ZCHECK_RHD_WAIT = 8, ZCHECK_RHS_START = 9, ZCHECK_RHS_WAIT = 10, ZCHECK_STOP = 11;
    reg [7:0] state = READY;

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

    localparam RHD_CHANNELS = 5;
    localparam RHS_CHANNELS = 3;

    reg [11:0] zcheck_global_channel_rhd = 0; // 0 - 2047
    reg [11:0] zcheck_global_channel_rhs = 0; //0 - 255

    reg done_rhd_flag = 0;
    reg done_rhs_flag = 0;

    reg config_done_record_flag = 0; //indicates if after config is done whether record state should be entered
    reg config_done_zcheck_flag = 0; //indicates if after config is done whether zcheck state should be entered
    reg config_done_reset_flag = 0; //indicates if after config is done whether reset state should be entered; this should be done after recording and zcheck as a register reset cycle


    wire [2559:0] zcheck_data_out_rhd;
    wire [2559:0] zcheck_data_out_rhs;

    wire [32767:0] data_out_rhd;
    wire [4095:0] data_out_rhs;

    wire [7:0] channel_out_rhd;
    wire [7:0] channel_out_rhs;

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
        .channel_out(channel_out_rhd)
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

        .stim_finite_mode_done(stim_finite_mode_done),
        .stim_finite_mode_start(stim_finite_mode_start),
        .stim_infinite_mode_start(stim_infinite_mode_start),
        .stim_infinite_mode_stop(stim_infinite_mode_stop),
        .stim_waveform_data_out(stim_waveform_data_out),

        
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