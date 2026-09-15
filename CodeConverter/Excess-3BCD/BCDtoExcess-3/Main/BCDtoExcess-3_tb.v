`timescale 1ns/1ps
module BCDtoXS3_tb;
    reg A;
    reg B;
    reg C;
    reg D;
    wire W;
    wire X;
    wire Y;
    wire Z;

BCDtoXS3 UnitUnderTest(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
);

initial begin
    $dumpfile("BCDtoXS3");
    $dumpvars(0, BCDtoXS3_tb);
    $monitor("time=%0t | A=%b B=%b C=%b D=%b | W=%b X=%b Y=%b Z=%b", $time, A,B,C,D,W,X,Y,Z);

    A = 0; B = 0; C = 0; D = 0; #10;
    A = 0; B = 0; C = 0; D = 1; #10;
    A = 0; B = 0; C = 1; D = 0; #10;
    A = 0; B = 0; C = 1; D = 1; #10;
    A = 0; B = 1; C = 0; D = 0; #10;
    A = 0; B = 1; C = 1; D = 0; #10;
    A = 0; B = 1; C = 1; D = 1; #10;
    A = 1; B = 0; C = 0; D = 0; #10;
    A = 1; B = 0; C = 0; D = 1; #10;
    

    $stop;
end
endmodule