`timescale 1ns/1ps
module FIM_tb;
reg E;
reg S;
reg I0;
reg I1;
wire Y;

FIM uut(
    .E(E),
    .S(S),
    .I0(I0),
    .I1(I1),
    .Y(Y)
);

initial begin
    $dumpfile("FIM.vcd");
    $dumpvars(0, FIM_tb);

    E=0;S=0;I0=0;I1=0; #10;
    E=0;S=0;I0=0;I1=1; #10;
    E=0;S=0;I0=1;I1=0; #10;
    E=0;S=0;I0=1;I1=1; #10;

    E=0;S=1;I0=0;I1=0; #10;
    E=0;S=1;I0=0;I1=1; #10;
    E=0;S=1;I0=1;I1=0; #10;
    E=0;S=1;I0=1;I1=1; #10;

    E=1;S=0;I0=0;I1=0; #10;
    E=1;S=0;I0=0;I1=1; #10;
    E=1;S=0;I0=1;I1=0; #10;
    E=1;S=0;I0=1;I1=1; #10;

    E=1;S=1;I0=0;I1=0; #10;
    E=1;S=1;I0=0;I1=1; #10;
    E=1;S=1;I0=1;I1=0; #10;
    E=1;S=1;I0=1;I1=1; #10;

$finish;
end

endmodule