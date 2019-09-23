module vending_mealy(N, D, clk, reset, open);
// Mealy FSM for a vending machine
input N, D, clk, reset;
output open;
reg [1:0] pstate, nstate;
reg open;
parameter S0=2'b00, S5=2'b01, S10=2'b10, S15=2'b11;
// Next state and ouptut combinational logic
always @(N or D or pstate or reset)
if (reset)
begin nstate = S0; open = 0; end
else case (pstate)
S0: begin open = 0; if (N) nstate = S5;
else if (D) nstate = S10;
else nstate = S0; end
S5: begin open = 0; if (N)nstate = S10;
else if (D) nstate = S15;
else nstate = S5; end
S10: if (N | D) begin nstate = S15; open = 0; end
else begin nstate = S10; open = 0; end
S15: begin nstate = S0; open = 1; end
endcase
// FF logic, use nonblocking assignments "<="
always @(posedge clk)
pstate <= nstate;
endmodule
