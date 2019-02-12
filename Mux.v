`timescale 1ns / 1ps

module Mux(a,b,sel,out);

input a,b,sel;
output out;

not (notsel,sel);
and (x,notsel,a);
and (y,b,sel);
or (out,x,y);

endmodule
