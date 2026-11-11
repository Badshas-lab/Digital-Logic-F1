`timescale 1ns/1ps
module LCU4bit(
    input wire [3:0] G,
    input wire [3:0] P,
    input wire Cin,
    output wire G_Gruop,
    output wire P_Gruop,
    output wire Cout
);

assign G_Gruop = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
assign P_Gruop = P[3] & P[2] & P[1] & P[0];
assign Cout = G_Gruop | (P_Gruop & Cin);


endmodule