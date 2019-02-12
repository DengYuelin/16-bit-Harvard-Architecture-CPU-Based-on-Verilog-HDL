`timescale 1ns / 1ps

module Computer(reset,CLK);

input CLK,reset;

wire [15:0] outM0,outins,outM;
wire [14:0] addressM,pc;
wire writeM;

CPU cpu1(.inM(outM0),.instruction(outins),.reset(reset),.writeM(writeM),
		.outM(outM),.addressM(addressM),.pc(pc),.CLK(CLK));
RAM ram1(.in(outM),.load(writeM),.address(addressM),.out(outM0),.CLK(CLK));
ROM rom1(.address(pc),.out(outins));

endmodule
