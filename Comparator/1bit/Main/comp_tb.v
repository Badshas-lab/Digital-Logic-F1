module oneBC_tb;
reg A;
reg B;
wire G;
wire E;
wire L;

oneBC uut(
    .A(A),
    .B(B),
    .G(G),
    .E(E),
    .L(L)
);

initial begin
    $dumpfile("comp.vcd");
    $dumpvars(0, oneBC_tb);
    $monitor("A=%b B=%b | G=%b E=%b L=%b", A, B, G, E, L);

    A = 0; B = 0; #10;
    if(G !== 0 || E !== 1 || L !== 0)
    $display("FAIL: A=0 B=0");
    else
    $display("PASS: A=0 B=0");

    A = 0; B = 1; #10;
    if(G !== 0 || E !== 0 || L !== 1)
    $display("FAIL: A=0 B=1");
    else
    $display("PASS: A=0 B=1");

    A = 1; B = 0; #10;
    if(G !== 1 || E !== 0 || L !== 0)
    $display("FAIL: A=1 B=0");
    else
    $display("PASS: A=1 B=0");

    A = 1; B = 1; #10;
    if(G !== 0 || E !== 1 || L !== 0)
    $display("FAIL: A=1 B=1");
    else
    $display("PASS: A=1 B=1");

    $finish;

end

endmodule