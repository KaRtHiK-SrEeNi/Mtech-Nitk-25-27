module ALU(X,Y,Z,Sign,Carry,Zero,Parity,Overflow);
input [15:0] X,Y;
output [15:0] Z;
output Sign,Carry,Zero,Parity,Overflow;
assign {Carry,Z}=X+Y;
assign Sign=Z[15];
assign Zero=~|Z;
assign Parity=~^Z;
assign Overflow= (X[15]&Y[15]&~Z[15]) | (~X[15]&~Y[15]&Z[15]);
endmodule