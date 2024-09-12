module seeg_top #
(

    // User parameters ends
    // Do not modify the parameters beyond this line
    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S_AXI_DATA_WIDTH	= 32,
    parameter integer C_S_AXI_ADDR_WIDTH	= 32
)
(

	input wire  	   M_AXIS_ACLK,
	input wire		   M_AXIS_ARESETN,
    //! @virtualbus M_AXIS @dir out an AXI-Stream Master interface to send the burst data
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
		output wire [63:0] M_AXIS_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
		output wire		     M_AXIS_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
		input wire		     M_AXIS_tready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
		output wire		     M_AXIS_tlast,
    //! @end

	// User ports ends
	// Do not modify the ports beyond this line

	// Global Clock Signal
	input wire  S_AXI_ACLK,
	// Global Reset Signal. This Signal is Active LOW
	input wire  S_AXI_ARESETN,
	// Write address (issued by master, acceped by Slave)
	input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
	// Write channel Protection type. This signal indicates the
		// privilege and security level of the transaction, and whether
		// the transaction is a data access or an instruction access.
	input wire [2 : 0] S_AXI_AWPROT,
	// Write address valid. This signal indicates that the master signaling
		// valid write address and control information.
	input wire  S_AXI_AWVALID,
	// Write address ready. This signal indicates that the slave is ready
		// to accept an address and associated control signals.
	output wire  S_AXI_AWREADY,
	// Write data (issued by master, acceped by Slave) 
	input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
	// Write strobes. This signal indicates which byte lanes hold
		// valid data. There is one write strobe bit for each eight
		// bits of the write data bus.    
	input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
	// Write valid. This signal indicates that valid write
		// data and strobes are available.
	input wire  S_AXI_WVALID,
	// Write ready. This signal indicates that the slave
		// can accept the write data.
	output wire  S_AXI_WREADY,
	// Write response. This signal indicates the status
		// of the write transaction.
	output wire [1 : 0] S_AXI_BRESP,
	// Write response valid. This signal indicates that the channel
		// is signaling a valid write response.
	output wire  S_AXI_BVALID,
	// Response ready. This signal indicates that the master
		// can accept a write response.
	input wire  S_AXI_BREADY,
	// Read address (issued by master, acceped by Slave)
	input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
	// Protection type. This signal indicates the privilege
		// and security level of the transaction, and whether the
		// transaction is a data access or an instruction access.
	input wire [2 : 0] S_AXI_ARPROT,
	// Read address valid. This signal indicates that the channel
		// is signaling valid read address and control information.
	input wire  S_AXI_ARVALID,
	// Read address ready. This signal indicates that the slave is
		// ready to accept an address and associated control signals.
	output wire  S_AXI_ARREADY,
	// Read data (issued by slave)
	output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
	// Read response. This signal indicates the status of the
		// read transfer.
	output wire [1 : 0] S_AXI_RRESP,
	// Read valid. This signal indicates that the channel is
		// signaling the required read data.
	output wire  S_AXI_RVALID,
	// Read ready. This signal indicates that the master can
		// accept the read data and response information.
	input wire  S_AXI_RREADY,


    //RHD data
    output wire RHD_CS,
    output wire RHD_MOSI,
    output wire RHD_SCLK,

    input wire RHD_MISO1_A,
    input wire RHD_MISO2_A,

    input wire RHD_MISO1_B,
    input wire RHD_MISO2_B,

    input wire RHD_MISO1_C,
    input wire RHD_MISO2_C,

    input wire RHD_MISO1_D,
    input wire RHD_MISO2_D,

    input wire RHD_MISO1_E,
    input wire RHD_MISO2_E,

    input wire RHD_MISO1_F,
    input wire RHD_MISO2_F,

    input wire RHD_MISO1_G,
    input wire RHD_MISO2_G,

    input wire RHD_MISO1_H,
    input wire RHD_MISO2_H,

    input wire RHD_MISO1_I_P,
    input wire RHD_MISO1_I_N,
    input wire RHD_MISO2_I_P,
    input wire RHD_MISO2_I_N,

    input wire RHD_MISO1_J_P,
    input wire RHD_MISO1_J_N,
    input wire RHD_MISO2_J_P,
    input wire RHD_MISO2_J_N,

    input wire RHD_MISO1_K_P,
    input wire RHD_MISO1_K_N,
    input wire RHD_MISO2_K_P,
    input wire RHD_MISO2_K_N,
    
    input wire RHD_MISO1_L_P,
    input wire RHD_MISO1_L_N,
    input wire RHD_MISO2_L_P,
    input wire RHD_MISO2_L_N,

    input wire RHD_MISO1_M_P,
    input wire RHD_MISO1_M_N,
    input wire RHD_MISO2_M_P,
    input wire RHD_MISO2_M_N,

    input wire RHD_MISO1_N_P,
    input wire RHD_MISO1_N_N,
    input wire RHD_MISO2_N_P,
    input wire RHD_MISO2_N_N,

    input wire RHD_MISO1_O_P,
    input wire RHD_MISO1_O_N,
    input wire RHD_MISO2_O_P,
    input wire RHD_MISO2_O_N,

    input wire RHD_MISO1_P_P,
    input wire RHD_MISO1_P_N,
    input wire RHD_MISO2_P_P,
    input wire RHD_MISO2_P_N,


    //RHS data

    output wire RHS_CS,
    output wire RHS_SCLK,
    output wire RHS_MOSI_A,
    output wire RHS_MOSI_B,
    output wire RHS_MOSI_C,
    output wire RHS_MOSI_D,
    output wire RHS_MOSI_E,
    output wire RHS_MOSI_F,
    output wire RHS_MOSI_G,
    output wire RHS_MOSI_H,
    output wire RHS_MOSI_I,
    output wire RHS_MOSI_J,
    output wire RHS_MOSI_K,
    output wire RHS_MOSI_L,
    output wire RHS_MOSI_M,
    output wire RHS_MOSI_N,
    output wire RHS_MOSI_O,
    output wire RHS_MOSI_P,

    input wire RHS_MISO_A,
    input wire RHS_MISO_B,
    input wire RHS_MISO_C,
    input wire RHS_MISO_D,
    input wire RHS_MISO_E,
    input wire RHS_MISO_F,
    input wire RHS_MISO_G,
    input wire RHS_MISO_H,
    input wire RHS_MISO_I,
    input wire RHS_MISO_J,
    input wire RHS_MISO_K,
    input wire RHS_MISO_L,
    input wire RHS_MISO_M,
    input wire RHS_MISO_N,
    input wire RHS_MISO_O,
    input wire RHS_MISO_P

);


    wire RHD_MISO1_I;
    wire RHD_MISO2_I;

    wire RHD_MISO1_J;
    wire RHD_MISO2_J;

    wire RHD_MISO1_K;
    wire RHD_MISO2_K;

    wire RHD_MISO1_L;
    wire RHD_MISO2_L;

    wire RHD_MISO1_M;
    wire RHD_MISO2_M;

    wire RHD_MISO1_N;
    wire RHD_MISO2_N;

    wire RHD_MISO1_O;
    wire RHD_MISO2_O;

    wire RHD_MISO1_P;
    wire RHD_MISO2_P;


    rhd_diff_to_single rhdDiffToSingle(
    .MISO1_I_P(RHD_MISO1_I_P),
    .MISO1_I_N(RHD_MISO1_I_N),
    .MISO1_I(RHD_MISO1_I),
    .MISO2_I_P(RHD_MISO2_I_P),
    .MISO2_I_N(RHD_MISO2_I_N),
    .MISO2_I(RHD_MISO2_I),

    .MISO1_J_P(RHD_MISO1_J_P),
    .MISO1_J_N(RHD_MISO1_J_N),
    .MISO1_J(RHD_MISO1_J),
    .MISO2_J_P(RHD_MISO2_J_P),
    .MISO2_J_N(RHD_MISO2_J_N),
    .MISO2_J(RHD_MISO2_J),

    .MISO1_K_P(RHD_MISO1_K_P),
    .MISO1_K_N(RHD_MISO1_K_N),
    .MISO1_K(RHD_MISO1_K),
    .MISO2_K_P(RHD_MISO2_K_P),
    .MISO2_K_N(RHD_MISO2_K_N),
    .MISO2_K(RHD_MISO2_K),

    .MISO1_L_P(RHD_MISO1_L_P),
    .MISO1_L_N(RHD_MISO1_L_N),
    .MISO1_L(RHD_MISO1_L),
    .MISO2_L_P(RHD_MISO2_L_P),
    .MISO2_L_N(RHD_MISO2_L_N),
    .MISO2_L(RHD_MISO2_L),

    .MISO1_M_P(RHD_MISO1_M_P),
    .MISO1_M_N(RHD_MISO1_M_N),
    .MISO1_M(RHD_MISO1_M),
    .MISO2_M_P(RHD_MISO2_M_P),
    .MISO2_M_N(RHD_MISO2_M_N),
    .MISO2_M(RHD_MISO2_M),

    .MISO1_N_P(RHD_MISO1_N_P),
    .MISO1_N_N(RHD_MISO1_N_N),
    .MISO1_N(RHD_MISO1_N),
    .MISO2_N_P(RHD_MISO2_N_P),
    .MISO2_N_N(RHD_MISO2_N_N),
    .MISO2_N(RHD_MISO2_N),

    .MISO1_O_P(RHD_MISO1_O_P),
    .MISO1_O_N(RHD_MISO1_O_N),
    .MISO1_O(RHD_MISO1_O),
    .MISO2_O_P(RHD_MISO2_O_P),
    .MISO2_O_N(RHD_MISO2_O_N),
    .MISO2_O(RHD_MISO2_O),

    .MISO1_P_P(RHD_MISO1_P_P),
    .MISO1_P_N(RHD_MISO1_P_N),
    .MISO1_P(RHD_MISO1_P),
    .MISO2_P_P(RHD_MISO2_P_P),
    .MISO2_P_N(RHD_MISO2_P_N),
    .MISO2_P(RHD_MISO2_P)
    );

    seeg seeg(
    .clk(S_AXI_ACLK),
    .rstn(S_AXI_ARESETN),
    .record_start(slv_reg0[0]),
    .record_stop(slv_reg0[1]),
    .zcheck_start(slv_reg0[2]),
    .zcheck_scale(slv_reg0[4:3]),
    .busy(slv_reg31[0]),
    .busy_recording(slv_reg31[3]),
    .busy_zcheck(slv_reg31[4]),
    .zcheck_done(slv_reg31[1]),
    .current_state(slv_reg31[15:8]),

    .stim_pulse_length(slv_reg3[15:0]),
    .stim_pulse_magnitude(slv_reg1[13:6]),
    .stim_inter_bipulse_delay(slv_reg3[31:16]),
    .stim_inter_pulse_delay(slv_reg4[15:0]),
    .stim_inter_train_delay(slv_reg4[31:16]),
    .stim_bipulses_per_train_count(slv_reg5[15:0]),
    .stim_train_count(slv_reg5[31:16]),
    .stim_charge_recovery_time(slv_reg6[15:0]),
    .stim_rising_edge_first(slv_reg1[1]),

    .stim_finite_mode_start(slv_reg0[6]),
    .stim_infinite_mode_start(slv_reg0[7]),
    .stim_infinite_mode_stop(slv_reg0[8]),
    .stim_finite_mode_done(slv_reg31[2]),
    
    .stim_mask_channel_positive(slv_reg2[15:0]),
    .stim_mask_channel_negative(slv_reg2[31:16]),
    .stim_current_step_size(slv_reg1[5:2]),
    .stim_bipolar_mode(slv_reg1[0]),
    .stim_mask_probe_select(slv_reg1[31:16]),

    .loopback_mode(slv_reg0[5]),

    .oversample_offset_A1(slv_reg7[7:0]),
    .oversample_offset_A2(slv_reg7[15:8]),
    .oversample_offset_B1(slv_reg7[23:16]),
    .oversample_offset_B2(slv_reg7[31:24]),
    .oversample_offset_C1(slv_reg8[7:0]),
    .oversample_offset_C2(slv_reg8[15:8]),
    .oversample_offset_D1(slv_reg8[23:16]),
    .oversample_offset_D2(slv_reg8[31:24]),
    .oversample_offset_E1(slv_reg9[7:0]),
    .oversample_offset_E2(slv_reg9[15:8]),
    .oversample_offset_F1(slv_reg9[23:16]),
    .oversample_offset_F2(slv_reg9[31:24]),
    .oversample_offset_G1(slv_reg10[7:0]),
    .oversample_offset_G2(slv_reg10[15:8]),
    .oversample_offset_H1(slv_reg10[23:16]),
    .oversample_offset_H2(slv_reg10[31:24]),
    .oversample_offset_I1(slv_reg11[7:0]),
    .oversample_offset_I2(slv_reg11[15:8]),
    .oversample_offset_J1(slv_reg11[23:16]),
    .oversample_offset_J2(slv_reg11[31:24]),
    .oversample_offset_K1(slv_reg12[7:0]),
    .oversample_offset_K2(slv_reg12[15:8]),
    .oversample_offset_L1(slv_reg12[23:16]),
    .oversample_offset_L2(slv_reg12[31:24]),
    .oversample_offset_M1(slv_reg13[7:0]),
    .oversample_offset_M2(slv_reg13[15:8]),
    .oversample_offset_N1(slv_reg13[23:16]),
    .oversample_offset_N2(slv_reg13[31:24]),
    .oversample_offset_O1(slv_reg14[7:0]),
    .oversample_offset_O2(slv_reg14[15:8]),
    .oversample_offset_P1(slv_reg14[23:16]),
    .oversample_offset_P2(slv_reg14[31:24]),

    .oversample_offset_A(slv_reg15[7:0]),
    .oversample_offset_B(slv_reg15[15:8]),
    .oversample_offset_C(slv_reg15[23:16]),
    .oversample_offset_D(slv_reg15[31:24]),
    .oversample_offset_E(slv_reg16[7:0]),
    .oversample_offset_F(slv_reg16[15:8]),
    .oversample_offset_G(slv_reg16[23:16]),
    .oversample_offset_H(slv_reg16[31:24]),
    .oversample_offset_I(slv_reg17[7:0]),
    .oversample_offset_J(slv_reg17[15:8]),
    .oversample_offset_K(slv_reg17[23:16]),
    .oversample_offset_L(slv_reg17[31:24]),
    .oversample_offset_M(slv_reg18[7:0]),
    .oversample_offset_N(slv_reg18[15:8]),
    .oversample_offset_O(slv_reg18[23:16]),
    .oversample_offset_P(slv_reg18[31:24]),

    .CS_RHD(RHD_CS),
    .SCLK_RHD(RHD_SCLK),
    .MOSI_RHD(RHD_MOSI),
    .MISO1_A(RHD_MISO1_A),
    .MISO2_A(RHD_MISO2_A),
    .MISO1_B(RHD_MISO1_B),
    .MISO2_B(RHD_MISO2_B),
    .MISO1_C(RHD_MISO1_C),
    .MISO2_C(RHD_MISO2_C),
    .MISO1_D(RHD_MISO1_D),
    .MISO2_D(RHD_MISO2_D),
    .MISO1_E(RHD_MISO1_E),
    .MISO2_E(RHD_MISO2_E),
    .MISO1_F(RHD_MISO1_F),
    .MISO2_F(RHD_MISO2_F),
    .MISO1_G(RHD_MISO1_G),
    .MISO2_G(RHD_MISO2_G),
    .MISO1_H(RHD_MISO1_H),
    .MISO2_H(RHD_MISO2_H),
    .MISO1_I(RHD_MISO1_I),
    .MISO2_I(RHD_MISO2_I),
    .MISO1_J(RHD_MISO1_J),
    .MISO2_J(RHD_MISO2_J),
    .MISO1_K(RHD_MISO1_K),
    .MISO2_K(RHD_MISO2_K),
    .MISO1_L(RHD_MISO1_L),
    .MISO2_L(RHD_MISO2_L),
    .MISO1_M(RHD_MISO1_M),
    .MISO2_M(RHD_MISO2_M),
    .MISO1_N(RHD_MISO1_N),
    .MISO2_N(RHD_MISO2_N),
    .MISO1_O(RHD_MISO1_O),
    .MISO2_O(RHD_MISO2_O),
    .MISO1_P(RHD_MISO1_P),
    .MISO2_P(RHD_MISO2_P),

    .CS_RHS(RHS_CS),
    .SCLK_RHS(RHS_SCLK),
    .MOSI_A(RHS_MOSI_A),
    .MOSI_B(RHS_MOSI_B),
    .MOSI_C(RHS_MOSI_C),
    .MOSI_D(RHS_MOSI_D),
    .MOSI_E(RHS_MOSI_E),
    .MOSI_F(RHS_MOSI_F),
    .MOSI_G(RHS_MOSI_G),
    .MOSI_H(RHS_MOSI_H),
    .MOSI_I(RHS_MOSI_I),
    .MOSI_J(RHS_MOSI_J),
    .MOSI_K(RHS_MOSI_K),
    .MOSI_L(RHS_MOSI_L),
    .MOSI_M(RHS_MOSI_M),
    .MOSI_N(RHS_MOSI_N),
    .MOSI_O(RHS_MOSI_O),
    .MOSI_P(RHS_MOSI_P),
    .MISO_A(RHS_MISO_A),
    .MISO_B(RHS_MISO_B),
    .MISO_C(RHS_MISO_C),
    .MISO_D(RHS_MISO_D),
    .MISO_E(RHS_MISO_E),
    .MISO_F(RHS_MISO_F),
    .MISO_G(RHS_MISO_G),
    .MISO_H(RHS_MISO_H),
    .MISO_I(RHS_MISO_I),
    .MISO_J(RHS_MISO_J),
    .MISO_K(RHS_MISO_K),
    .MISO_L(RHS_MISO_L),
    .MISO_M(RHS_MISO_M),
    .MISO_N(RHS_MISO_N),
    .MISO_O(RHS_MISO_O),
    .MISO_P(RHS_MISO_P)
    );

    




    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr = 0;
    reg  	axi_awready = 0;
    reg  	axi_wready = 0;
    reg [1 : 0] 	axi_bresp = 0;
    reg  	axi_bvalid = 0;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr = 0;
    reg  	axi_arready = 0;
    reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata = 0;
    reg [1 : 0] 	axi_rresp = 0;
    reg  	axi_rvalid = 0;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 4;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers: 32
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0; //ADDR: 0x0
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1; //ADDR: 0x4
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2; //ADDR: 0x8 ...so on
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg12;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg13;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg14;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg15;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg16;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg17;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg18;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg19;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg20;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg21;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg22;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg23;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg24;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg25;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg26;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg27;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg28;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg29;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg30;
    wire [C_S_AXI_DATA_WIDTH-1:0]	slv_reg31; //read only

    assign slv_reg31[7:5] = 0; //unused part of register
    assign slv_reg31[31:16] = 0; //unused part of register

    wire	 slv_reg_rden;
    wire	 slv_reg_wren;
    reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
    integer	 byte_index;
    reg	 aw_en;

    // I/O Connections assignments

    assign S_AXI_AWREADY	= axi_awready;
    assign S_AXI_WREADY	= axi_wready;
    assign S_AXI_BRESP	= axi_bresp;
    assign S_AXI_BVALID	= axi_bvalid;
    assign S_AXI_ARREADY	= axi_arready;
    assign S_AXI_RDATA	= axi_rdata;
    assign S_AXI_RRESP	= axi_rresp;
    assign S_AXI_RVALID	= axi_rvalid;
    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.


    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_awready <= 1'b0;
            aw_en <= 1'b1;
        end 
        else
        begin    
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
            begin
                // slave is ready to accept write address when 
                // there is a valid write address and write data
                // on the write address and data bus. This design 
                // expects no outstanding transactions. 
                axi_awready <= 1'b1;
                aw_en <= 1'b0;
            end
            else if (S_AXI_BREADY && axi_bvalid)
                begin
                    aw_en <= 1'b1;
                    axi_awready <= 1'b0;
                end
            else           
            begin
                axi_awready <= 1'b0;
            end
        end 
    end       

    // Implement axi_awaddr latching
    // This process is used to latch the address when both 
    // S_AXI_AWVALID and S_AXI_WVALID are valid. 

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_awaddr <= 0;
        end 
        else
        begin    
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
            begin
                // Write Address latching 
                axi_awaddr <= S_AXI_AWADDR;
            end
        end 
    end       

    // Implement axi_wready generation
    // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
    // de-asserted when reset is low. 

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_wready <= 1'b0;
        end 
        else
        begin    
            if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
            begin
                // slave is ready to accept write data when 
                // there is a valid write address and write data
                // on the write address and data bus. This design 
                // expects no outstanding transactions. 
                axi_wready <= 1'b1;
            end
            else
            begin
                axi_wready <= 1'b0;
            end
        end 
    end       

    // Implement memory mapped register select and write logic generation
    // The write data is accepted and written to memory mapped registers when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    // select byte enables of slave registers while writing.
    // These registers are cleared when reset (active low) is applied.
    // Slave register write enable is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data.
    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            slv_reg0 <= 0;
            slv_reg1 <= 0;
            slv_reg2 <= 0;
            slv_reg3 <= 0;
            slv_reg4 <= 0;
            slv_reg5 <= 0;
            slv_reg6 <= 0;
            slv_reg7 <= 0;
            slv_reg8 <= 0;
            slv_reg9 <= 0;
            slv_reg10 <= 0;
            slv_reg11 <= 0;
            slv_reg12 <= 0;
            slv_reg13 <= 0;
            slv_reg14 <= 0;
            slv_reg15 <= 0;
            slv_reg16 <= 0;
            slv_reg17 <= 0;
            slv_reg18 <= 0;
            slv_reg19 <= 0;
            slv_reg20 <= 0;
            slv_reg21 <= 0;
            slv_reg22 <= 0;
            slv_reg23 <= 0;
            slv_reg24 <= 0;
            slv_reg25 <= 0;
            slv_reg26 <= 0;
            slv_reg27 <= 0;
            slv_reg28 <= 0;
            slv_reg29 <= 0;
            slv_reg30 <= 0;
            //slv_reg31 <= 0; slave register 31 is read only
        end 
        else begin
        if (slv_reg_wren)
            begin
            case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
                5'd0:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd1:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd2:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd3:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                
                5'd4:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd5:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd6:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd7:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd8:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd9:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd10:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd11:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                
                5'd12:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd13:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd14:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd15:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd16:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd17:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd18:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd19:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                
                5'd20:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg20[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd21:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg21[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd22:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg22[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd23:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg23[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd24:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg24[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd25:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg25[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd26:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg26[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd27:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg27[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                
                5'd28:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 0
                    slv_reg28[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd29:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 1
                    slv_reg29[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  

                5'd30:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 2
                    slv_reg30[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end  
                /*
                5'd31:
                for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                    if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                    // Respective byte enables are asserted as per write strobes 
                    // Slave register 3
                    slv_reg31[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end 
                */
                //slave register 31 is read only
            endcase
            end
        end
    end    

    // Implement write response logic generation
    // The write response and response valid signals are asserted by the slave 
    // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
    // This marks the acceptance of address and indicates the status of 
    // write transaction.

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end 
        else
        begin    
            if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
            begin
                // indicates a valid write response is available
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0; // 'OKAY' response 
            end                   // work error responses in future
            else
            begin
                if (S_AXI_BREADY && axi_bvalid) 
                //check if bready is asserted while bvalid is high) 
                //(there is a possibility that bready is always asserted high)   
                begin
                    axi_bvalid <= 1'b0; 
                end  
            end
        end
    end   

    // Implement axi_arready generation
    // axi_arready is asserted for one S_AXI_ACLK clock cycle when
    // S_AXI_ARVALID is asserted. axi_awready is 
    // de-asserted when reset (active low) is asserted. 
    // The read address is also latched when S_AXI_ARVALID is 
    // asserted. axi_araddr is reset to zero on reset assertion.

    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_arready <= 1'b0;
            axi_araddr  <= 32'b0;
        end 
        else
        begin    
            if (~axi_arready && S_AXI_ARVALID)
            begin
                // indicates that the slave has acceped the valid read address
                axi_arready <= 1'b1;
                // Read address latching
                axi_araddr  <= S_AXI_ARADDR;
            end
            else
            begin
                axi_arready <= 1'b0;
            end
        end 
    end       

    // Implement axi_arvalid generation
    // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
    // S_AXI_ARVALID and axi_arready are asserted. The slave registers 
    // data are available on the axi_rdata bus at this instance. The 
    // assertion of axi_rvalid marks the validity of read data on the 
    // bus and axi_rresp indicates the status of read transaction.axi_rvalid 
    // is deasserted on reset (active low). axi_rresp and axi_rdata are 
    // cleared to zero on reset (active low).  
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_rvalid <= 0;
            axi_rresp  <= 0;
        end 
        else
        begin    
            if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
            begin
                // Valid read data is available at the read data bus
                axi_rvalid <= 1'b1;
                axi_rresp  <= 2'b0; // 'OKAY' response
            end   
            else if (axi_rvalid && S_AXI_RREADY)
            begin
                // Read data is accepted by the master
                axi_rvalid <= 1'b0;
            end                
        end
    end    

    // Implement memory mapped register select and read logic generation
    // Slave register read enable is asserted when valid address is available
    // and the slave is ready to accept the read address.
    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
    always @(*)
    begin
            // Address decoding for reading registers
            case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
            5'd0   : reg_data_out <= slv_reg0;
            5'd1   : reg_data_out <= slv_reg1;
            5'd2   : reg_data_out <= slv_reg2;
            5'd3   : reg_data_out <= slv_reg3;
            5'd4   : reg_data_out <= slv_reg4;
            5'd5   : reg_data_out <= slv_reg5;
            5'd6   : reg_data_out <= slv_reg6;
            5'd7   : reg_data_out <= slv_reg7;
            5'd8   : reg_data_out <= slv_reg8;
            5'd9   : reg_data_out <= slv_reg9;
            5'd10   : reg_data_out <= slv_reg10;
            5'd11   : reg_data_out <= slv_reg11;
            5'd12   : reg_data_out <= slv_reg12;
            5'd13   : reg_data_out <= slv_reg13;
            5'd14   : reg_data_out <= slv_reg14;
            5'd15   : reg_data_out <= slv_reg15;
            5'd16   : reg_data_out <= slv_reg16;
            5'd17   : reg_data_out <= slv_reg17;
            5'd18   : reg_data_out <= slv_reg18;
            5'd19   : reg_data_out <= slv_reg19;
            5'd20   : reg_data_out <= slv_reg20;
            5'd21   : reg_data_out <= slv_reg21;
            5'd22   : reg_data_out <= slv_reg22;
            5'd23   : reg_data_out <= slv_reg23;
            5'd24   : reg_data_out <= slv_reg24;
            5'd25   : reg_data_out <= slv_reg25;
            5'd26   : reg_data_out <= slv_reg26;
            5'd27   : reg_data_out <= slv_reg27;
            5'd28   : reg_data_out <= slv_reg28;
            5'd29   : reg_data_out <= slv_reg29;
            5'd30   : reg_data_out <= slv_reg30;
            5'd31   : reg_data_out <= slv_reg31;
            default : reg_data_out <= 0;
            endcase
    end

    // Output register or memory read data
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            axi_rdata  <= 0;
        end 
        else
        begin    
            // When there is a valid read address (S_AXI_ARVALID) with 
            // acceptance of read address by the slave (axi_arready), 
            // output the read dada 
            if (slv_reg_rden)
            begin
                axi_rdata <= reg_data_out;     // register read data
            end   
        end
    end    


endmodule