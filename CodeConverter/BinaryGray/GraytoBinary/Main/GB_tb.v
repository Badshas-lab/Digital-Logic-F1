`timescale 1ns/1ps
module GraytoBinary_tb;
    reg [3:0] G;
    wire [3:0] B;

GraytoBinary uut(
    .G (G),
    .B (B)
);

initial begin
    $dumpfile("GB.vcd");
    $dumpvars(0, GraytoBinary_tb);
    
    $monitor("time=%0t | G=%b | B=%b",
     $time, G, B);

    G=4'b0000; #10;
    G=4'b0001; #10;
    G=4'b0011; #10;
    G=4'b0010; #10;
    G=4'b0110; #10;
    G=4'b0111; #10;
    G=4'b0101; #10;
    G=4'b0100; #10;

    $finish;

end

endmodule