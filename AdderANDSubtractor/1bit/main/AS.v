module AS(
    input [3:0] A,
    input [3:0] B,
    input M,
    output [3:0] Sum,
    output Cout
);

wire [3:0] B_Changed ;

assign B_Changed = B ^ {4{M}};

assign {Cout, Sum} = A + B_Changed + M;

endmodule