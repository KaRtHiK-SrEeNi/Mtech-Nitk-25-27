module decoder_tb;
wire [3:0]D;
reg enable,a,b;

 decoder_dataflow test(D, a, b, enable);

initial begin
    $dumpfile("problem_4.vcd");
    $dumpvars(0, decoder_tb);

#10 a=0;b=0;enable=1;
#10 a=1;b=0;enable=0;
#10 a=0;b=0;enable=0;
#10 a=1;b=1;enable=0;
#10 a=0;b=1;enable=0;

end
endmodule
