`timescale 1ns / 1ps

module Mux16(a,b,sel,out);

input [15:0] a;
input [15:0] b;
input sel;
output [15:0] out;

reg [15:0] out;

always @ (a,b,sel)
	begin
		case(sel)
		
		1'b0 : out = a;
		1'b1 : out = b;
		endcase
		
	end

endmodule
