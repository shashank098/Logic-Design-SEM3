module D-flipflop (D, Clk, Q);
input D, Clk;
output Q;
reg Q;
always @(posedge Clk)
Q = D;
endmodule 
