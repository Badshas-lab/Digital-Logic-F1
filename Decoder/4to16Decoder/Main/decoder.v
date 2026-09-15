module decoderFS(
    input A,
    input B,
    input C,
    input D,
    output D0,
    output D1,
    output D2,
    output D3,
    output D4,
    output D5,
    output D6,
    output D7,
    output D8,
    output D9,
    output D10,
    output D11,
    output D12,
    output D13,
    output D14,
    output D15
);

assign D0 = ~A & ~B & ~C & ~D;
assign D1 = ~A & ~B & ~C & D;
assign D2 = ~A & ~B & C & ~D;
assign D3 = ~A & ~B & C & D;
assign D4 = ~A & B & ~C & ~D;
assign D5 = ~A & B & ~C & D;
assign D6 = ~A & B & C & ~D;
assign D7 = ~A & A & C & D;
assign D8 = A & ~B & ~C & ~D;
assign D9 = A & ~B & ~C & D;
assign D10 = A & ~B & C & ~D;
assign D11 = A & ~B & C & D;
assign D12 = A & B & ~C & ~D;
assign D13 = A & B & ~C & D;
assign D14 = A & B & C & ~D;
assign D15 = A & B & C & D;

endmodule