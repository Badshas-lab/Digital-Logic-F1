module XS3toBCD_tb;
reg [3:0] E;
wire [3:0] B;

XS3toBCD uut(
    .E (E),
    .B (B)
);

initial begin
$dumpfile("XS3toBCD");
$dumpvars(0, XS3toBCD_tb);
$monitor("time=%0t | E=%b | B=%b",
$time, E, B);
E = 4'b0011; #10;
E = 4'b0100; #10;
E = 4'b0101; #10;
E = 4'b0110; #10;
E = 4'b0111; #10;
E = 4'b1000; #10;
E = 4'b1001; #10;
E = 4'b1010; #10;
E = 4'b1011; #10;
E = 4'b1100; #10;
$stop;
end
endmodule