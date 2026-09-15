module Haf_subtractor(
    input A,
    input B,
    output Diffrense,
    output Borrow
);

assign Diffrense = A ^ B;
assign Borrow = ~A & B;

endmodule