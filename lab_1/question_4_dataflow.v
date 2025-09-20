module decoder_dataflow(D, A, B, enable);
    output [0:3] D;
    input A, B;
    input enable;
    wire A_not, B_not, enable_not;
    assign A_not = ~A;
    assign B_not = ~B;
    assign enable_not = ~enable;
    assign D[0] =~ (A_not & B_not & enable_not);
    assign D[1] =~ (A_not & B & enable_not);
    assign D[2] = ~(A & B_not & enable_not);
    assign D[3] =~ (A & B & enable_not);
endmodule