module smpl_circuit(A,B,C,x,y);
input A,B,C;
output x,y;
wire e;
and g1(e,A,B);
not g2(y,C);
or g3(x,e,y);
endmodule
