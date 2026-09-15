module FIM(
    input E,
    input S,
    input I0,
    input I1,
    output Y
);

//Y = E&~S&I0 + E&S&I1

assign Y = (E & ~S & I0) | (E & S & I1);

endmodule