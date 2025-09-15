module halfadder_strl(A,B,Cout,Sum);
    input A,B;
    output Cout,Sum;
    xor(Sum,A,B);
    and(Cout,A,B);
endmodule     