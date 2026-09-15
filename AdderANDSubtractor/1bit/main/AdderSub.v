module AS(
    input A,
    input B,
    input M,
    output Sum,
    output Cout
);
wire B_modified;

assign B_modified = B ^ M;
assign {Sum, Cout} = A + B_modified + M;

endmodule