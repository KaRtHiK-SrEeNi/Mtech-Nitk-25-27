module halfadder_df(A,B,S,Cout);
    input A,B;
    output S,Cout;
    assign S=A^B;
    assign Cout=A&B;
endmodule
