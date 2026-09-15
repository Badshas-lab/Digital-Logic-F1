module AS8B(
    input [7:0] A, B,
    input M,
    output [7:0] Sum,
    output Cout
);

wire [7:0] B_;

assign B_ = B ^ {8{M}};

assign {Cout, Sum} = A + B_ + M;

endmodule