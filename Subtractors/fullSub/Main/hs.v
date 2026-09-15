module hs_sub(
    input A,
    input B,
    output D,
    output Borrow
);
assign D = A ^ B;
assign Borrow = ~A & B;

endmodule