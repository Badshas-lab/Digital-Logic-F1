module AS_tb;
reg [3:0] A, B;
reg M;
wire [3:0] Sum;
wire Cout;

AS uut(
    .A (A),
    .B (B),
    .M (M),
    .Sum (Sum),
    .Cout (Cout)
);

initial begin
$monitor("Time=%0t | M=%b | A=%b | B=%b | Sum=%b | Cout=%b", $time, M, A,B,Sum,Cout);

//Addition
M=0; A=4'b0000; B=4'b0000; #10;
M=0; A=4'b0011; B=4'b0010; #10;
M=0; A=4'b0101; B=4'b0011; #10;
M=0; A=4'b1011; B=4'b1101; #10;

//Subtraction
M=1; A=4'b0101; B=4'b0011; #10;
M=1; A=4'b1001; B=4'b0010; #10;
M=1; A=4'b0110; B=4'b0110; #10;
M=1; A=4'b0011; B=4'b0101; #10;

$finish;

end

endmodule