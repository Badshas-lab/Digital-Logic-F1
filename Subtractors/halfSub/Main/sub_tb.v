module Half_subtract_tb;
reg A;
reg B;
wire Diffrense;
wire Borrow;

Haf_subtractor uut(
    .A (A),
    .B (B),
    .Diffrense (Diffrense),
    .Borrow (Borrow)
);

initial begin
    $dumpfile("HS.vcd");
    $dumpvars(0, Half_subtract_tb);

    A=0;B=0;#10;
    A=0;B=1;#10;
    A=1;B=0;#10;
    A=1;B=1;#10;

    $finish;
end

endmodule

//Verification successs