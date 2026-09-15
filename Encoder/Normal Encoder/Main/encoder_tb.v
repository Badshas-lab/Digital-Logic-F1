module Encoder_tb;
reg D0;
reg D1;
reg D2;
reg D3;
wire A;
wire B;

EncoderTF uut(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .A(A),
    .B(B)
);

initial begin
    $dumpfile("Encoder.vcd");
    $dumpvars(0, Encoder_tb);

    D3 = 0; D2 = 0; D1 = 0; D0 = 1; #10;
    D3 = 0; D2 = 0; D1 = 1; D0 = 0; #10;
    D3 = 0; D2 = 1; D1 = 0; D0 = 0; #10;
    D3 = 1; D2 = 0; D1 = 0; D0 = 0; #10;

    $finish;
end

endmodule