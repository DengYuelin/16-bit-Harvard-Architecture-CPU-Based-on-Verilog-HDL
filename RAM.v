`timescale 1ns / 1ps

module RAM(in, out, address, load, CLK);
input load;
input [15:0] in;
input [14:0] address;
inout [15:0] out;
input CLK;

reg [15:0] ram[32767:0];

assign out = ram[address];

always @(posedge CLK) 
begin 
	 if (load) ram[address] <= in;
end
endmodule
