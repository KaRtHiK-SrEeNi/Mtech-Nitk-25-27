module adder_4bit_dataflow_tb;
reg [3:0] A;
reg [3:0] B;
wire [3:0] Sum;
wire CarryOut;
adder_4bit_dataflow uut (
.A(A),
.B(B),
.Sum(Sum),
.CarryOut(CarryOut)
);
initial begin
    $dumpfile("problem_5.vcd");
    $dumpvars(0, adder_4bit_dataflow_tb);
$monitor("A = %b, B = %b, Sum = %b, CarryOut = %b", A, B, Sum, CarryOut);
// Test case 1
A = 4'b0001; B = 4'b0010; // 1 + 2 = 3
#10;
// Test case 2
A = 4'b0101; B = 4'b0111; // 5 + 7 = 12
#10;
// Test case 3
A = 4'b1111; B = 4'b0001; // 15 + 1 = 16
#10;
// Test case 4
A = 4'b1010; B = 4'b1101; // 10 + 13 = 23
#10;
// Test case 5
A = 4'b1111; B = 4'b1111; // 15 + 15 = 30
#10;
$finish;
end
endmodule