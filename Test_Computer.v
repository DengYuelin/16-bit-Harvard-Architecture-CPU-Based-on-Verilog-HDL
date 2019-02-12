`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:19 02/12/2019
// Design Name:   Computer
// Module Name:   C:/Xilinx/Hack_CPU/Test_Computer.v
// Project Name:  Hack_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Computer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Computer;

	// Inputs
	reg reset;
	reg CLK;

	// Instantiate the Unit Under Test (UUT)
	Computer uut (
		.reset(reset), 
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		CLK = 0;
		#100;
		reset = 0;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		CLK = 1;
		#10;
		CLK = 0;
		#10;
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

