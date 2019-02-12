`timescale 1ns / 1ps

module ALU(x,y,zx,nx,zy,ny,f,no,out,zr,ng);

input [15:0] x,y;
input zx,nx,zy,ny,f,no;
output [15:0] out;
output zr,ng;

supply0 [15:0] false;
wire [15:0] x1,nx1,x2;
wire [15:0] y1,ny1,y2;
wire [15:0] o1,o2,o3,no3,o4;
wire o5;

Mux16 mux1(.a(x),.b(false),.sel(zx),.out(x1));
Not16 not1(.out(nx1),.in(x1));
Mux16 mux2(.a(x1),.b(nx1),.sel(nx),.out(x2));

Mux16 mux3(.a(y),.b(false),.sel(zy),.out(y1));
Not16 not2(.out(ny1),.in(y1));
Mux16 mux4(.a(y1),.b(ny1),.sel(ny),.out(y2));

Add16 add(.a(x2),.b(y2),.out(o1));
And16 and1(.out(o2),.a(x2),.b(y2));

Mux16 mux5(.a(o2),.b(o1),.sel(f),.out(o3));

Not16 not3(.out(no3),.in(o3));
Mux16 mux6(.a(o3),.b(no3),.sel(no),.out(o4));
assign out = o4;

Or16Way or1(.in(o4),.out(o5));
Not16 not4(.out(zr),.in(o5));

assign ng = o4[15];

endmodule
