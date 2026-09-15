`timescale 1ns/1ps
module Full_Adder_tb;
reg  A;
reg B;
reg Cin;
wire Sum;
wire Cout;

Full_adder test(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("Full_adder.vcd");
    $dumpvars(0, Full_Adder_tb);

    $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
    $time, A, B, Cin,Sum,Cout);

    A=0; B=0; Cin=0; #10
    A=0; B=0; Cin=1; #10
    A=0; B=1; Cin=0; #10
    A=0; B=1; Cin=1; #10
    A=1; B=0; Cin=0; #10
    A=1; B=0; Cin=1; #10
    A=1; B=1; Cin=0; #10
    A=1; B=1; Cin=1; #10

    $finish;

end
endmodule