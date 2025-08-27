`timescale 1ns/1ps

module and_behavioral_tb;
    reg A, B;
    wire Y;

    // Instantiate the module under test
    and_bhv uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $dumpfile("and_behavioral.vcd");
        $dumpvars(0, and_behavioral_tb);
        $display("A B | Y");
        $monitor("%b %b | %b", A, B, Y);
        // Test all input combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule
