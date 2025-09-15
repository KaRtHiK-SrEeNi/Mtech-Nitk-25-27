module fulladder(a,b,cin,sum,cout);
    input a,b,cin;
    output cout,sum;
    sum= a^b^cin;
    cout=(a&b)|(b&cin)|(cin&a);
endmodule

module ripplecarryadder(A,B,Cin,Sum,Cout);
    input [3:0] A;
    input [3:0] B;
    input Cin;
    output [3:0] Sum;
    output Cout;
    wire [2:0] Carry;
    fulladder(A[0],B[0],Cin,sum[0],Carry[0]); 
    fulladder(A[1],B[1],Carry[0],sum[1],Carry[1]);
    fulladder(A[2],B[2],Carry[1],sum[2],Carry[2]);
    fulladder(A[3],B[3],Carry[2],sum[1],Cout);
endmodule

       