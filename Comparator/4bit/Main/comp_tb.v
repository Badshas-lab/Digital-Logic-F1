`timescale 1ns/1ps

module FBC_tb;
reg [3:0] A;
reg [3:0] B;
wire G;
wire E;
wire L;

FBC uut(
    .A(A),
    .B(B),
    .G(G),
    .E(E),
    .L(L)
);

integer i;
integer j;

initial begin
    $dumpfile("Comp.vcd");
    $dumpvars(0, FBC_tb);
    $monitor("A=%b B=%b | G=%b E=%b L=%b", A, B, G, E, L);

  A = 4'b0000;
  B = 4'b0000;
  #10;

  A = 4'b0000;
  B = 4'b0001;
  #10;

  A = 4'b0010;
  B = 4'b0000;
  #10;

  A = 4'b1111;
  B = 4'b1111;
  #10;

end

endmodule