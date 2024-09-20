module diff_to_single (
	input wire in_p,
	input wire in_n,
	output wire out_single
);

IBUFDS BUF(
	.O(out),
	.I(in_p),
	.IB(in_n)
);

endmodule
