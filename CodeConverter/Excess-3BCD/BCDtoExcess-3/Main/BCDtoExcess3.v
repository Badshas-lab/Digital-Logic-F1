module BCDtoXS3(
    input A,B,C,D,
    output W, X, Y, Z
);

assign W = A | (B & C) | (B & D);
assign X = (~B & C) | (~B & D) | (B & ~C & ~D);
assign Y = (~C & ~D) | (C & D);
assign Z = ~D;

endmodule