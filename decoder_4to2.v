module decoder;
    input  A;
    input [0:1] select;
    output reg [3:0] out;   
    assign out[select]=A;
endmodule 