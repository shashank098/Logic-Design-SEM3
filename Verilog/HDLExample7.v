//---------------------------------
//Behavioral description of 2-to-1-line multiplexer
module mux2x1_bh(A,B,select,OUT);
input A,B,select;
output OUT;
reg OUT;
always @ (select or A or B)
if (select == 1) OUT = A;
else OUT = B;
endmodule
