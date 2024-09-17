module rhs_single_diff_converter(

    input wire MOSI_I,
    output wire MOSI_I_P,
    output wire MOSI_I_N,

    input wire MOSI_J,
    output wire MOSI_J_P,
    output wire MOSI_J_N,

    input wire MOSI_K,
    output wire MOSI_K_P,
    output wire MOSI_K_N,

    input wire MOSI_L,
    output wire MOSI_L_P,
    output wire MOSI_L_N,

    input wire MOSI_M,
    output wire MOSI_M_P,
    output wire MOSI_M_N,

    input wire MOSI_N,
    output wire MOSI_N_P,
    output wire MOSI_N_N,

    input wire MOSI_O,
    output wire MOSI_O_P,
    output wire MOSI_O_N,

    input wire MOSI_P,
    output wire MOSI_P_P,
    output wire MOSI_P_N,




    input wire MISO_I_P,
    input wire MISO_I_N,
    output wire MISO_I,

    input wire MISO_J_P,
    input wire MISO_J_N,
    output wire MISO_J,

    input wire MISO_K_P,
    input wire MISO_K_N,
    output wire MISO_K,
    
    input wire MISO_L_P,
    input wire MISO_L_N,
    output wire MISO_L,

    input wire MISO_M_P,
    input wire MISO_M_N,
    output wire MISO_M,

    input wire MISO_N_P,
    input wire MISO_N_N,
    output wire MISO_N,

    input wire MISO_O_P,
    input wire MISO_O_N,
    output wire MISO_O,

    input wire MISO_P_P,
    input wire MISO_P_N,
    output wire MISO_P
);

    IBUFDS BUF_MISO_I(
        .O(MISO_I),
        .I(MISO_I_P),
        .IB(MISO_I_N)
    );

    IBUFDS BUF_MISO_J(
        .O(MISO_J),
        .I(MISO_J_P),
        .IB(MISO_J_N)
    );

    IBUFDS BUF_MISO_K(
        .O(MISO_K),
        .I(MISO_K_P),
        .IB(MISO_K_N)
    );

    IBUFDS BUF_MISO_L(
        .O(MISO_L),
        .I(MISO_L_P),
        .IB(MISO_L_N)
    );

    IBUFDS BUF_MISO_M(
        .O(MISO_M),
        .I(MISO_M_P),
        .IB(MISO_M_N)
    );

    IBUFDS BUF_MISO_N(
        .O(MISO_N),
        .I(MISO_N_P),
        .IB(MISO_N_N)
    );

    IBUFDS BUF_MISO_O(
        .O(MISO_O),
        .I(MISO_O_P),
        .IB(MISO_O_N)
    );

    IBUFDS BUF_MISO_P(
        .O(MISO_P),
        .I(MISO_P_P),
        .IB(MISO_P_N)
    );







    OBUFDS BUF_MOSI_I(
        .I(MOSI_I),
        .O(MOSI_I_P),
        .OB(MOSI_I_N)
    );

    OBUFDS BUF_MOSI_J(
        .I(MOSI_J),
        .O(MOSI_J_P),
        .OB(MOSI_J_N)
    );

    OBUFDS BUF_MOSI_K(
        .I(MOSI_K),
        .O(MOSI_K_P),
        .OB(MOSI_K_N)
    );

    OBUFDS BUF_MOSI_L(
        .I(MOSI_L),
        .O(MOSI_L_P),
        .OB(MOSI_L_N)
    );

    OBUFDS BUF_MOSI_M(
        .I(MOSI_M),
        .O(MOSI_M_P),
        .OB(MOSI_M_N)
    );

    OBUFDS BUF_MOSI_N(
        .I(MOSI_N),
        .O(MOSI_N_P),
        .OB(MOSI_N_N)
    );

    OBUFDS BUF_MOSI_O(
        .I(MOSI_O),
        .O(MOSI_O_P),
        .OB(MOSI_O_N)
    );

    OBUFDS BUF_MOSI_P(
        .I(MOSI_P),
        .O(MOSI_P_P),
        .OB(MOSI_P_N)
    );

endmodule
