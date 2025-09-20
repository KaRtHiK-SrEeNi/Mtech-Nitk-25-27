module decoder(D, A, B, enable); 
output [0:3] D; 
input A, B; 
input enable; 
wire A_not, B_not, enable_not; 
not (A_not, A); 
not (B_not, B); 
not (enable_not, enable); 
nand (D[0],A_not, B_not, enable_not);  
nand (D[1],A_not, B, enable_not);
nand (D[2],A, B_not, enable_not);
nand (D[3],A, B, enable_not);
endmodule