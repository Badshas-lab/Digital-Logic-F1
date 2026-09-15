`timescale 1ns/1ps
module OTFDM_tb;
reg D;
reg [1:0] S;
wire [3:0] Y;

OTFDM uut(
    .D(D),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("OTFDM.vcd");
    $dumpvars(0, OTFDM_tb);

    D=1;S=2'b00; #10;
    D=1;S=2'b01; #10;
    D=1;S=2'b10; #10;
    D=1;S=2'b11; #10;

    $finish;
end
endmodule