module gates_tb;
reg A;
reg B;
wire And;
wire Or;
wire Not;
wire Xnor;
wire Xor;
wire Nand;
wire Nor;

gates uut(
    .A(A),
    .B(B),
    .And(And),
    .Or(Or),
    .Not(Not),
    .Xnor(Xnor),
    .Xor(Xor),
    .Nand(Nand),
    .Nor(Nor)
    
);

initial begin
    $dumpfile("gates.vcd");
    $dumpvars(0, gates_tb);
    $monitor("A=%b B=%b | And=%b Or=%b Not=%b Xnor=%b Xor=%b Nand=%b Nor=%b",
    A, B, And, Or, Nor , Not, Xnor, Xor, Nand);
    
    A = 0; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 0;
    #10;
    A = 1; B = 1;
    #10;

    $finish;
end

endmodule