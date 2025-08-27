module halfadder_bhv(A,B,S,Cout);
    input A,B;
    output reg S,Cout;
    always @(*)
    begin 
        S=A^B;
        Cout=A&B;
    end
endmodule
