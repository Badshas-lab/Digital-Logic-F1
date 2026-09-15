module fs(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
);
wire D1;
wire Borrow1;
wire Borrow2;

hs_sub HS1(
    .A (A),
    .B (B),
    .D (D1),
    .Borrow (Borrow1)
);
hs_sub HS2(
    .A (D1),
    .B (Bin),
    .D (D),
    .Borrow (Borrow2)
);

assign Bout = Borrow1 | Borrow2;

endmodule