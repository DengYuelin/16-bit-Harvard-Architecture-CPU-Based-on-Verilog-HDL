`timescale 1ns / 1ps

module Or16Way(in,out);

input [15:0] in;
output out;

assign out = |in;
endmodule
