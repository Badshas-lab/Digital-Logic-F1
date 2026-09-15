//EXP = ~S1&~S0&I0 + ~S1&S0&I1 + S1&~S0&I2 + S1&S0&I3
module FTOM(
    input [3:0] I,
    input [1:0] S,
    output Y
);

assign Y = (~S[1] & ~S[0] & I[0]) |
(~S[1] & S[0] & I[1]) |
(S[1] & ~S[0] & I[2]) |
(S[1] & S[0] & I[3]);

endmodule