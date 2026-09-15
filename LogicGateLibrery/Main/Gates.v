module gates(
    input A,
    input B,
    output And,
    output Or,
    output Not,
    output Xnor,
    output Xor,
    output Nand,
    output Nor
);

assign And = A & B;
assign Or = A | B;
assign Not = ~A;
assign Nand = ~(A & B);
assign Nor = ~(A | B);
assign Xnor = ~(A ^ B);
assign Xor = (A ^ B);

endmodule