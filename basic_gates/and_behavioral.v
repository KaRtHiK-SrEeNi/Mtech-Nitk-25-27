module and_bhv(Y,A,B);
    input A,B;
    output reg Y;
    always @(*)
    begin
        Y=A&B;
    end    
endmodule;
