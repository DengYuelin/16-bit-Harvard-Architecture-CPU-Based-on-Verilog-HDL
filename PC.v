`timescale 1ns / 1ps

module PC(in,load,inc,reset,out,CLK);

input [15:0] in;
input load,inc,reset,CLK;
output [15:0] out;

wire [15:0] back,in1,in2,out1,out2;
supply0 [15:0] false;
supply1 [15:0] true16;
supply1 true;

Mux16 mux1(.a(back),.b(in),.sel(load),.out(in1));
Mux16 mux2(.a(in1),.b(false),.sel(reset),.out(in2));
Register register1(.in(in2),.load(true),.out(out1),.CLK(CLK));
And16 and1(.a(out1),.b(true16),.out(out));
Inc16 inc1(.in(out1),.out(out2));
Mux16 mux3(.a(out1),.b(out2),.sel(inc),.out(back));

endmodule
