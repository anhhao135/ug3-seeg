module seeg (
    input wire rstn,
    input wire clk,
    input wire record_start,
    input wire record_stop,
    input wire zcheck_start,
    output wire zcheck_done
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

    rhd_2048 rhd_2048(
        .clk(clk_rhd),
        .rstn(rstn),
        .config_start(config_start_flag),
        .record_start(record_start_flag),
        .zcheck_start(zcheck_rhd_start_flag),
        .done(done_rhd),
        .busy(busy_rhd),
        .zcheck_global_channel(zcheck_global_channel_rhd)
        /*
        .config_start(config_start),
        .record_start(record_start),
        .zcheck_start(zcheck_start),
        .zcheck_global_channel(zcheck_global_channel),
        .zcheck_scale(zcheck_scale),
        .oversample_offset_A1(oversample_offset),
        .oversample_offset_A2(oversample_offset),
        .oversample_offset_B1(oversample_offset),
        .oversample_offset_B2(oversample_offset),
        .oversample_offset_C1(oversample_offset),
        .oversample_offset_C2(oversample_offset),
        .oversample_offset_D1(oversample_offset),
        .oversample_offset_D2(oversample_offset),
        .oversample_offset_E1(oversample_offset),
        .oversample_offset_E2(oversample_offset),
        .oversample_offset_F1(oversample_offset),
        .oversample_offset_F2(oversample_offset),
        .oversample_offset_G1(oversample_offset),
        .oversample_offset_G2(oversample_offset),
        .oversample_offset_H1(oversample_offset),
        .oversample_offset_H2(oversample_offset),
        .oversample_offset_I1(oversample_offset),
        .oversample_offset_I2(oversample_offset),
        .oversample_offset_J1(oversample_offset),
        .oversample_offset_J2(oversample_offset),
        .oversample_offset_K1(oversample_offset),
        .oversample_offset_K2(oversample_offset),
        .oversample_offset_L1(oversample_offset),
        .oversample_offset_L2(oversample_offset),
        .oversample_offset_M1(oversample_offset),
        .oversample_offset_M2(oversample_offset),
        .oversample_offset_N1(oversample_offset),
        .oversample_offset_N2(oversample_offset),
        .oversample_offset_O1(oversample_offset),
        .oversample_offset_O2(oversample_offset),
        .oversample_offset_P1(oversample_offset),
        .oversample_offset_P2(oversample_offset),
        .channel_out(rhd_channel_dut),
        .CS(CS),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .MISO1_A(MISO1_A),
        .MISO2_A(MISO2_A),
        .MISO1_B(MISO1_B),
        .MISO2_B(MISO2_B),
        .MISO1_C(MISO1_C),
        .MISO2_C(MISO2_C),
        .MISO1_D(MISO1_D),
        .MISO2_D(MISO2_D),
        .MISO1_E(MISO1_E),
        .MISO2_E(MISO2_E),
        .MISO1_F(MISO1_F),
        .MISO2_F(MISO2_F),
        .MISO1_G(MISO1_G),
        .MISO2_G(MISO2_G),
        .MISO1_H(MISO1_H),
        .MISO2_H(MISO2_H),
        .MISO1_I(MISO1_I),
        .MISO2_I(MISO2_I),
        .MISO1_J(MISO1_J),
        .MISO2_J(MISO2_J),
        .MISO1_K(MISO1_K),
        .MISO2_K(MISO2_K),
        .MISO1_L(MISO1_L),
        .MISO2_L(MISO2_L),
        .MISO1_M(MISO1_M),
        .MISO2_M(MISO2_M),
        .MISO1_N(MISO1_N),
        .MISO2_N(MISO2_N),
        .MISO1_O(MISO1_O),
        .MISO2_O(MISO2_O),
        .MISO1_P(MISO1_P),
        .MISO2_P(MISO2_P),
        .sampling_rate_20k(sampling_rate_20k)
        */
    );

    rhs_256 rhs_256(
        .clk(clk),
        .rstn(rstn),
        .config_start(config_start_flag),
        .record_start(record_start_flag),
        .zcheck_start(zcheck_rhs_start_flag),
        .done(done_rhs),
        .busy(busy_rhs),
        .zcheck_global_channel(zcheck_global_channel_rhs)
        /*
        .config_start(config_start),
        .record_start(record_start),
        .zcheck_start(zcheck_start),
        .zcheck_global_channel(zcheck_global_channel),
        .zcheck_scale(zcheck_scale),
        .oversample_offset_A(oversample_offset),
        .oversample_offset_B(oversample_offset),
        .oversample_offset_C(oversample_offset),
        .oversample_offset_D(oversample_offset),
        .oversample_offset_E(oversample_offset),
        .oversample_offset_F(oversample_offset),
        .oversample_offset_G(oversample_offset),
        .oversample_offset_H(oversample_offset),
        .oversample_offset_I(oversample_offset),
        .oversample_offset_J(oversample_offset),
        .oversample_offset_K(oversample_offset),
        .oversample_offset_L(oversample_offset),
        .oversample_offset_M(oversample_offset),
        .oversample_offset_N(oversample_offset),
        .oversample_offset_O(oversample_offset),
        .oversample_offset_P(oversample_offset),
        .channel_out(rhs_channel_dut),
        .CS(CS),
        .SCLK(SCLK),
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
        .MISO_A(MISO_A),
        .MISO_B(MISO_B),
        .MISO_C(MISO_C),
        .MISO_D(MISO_D),
        .MISO_E(MISO_E),
        .MISO_F(MISO_F),
        .MISO_G(MISO_G),
        .MISO_H(MISO_H),
        .MISO_I(MISO_I),
        .MISO_J(MISO_J),
        .MISO_K(MISO_K),
        .MISO_L(MISO_L),
        .MISO_M(MISO_M),
        .MISO_N(MISO_N),
        .MISO_O(MISO_O),
        .MISO_P(MISO_P),
        .stim_pulse_length(stim_pulse_length),
        .stim_pulse_magnitude(stim_pulse_magnitude),
        .stim_inter_bipulse_delay(stim_inter_bipulse_delay),
        .stim_inter_pulse_delay(stim_inter_pulse_delay),
        .stim_inter_train_delay(stim_inter_train_delay),
        .stim_bipulses_per_train_count(stim_bipulses_per_train_count),
        .stim_train_count(stim_train_count),
        .stim_charge_recovery_time(stim_charge_recovery_time),
        .stim_rising_edge_first(stim_rising_edge_first),
        .stim_finite_mode_start(stim_finite_mode_start),
        .stim_infinite_mode_start(stim_infinite_mode_start),
        .stim_infinite_mode_stop(stim_infinite_mode_stop),
        .stim_mask_channel_positive(stim_mask_channel_positive),
        .stim_mask_channel_negative(stim_mask_channel_negative),
        .stim_current_step_size(stim_current_step_size),
        .stim_bipolar_mode(stim_bipolar_mode),
        .stim_mask_probe_select(stim_mask_probe_select)
        */
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