`timescale 1ns/1ps
module CLA4_tb;
reg [3:0] A, B;
reg Cin;
reg [4:0] expected;
wire [3:0] Sum;
wire [4:0] result;
wire G_Gruop;
wire P_Gruop;
wire Cout;

assign result = {Cout, Sum};

integer P_C = 0;
integer F_C = 0;

CLA4 cla_inst (
    .A (A),
    .B (B),
    .Cin (Cin),
    .Sum (Sum),
    .Cout (Cout),
    .G_Gruop (G_Gruop),
    .P_Gruop (P_Gruop)
    );

initial begin
    //Test 1
    A = 4'b0000; B = 4'b0000; Cin = 1'b0;
    expected = {1'b0, A} + {1'b0, B} + Cin;
    #10;
      if(result === expected)begin
        P_C = P_C + 1;
        $display("Test 1: PASSED");
    end else begin
        F_C = F_C + 1;
        $display("Test 1: FAILED");
    end

    $display("Time      = %0t ns", $time);
    $display("A         = %0d (0x%0h, %04b", A , A, A);
    $display("B         = %0d (0x%0h, %04b", B, B, B);
    $display("Cin       = %b", Cin);
    $display("Expected  = %b (0x%0h, %05b)", expected,
                          expected, expected);
    $display("Result    = %b (0x%0h, %05b)", result,
                          result, result);

    //Test 2
    A = 4'b1001; B = 4'b1110; Cin = 1'b0;
    expected = {1'b0, A} + {1'b0, B} + Cin;
    #10;
    if(result === expected)begin
        P_C = P_C + 1;
        $display("Test 2: PASSED");
    end else begin
        F_C = F_C + 1;
        $display("Test 2: FAILED");
    end

    $display("Time       = %0t ns", $time);
    $display("A          = %0d (0x%0h, %04b)", A, A, A);
    $display("B          = %0d (0x%0h, %04b)", B, B, B);
    $display("Cin        = %b", Cin);
    $display("Expected   = %b (0x%0h, %05b)", expected,
                          expected, expected);
    $display("Result     = %b (0x%0h, %05b)", result,
                          result, result);

    //Test 3
    A = 4'b0011; B = 4'b0101; Cin = 1'b0;
    expected = {1'b0, A} + {1'b0, B} + Cin;
    #10;
    if(result === expected)begin
        P_C = P_C + 1;
        $display("Test 3: PASSED");
    end else begin
        F_C = F_C + 1;
        $display("Test 3: FAILED");
    end

    $display("Time       = %0t ns", $time);
    $display("A          = %0d (0x%0h, %04b)", A, A, A);
    $display("B          = %0d (0x%0h, %04b)", B, B, B);
    $display("Cin        = %b", Cin);
    $display("Expected   = %b (0x%0h, %05b)", expected,
                          expected, expected);
    $display("Result     = %b (0x%0h, %05b)", result,
                          result, result);

    //Test 4
    A = 4'b1111; B = 4'b1111; Cin = 1'b1;
    expected = {1'b0, A} + {1'b0, B} + Cin;
    #10;
    if(result === expected)begin
        P_C = P_C + 1;
        $display("Test 4: PASSED");
    end else begin
        F_C = F_C + 1;
        $display("Test 4: FAILED");
    end

    $display("-----------------------------------");
    $display("         Total Test Summary        ");
    $display("-----------------------------------");
    $display("Total Test Passed : %0d", P_C       );
    $display("Total Test Failed : %0d", F_C       );
    $display("Total Test Tests  : %0d ", P_C + F_C);
    $display("-----------------------------------");

    if(F_C == 0)begin
        $display("All tests successfully passed!");
    end
    else if(P_C == 0)begin
        $display("All tests failed. Please check the output for details.");
    end
    else if(P_C == 0 && F_C == 0)begin
        $display("No tests were executed. Please check the testbench for issues.");
    end
    else if(P_C > 0 && F_C > 0)begin
        $display("Some tests passed successfully, while some tests failed. Please check the output for details.");
    end
    else if(P_C == P_C && F_C == F_C)begin
        $display("Some Test Passed = %0d, Some Test Failed = %0d", P_C, F_C);
    end

    $finish;
end

endmodule