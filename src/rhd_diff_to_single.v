module rhd_diff_to_single(
    input wire MISO1_I_P,
    input wire MISO1_I_N,
    output wire MISO1_I,
    input wire MISO2_I_P,
    input wire MISO2_I_N,
    output wire MISO2_I,

    input wire MISO1_J_P,
    input wire MISO1_J_N,
    output wire MISO1_J,
    input wire MISO2_J_P,
    input wire MISO2_J_N,
    output wire MISO2_J,

    input wire MISO1_K_P,
    input wire MISO1_K_N,
    output wire MISO1_K,
    input wire MISO2_K_P,
    input wire MISO2_K_N,
    output wire MISO2_K,
    
    input wire MISO1_L_P,
    input wire MISO1_L_N,
    output wire MISO1_L,
    input wire MISO2_L_P,
    input wire MISO2_L_N,
    output wire MISO2_L,

    input wire MISO1_M_P,
    input wire MISO1_M_N,
    output wire MISO1_M,
    input wire MISO2_M_P,
    input wire MISO2_M_N,
    output wire MISO2_M,

    input wire MISO1_N_P,
    input wire MISO1_N_N,
    output wire MISO1_N,
    input wire MISO2_N_P,
    input wire MISO2_N_N,
    output wire MISO2_N,

    input wire MISO1_O_P,
    input wire MISO1_O_N,
    output wire MISO1_O,
    input wire MISO2_O_P,
    input wire MISO2_O_N,
    output wire MISO2_O,

    input wire MISO1_P_P,
    input wire MISO1_P_N,
    output wire MISO1_P,
    input wire MISO2_P_P,
    input wire MISO2_P_N,
    output wire MISO2_P
);

    IBUFDS BUF_MISO1_I(
        .O(MISO1_I),
        .I(MISO1_I_P),
        .IB(MISO1_I_N)
    );
    IBUFDS BUF_MISO2_I(
        .O(MISO2_I),
        .I(MISO2_I_P),
        .IB(MISO2_I_N)
    );

    IBUFDS BUF_MISO1_J(
        .O(MISO1_J),
        .I(MISO1_J_P),
        .IB(MISO1_J_N)
    );
    IBUFDS BUF_MISO2_J(
        .O(MISO2_J),
        .I(MISO2_J_P),
        .IB(MISO2_J_N)
    );

    IBUFDS BUF_MISO1_K(
        .O(MISO1_K),
        .I(MISO1_K_P),
        .IB(MISO1_K_N)
    );
    IBUFDS BUF_MISO2_K(
        .O(MISO2_K),
        .I(MISO2_K_P),
        .IB(MISO2_K_N)
    );

    IBUFDS BUF_MISO1_L(
        .O(MISO1_L),
        .I(MISO1_L_P),
        .IB(MISO1_L_N)
    );
    IBUFDS BUF_MISO2_L(
        .O(MISO2_L),
        .I(MISO2_L_P),
        .IB(MISO2_L_N)
    );

    IBUFDS BUF_MISO1_M(
        .O(MISO1_M),
        .I(MISO1_M_P),
        .IB(MISO1_M_N)
    );
    IBUFDS BUF_MISO2_M(
        .O(MISO2_M),
        .I(MISO2_M_P),
        .IB(MISO2_M_N)
    );

    IBUFDS BUF_MISO1_N(
        .O(MISO1_N),
        .I(MISO1_N_P),
        .IB(MISO1_N_N)
    );
    IBUFDS BUF_MISO2_N(
        .O(MISO2_N),
        .I(MISO2_N_P),
        .IB(MISO2_N_N)
    );

    IBUFDS BUF_MISO1_O(
        .O(MISO1_O),
        .I(MISO1_O_P),
        .IB(MISO1_O_N)
    );
    IBUFDS BUF_MISO2_O(
        .O(MISO2_O),
        .I(MISO2_O_P),
        .IB(MISO2_O_N)
    );

    IBUFDS BUF_MISO1_P(
        .O(MISO1_P),
        .I(MISO1_P_P),
        .IB(MISO1_P_N)
    );
    IBUFDS BUF_MISO2_P(
        .O(MISO2_P),
        .I(MISO2_P_P),
        .IB(MISO2_P_N)
    );

endmodule