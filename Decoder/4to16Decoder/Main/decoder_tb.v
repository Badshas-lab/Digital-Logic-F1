module decoderFS_tb;
reg A;
reg B;
reg C; 
reg D;
wire D0;
wire D1;
wire D2;
wire D3;
wire D4;
wire D5;
wire D6;
wire D7;
wire D8;
wire D9;
wire D10;
wire D11;
wire D12;
wire D13;
wire D14;
wire D15;

decoderFS uut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .D4(D4),
    .D5(D5),
    .D6(D6),
    .D7(D7),
    .D8(D8),
    .D9(D9),
    .D10(D10),
    .D11(D11),
    .D12(D12),
    .D13(D13),
    .D14(D14),
    .D15(D15)
);

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, decoderFS_tb);

    A = 0; B = 0; C = 0; D = 0; #10;
    A = 0; B = 0; C = 0; D = 1; #10;
    A = 0; B = 0; C = 1; D = 0; #10;
    A = 0; B = 0; C = 1; D = 1; #10;
    A = 0; B = 1; C = 0; D = 0; #10;
    A = 0; B = 1; C = 0; D = 1; #10;
    A = 0; B = 1; C = 1; D = 0; #10;
    A = 0; B = 1; C = 1; D = 1; #10;
    A = 1; B = 0; C = 0; D = 0; #10;
    A = 1; B = 0; C = 0; D = 1; #10;
    A = 1; B = 0; C = 1; D = 0; #10;
    A = 1; B = 0; C = 1; D = 1; #10;
    A = 1; B = 1; C = 0; D = 0; #10;
    A = 1; B = 1; C = 0; D = 1; #10;
    A = 1; B = 1; C = 1; D = 0; #10;
    A = 1; B = 1; C = 1; D = 1; #10;

    $finish;
end

endmodule