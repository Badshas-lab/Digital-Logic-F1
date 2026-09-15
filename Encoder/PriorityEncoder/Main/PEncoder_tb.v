`timescale 1ns/1ps
module Pencoder_tb;
reg D3, D2, D1, D0;
wire Y1, Y0, V;

PEncode uut(
    .D3(D3),
    .D2(D2),
    .D1(D1),
    .D0(D0),
    .Y1(Y1),
    .Y0(Y0),
    .V(V)
);

initial begin

$dumpfile("PEncoder.vcd");
$dumpvars(0, Pencoder_tb);

    D3 = 0; D2 = 0; D1 = 0; D0 = 0;
    #10;
    D3 = 0; D2 = 0; D1 = 0; D0 = 1;
    #10;
    D3 = 0; D2 = 0; D1 = 1; D0 = 0;
    #10;
    D3 = 0; D2 = 0; D1 = 1; D0 = 1;
    #10;
    D3 = 0; D2 = 1; D1 = 0; D0 = 0;
    #10;
    D3 = 0; D2 = 1; D1 = 1; D0 = 0;
    #10;
    D3 = 0; D2 = 1; D1 = 1; D0 = 1;
    #10;
    D3 = 1; D2 = 0; D1 = 0; D0 = 0;
    #10;
    D3 = 1; D2 = 1; D1 = 1; D0 = 1;
    #10;

    $finish;
end
endmodule