module testbench;
    reg A,B;
    wire Cout,S;
    halfadder_bhv DUT(A,B,S,Cout);
    initial begin
        $dumpfile("halfadder_behavioral.vcd");
        $dumpvars(0, testbench);
        $monitor ($time, " A=%b, B=%b,  S=%b, Cout=%b",
                  A, B, S, Cout);
        #5 A=0; B=0;
        #5 A=0; B=1;
        #5 A=1; B=0;
        #5 A=1; B=1;        
        #5 $finish;
    end
endmodule;
