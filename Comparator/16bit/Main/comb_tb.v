`timescale 1ns/1ps
module SBC_tb;
reg [15:0] A;
reg [15:0] B;
wire G;
wire E;
wire L;

SBC uut(
    .A (A),
    .B (B),
    .G (G),
    .E (E),
    .L (L)
);

initial begin
    $display("A B | G E L");
    $display("-----------");

     A=16'b0000000000000001;
    B=16'b0000000000000000; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

     A=16'b0000000000000000;
    B=16'b0000000000000100; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

     A=16'b0100100000000000;
    B=16'b0000000010000000; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

     A=16'b1000000000000000;
    B=16'b1100000000000000; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

     A=16'b1111111100000000;
    B=16'b1111111000000000; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

     A=16'b1000000000000000;
    B=16'b1000000000000000; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

     A=16'b0000000000000000;
    B=16'b0110001110000000; #10;
    $display("%b %b | %b %b %b ", A , B, G, E, L);

$finish;
end
endmodule