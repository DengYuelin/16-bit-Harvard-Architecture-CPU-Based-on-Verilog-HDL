`timescale 1ns / 1ps

module CPU(inM,instruction,reset,outM,writeM,addressM,pc,CLK);

input [15:0] inM,instruction;
input reset,CLK;
output [15:0] outM;
output writeM;
output [14:0] addressM,pc;

wire [15:0] outALU,outMux1,outA,outD,outAM,outPC;
wire loadA,zr,ng,notzr,notng,out1,j1,j2,j3,loadpc1,loadpc;
supply1 true;

and (I0,instruction[15],instruction[0]);
and (I1,instruction[15],instruction[1]);
and (I2,instruction[15],instruction[2]);
and (I3,instruction[15],instruction[3]);
and (I4,instruction[15],instruction[4]);
and (I5,instruction[15],instruction[5]);
and (I12,instruction[15],instruction[12]);

Mux16 mux1(.a(instruction),.b(outALU),.sel(instruction[15]),.out(outMux1));
xnor (loadA,instruction[15],I5);
Register Aregister(.in(outMux1),.load(loadA),.out(outA),.CLK(CLK));
assign addressM = outA[14:0];

Register Dregister(.in(outALU),.load(I4),.out(outD),.CLK(CLK));

Mux16 mux2(.a(outA),.b(inM),.sel(I12),.out(outAM));

ALU alu1(.x(outD),.y(outAM),.zx(instruction[11]),.nx(instruction[10]),.zy(instruction[9]),
	.ny(instruction[8]),.f(instruction[7]),.no(instruction[6]),
	.out(outALU),.zr(zr),.ng(ng));
assign outM = outALU;

assign writeM = I3;

not (notzr,zr);
not (notng,ng);
and (out1,notzr,notng);
and (j3,I0,out1);
and (j2,I1,zr);
and (j1,I2,ng);
assign loadpc1 = |{j1,j2,j3};
and (loadpc,loadpc1,instruction[15]);
PC pc1(.in(outA),.load(loadpc),.reset(reset),.inc(true),.out(outPC),.CLK(CLK));
assign pc = outPC[14:0];


endmodule
