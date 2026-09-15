`timescale 1ns/1ps
module AS_tb;
reg A;
reg B;
reg M;
wire Sum;
wire Cout;

AS uut(
    .A (A),
    .B (B),
    .M (M),
    .Sum (Sum),
    .Cout (Cout)
);

initial begin
    $display("A B M | Sum Cout");
    $display("----------------");

    A=0;
    B=0;
    M=0;
    #10;
    $display("%b %b %b | %b %b", A, B, M, Sum, Cout);

     A=1;
    B=0;
    M=1;
    #10;
    $display("%b %b %b | %b %b", A, B, M, Sum, Cout);

     A=0;
    B=1;
    M=1;
    #10;
    $display("%b %b %b | %b %b", A, B, M, Sum, Cout);

     A=1;
    B=1;
    M=0;
    #10;
    $display("%b %b %b | %b %b", A, B, M, Sum, Cout);

    $finish;
end

endmodule