module vending_moore(N, D, clk, reset, open);
// Moore FSM for a vending machine
input N, D, clk, reset;
output open;
reg [1:0] state;
parameter S0=2'b00, S5=2'b01, S10=2'b10,
S15=2'b11;
// Define the sequential block
always @(posedge reset or posedge clk)
if (reset) state <= S0;
else
case (state)
S0: if (N) state <= S5;
else if (D) state <= S10;
else state <= S0;
S5: if (N) state <= S10;
else if (D) state <= S15;
else state <= S5;
S10: if (N) state <= S15;
else if (D) state <= S15;
else state <= S10;
S15: state <= S15;
endcase
// Define output during S3
assign open = (state == S15);
endmodule
