module Decoder_tb;
reg A;
reg B;
reg C;

wire D0;
wire D1;
wire D2;
wire D3;
wire D4;
wire D5;
wire D6;
wire D7;

DecoderTE uut(
    .A(A),
    .B(B),
    .C(C),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .D4(D4),
    .D5(D5),
    .D6(D6),
    .D7(D7)
);

initial begin
    $dumpfile("Decoder.vcd");
    $dumpvars(0, Decoder_tb);

    A = 0; B = 0; C = 0; #10;
    A = 0; B = 0; C = 1; #10;
    A = 0; B = 1; C = 0; #10;
    A = 0; B = 1; C = 1; #10;
    A = 1; B = 0; C = 0; #10;
    A = 1; B = 0; C = 1; #10;
    A = 1; B = 1; C = 0; #10;
    A = 1; B = 1; C = 1; #10;

    $finish;
end

endmodule