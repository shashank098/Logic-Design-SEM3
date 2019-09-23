module DFF-non-blocking(D, Clock, Q1, Q2);
input D, Clock;
output Q1, Q2;
reg Q1, Q2;
always @(posedge Clock)
begin
// non blocking assignment - can be done in
parallel (or any order)
Q1 <= D;
Q2 <= Q1;
end
endmodule
