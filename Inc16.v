`timescale 1ns / 1ps

module Inc16(in,out);

input [15:0] in;
output [15:0] out;

supply0 [14:0] false;
supply1 true;
wire [15:0] b;

assign b = {false,true};


Add16 add16(.a(in),.b(b),.out(out));

endmodule
