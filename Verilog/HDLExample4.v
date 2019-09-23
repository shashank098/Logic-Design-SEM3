//-----------------------------------
//User defined primitive(UDP)
primitive crctp (x,A,B,C);
output x;
input A,B,C;
//Truth table for x(A,B,C) = Minterms (0,2,4,6,7)
table
// A B C : x (Note that this is only a comment)
0 0 0 : 1;
0 0 1 : 0;
0 1 0 : 1;
0 1 1 : 0;
1 0 0 : 1;
1 0 1 : 0;
1 1 0 : 1;
1 1 1 : 1;
endtable
endprimitive
