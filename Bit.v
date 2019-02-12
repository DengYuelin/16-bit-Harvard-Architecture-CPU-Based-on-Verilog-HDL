`timescale 1ns / 1ps

module Bit(in,load,out,CLK);

input in,load,CLK;
output out;

wire out1,out2;
supply1 true;

Mux mux(.a(out1),.b(in),.sel(load),.out(out2));
DFF dff(.D(out2),.CLK(CLK),.Q(out1));
and (out,out1,true);

endmodule
