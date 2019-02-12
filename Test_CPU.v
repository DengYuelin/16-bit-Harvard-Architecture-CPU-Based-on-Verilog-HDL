`timescale 1ns / 1ps
module Test_CPU;

	// Inputs
	reg [15:0] inM;
	reg [15:0] instruction;
	reg reset;
	reg CLK;
	// Outputs
	wire [15:0] outM;
	wire writeM;
	wire [14:0] addressM;
	wire [14:0] pc;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.inM(inM), 
		.instruction(instruction), 
		.reset(reset), 
		.outM(outM), 
		.writeM(writeM), 
		.addressM(addressM), 
		.pc(pc), 
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		inM = 16'b0000000000000000;
		instruction = 16'b0000000111110000;
		reset = 1;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
      //0
		inM = 16'b0000000000000000;
		instruction = 16'b0000000111110000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//1
		inM = 16'b0000000000000000;
		instruction = 16'b1110110000010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//2
		inM = 16'b0000000000000000;
		instruction = 16'b0000000000010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//3
		inM = 16'b0000000000000000;
		instruction = 16'b1110001100001000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//4
		inM = 16'b0000000000000000;
		instruction = 16'b0000011000011111;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//5
		inM = 16'b0000000000000000;
		instruction = 16'b1110110000010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//6
		inM = 16'b0000000000000000;
		instruction = 16'b0000000000010001;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//7
		inM = 16'b0000000000000000;
		instruction = 16'b1110001100001000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//8
		inM = 16'b0000000000000000;
		instruction = 16'b0000111001111001;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//9
		inM = 16'b0000000000000000;
		instruction = 16'b1110110000010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//10
		inM = 16'b0000000000000000;
		instruction = 16'b0000000000010010;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//11
		inM = 16'b0000000000000000;
		instruction = 16'b1110001100001000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//12
		inM = 16'b0000000111110000;
		instruction = 16'b0000000000010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//13
		inM = 16'b0000000111110000;
		instruction = 16'b1111110000010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//14
		inM = 16'b0000011000011111;
		instruction = 16'b0000000000010001;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//15
		inM = 16'b0000011000011111;
		instruction = 16'b1111000010010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//16
		inM = 16'b0000111001111001;
		instruction = 16'b0000000000010010;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//17
		inM = 16'b0000111001111001;
		instruction = 16'b1111010011010000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//18
		inM = 16'b0000000000000000;
		instruction = 16'b0000000000011000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//19
		inM = 16'b0000000000000000;
		instruction = 16'b1110001100000011;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//20
		inM = 16'b0000000000000000;
		instruction = 16'b0000000000000000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		//21
		inM = 16'b0000000000000000;
		instruction = 16'b1110001111011000;
		reset = 0;
		CLK = 0;
		#50;
		CLK = 1;
		#50;
		
		
		// Add stimulus here

	end
      
endmodule

