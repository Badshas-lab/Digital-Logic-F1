module EncoderTF(
    input D0,
    input D1,
    input D2,
    input D3,
    output A,
    output B
);

assign A = D2 | D3;
assign B = D1 | D3;

endmodule