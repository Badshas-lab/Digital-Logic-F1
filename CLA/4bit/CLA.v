`timescale 1ns/1ps
module CLA4(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire Cin,
    output wire [3:0] Sum,
    output wire Cout,
    output wire G_Gruop,
    output wire P_Gruop
);

wire [3:0] G;
wire [3:0] P;
wire [4:0] C;

assign G = A & B;
assign P = A ^ B;

assign C[0] = Cin;
assign C[1] = G[0] | (P[0] & C[0]);
assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) |
       (P[3] & P[2] & P[1] & C[0]);

LCU4bit lcu_inst (
       .G (G),
       .P (P),
       .Cin (Cin),
       .G_Gruop (G_Gruop),
       .P_Gruop (P_Gruop),
       .Cout (Cout)
);

assign Sum = P^C[3:0];

endmodule