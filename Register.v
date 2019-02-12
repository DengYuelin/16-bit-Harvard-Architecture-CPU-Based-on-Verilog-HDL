`timescale 1ns / 1ps

module Register(in,load,out,CLK);

input [15:0] in;
input load,CLK;
output [15:0] out;

Bit bit0(.in(in[0]),.load(load),.out(out[0]),.CLK(CLK));
Bit bit1(.in(in[1]),.load(load),.out(out[1]),.CLK(CLK));
Bit bit2(.in(in[2]),.load(load),.out(out[2]),.CLK(CLK));
Bit bit3(.in(in[3]),.load(load),.out(out[3]),.CLK(CLK));
Bit bit4(.in(in[4]),.load(load),.out(out[4]),.CLK(CLK));
Bit bit5(.in(in[5]),.load(load),.out(out[5]),.CLK(CLK));
Bit bit6(.in(in[6]),.load(load),.out(out[6]),.CLK(CLK));
Bit bit7(.in(in[7]),.load(load),.out(out[7]),.CLK(CLK));
Bit bit8(.in(in[8]),.load(load),.out(out[8]),.CLK(CLK));
Bit bit9(.in(in[9]),.load(load),.out(out[9]),.CLK(CLK));
Bit bit10(.in(in[10]),.load(load),.out(out[10]),.CLK(CLK));
Bit bit11(.in(in[11]),.load(load),.out(out[11]),.CLK(CLK));
Bit bit12(.in(in[12]),.load(load),.out(out[12]),.CLK(CLK));
Bit bit13(.in(in[13]),.load(load),.out(out[13]),.CLK(CLK));
Bit bit14(.in(in[14]),.load(load),.out(out[14]),.CLK(CLK));
Bit bit15(.in(in[15]),.load(load),.out(out[15]),.CLK(CLK));

endmodule
