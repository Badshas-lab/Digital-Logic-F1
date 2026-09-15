`timescale 1ns/1ps
module FTOM_tb;
reg [3:0] I;
reg [1:0] S;
wire Y;

FTOM uut(
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("FTOM.vcd");
    $dumpvars(0, FTOM_tb);

    I=4'b0101; S=2'b00; #10;
    I=4'b0101; S=2'b01; #10;
    I=4'b0101; S=2'b10; #10;
    I=4'b0101; S=2'b11; #10;

    $finish;
end
endmodule