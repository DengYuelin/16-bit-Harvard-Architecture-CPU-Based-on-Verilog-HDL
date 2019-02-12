`timescale 1ns / 1ps

module DFF(D,CLK,Q);

input D,CLK;
output Q;

reg Q;

always @(posedge CLK)
	Q = D;

endmodule
