module tb_circuit;
    reg A, B, C;
    wire F1, F2;

    circuit DUT (
        .A(A),
        .B(B),
        .C(C),
        .F1(F1),
        .F2(F2)
    );

    initial begin
        $dumpfile("problem_6.vcd");
        $dumpvars(0, tb_circuit);

        A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
        A=0; B=1; C=0; #10;
        A=0; B=1; C=1; #10;
        A=1; B=0; C=0; #10;
        A=1; B=0; C=1; #10;
        A=1; B=1; C=0; #10;
        A=1; B=1; C=1; #10;

        $finish;
    end
endmodule
