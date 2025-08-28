module testbench;
    reg A, B;
    wire Sum, Cout;

    // instantiate DUT
    halfadder_strl DUT(.A(A), .B(B), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("halfadder_strl.vcd");
        $dumpvars(0,testbench);
        $monitor($time ," A=%b  B=%b  Sum=%b  Cout=%b", A, B, Sum, Cout);

        // applying inputs
        #5 A=0; B=0;
        #5 A=0; B=1;
        #5 A=1; B=0;
        #5 A=1; B=1;
        #5 $finish;
    end
endmodule
