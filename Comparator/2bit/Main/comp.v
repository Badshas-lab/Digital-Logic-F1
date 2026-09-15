module twoBC(
    input [1:0] A,
    input [1:0] B,
    output G,
    output E,
    output L
);

assign G = A[1] & ~B[1] | (A[1] ~^ B[1]) & (A[0] & ~B[0]);
assign E = (A[1] ~^ B[1]) & (A[0] ~^ B[0]);
assign L = ~A[1] & B[1] | (A[1] ~^ B[1]) & (~A[0] & B[0]);

endmodule