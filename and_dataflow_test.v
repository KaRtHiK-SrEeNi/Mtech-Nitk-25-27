module testbench;
    reg A, B;
    wire Y;

    // Instantiate the DUT (Device Under Test)
    AND_logic DUT (Y,A, B);

    initial begin
        $dumpfile("and_dataflow.vcd");
        $dumpvars(0, testbench);
        $monitor ($time, " A=%b, B=%b,  Y=%b",
                  A, B, Y);

        // Apply input stimulus
        #5 A=0; B=0; 
        #5 A=0; B=1; 
        #5 A=1; B=0;
        #5 A=1; B=1;
        #5 $finish;
    end
endmodule
