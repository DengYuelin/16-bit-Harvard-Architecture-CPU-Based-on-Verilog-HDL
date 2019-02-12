`timescale 1ns / 1ps

module Half_Adder(a,b,sum,carry);

input a,b;
output sum,carry;

	xor (sum,a,b);
	and (carry,a,b);

endmodule
