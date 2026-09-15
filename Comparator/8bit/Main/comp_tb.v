module EBC_tb;
reg [7:0] A;
reg [7:0] B;
wire G;
wire E;
wire L;

EBC uut(
 .A(A),
 .B(B),
 .G(G),
 .E(E),
 .L(L)
);

initial begin
    $dumpfile("comp.vcd");
    $dumpvars(0, EBC_tb);

    A=8'b00000001;
    B=8'b00000000; #10; //A>B

    A=8'b00000000;
    B=8'b00000001; #10; //A<B

    A=8'b11111111;
    B=8'b00000000; #10; //A>B

    A=8'b11111111;
    B=8'b11111111; #10; //A=B

    A=8'b01101110;
    B=8'b10001000; #10; //A<B

    A=8'b00101000; 
    B=8'b01000000; #10; //A<B

end

endmodule