module Simple_Circuit_delay (A, B, C, D, E); 
output D,E; 
input A,B,C;  
wire w1; 
and #20 (w1, A, B);  
not #10 (E, C);  
or  #30 (D, w1, E);

endmodule