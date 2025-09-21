module adder_4bit_dataflow ( 
input [3:0] A, // 4-bit input A 
input [3:0] B, // 4-bit input B 
output [3:0] Sum, // 4-bit Sum 
output CarryOut // Carry output 
); 
// Sum and Carry calculation using continuous assignment 
assign {CarryOut, Sum} = A + B; 
endmodule
