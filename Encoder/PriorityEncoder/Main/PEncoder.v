module PEncode(
    input D3,
    input D2,
    input D1,
    input D0,
    output reg Y1,
    output reg Y0,
    output reg V
);
always @(*) begin
    
//default values
Y1 = 0;
Y0 = 0;
V = 0;

if(D3)begin
Y1 = 1;
Y0 = 1;
V = 1;
end

else if(D2)begin
Y1 = 1;
Y0 = 0;
V = 1;
end

else if(D1)begin
Y1 = 0;
Y0 = 1;
V = 1;
end

else if(D0)begin
Y1 = 0;
Y0 = 0;
V = 1;
end

end

endmodule

