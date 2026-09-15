`timescale 1ns/1ps
module Decoder_tb;
reg A;
reg B;

wire D0;
wire D1;
wire D2;
wire D3;

Decoder uut(
    .A(A),
    .B(B),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3)
);

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, Decoder_tb);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end
endmodule