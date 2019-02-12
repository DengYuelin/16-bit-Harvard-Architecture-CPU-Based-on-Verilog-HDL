`timescale 1ns / 1ps

module ROM(out, address);

input [14:0] address;
output [15:0] out;

reg [15:0] memory[32767:0];


// note: Decimal number in the bracket
initial begin
    memory[0] = 16'b0000000111110000;
	 memory[1] = 16'b1110110000010000;
	 memory[2] = 16'b0000000000010000;
	 memory[3] = 16'b1110001100001000;
	 memory[4] = 16'b0000011000011111;
	 memory[5] = 16'b1110110000010000;
	 memory[6] = 16'b0000000000010001;
	 memory[7] = 16'b1110001100001000;
	 memory[8] = 16'b0000111001111001;
	 memory[9] = 16'b1110110000010000;
	 memory[10] = 16'b0000000000010010;
	 memory[11] = 16'b1110001100001000;
	 memory[12] = 16'b0000000000010000;
	 memory[13] = 16'b1111110000010000;
	 memory[14] = 16'b0000000000010001;
	 memory[15] = 16'b1111000010010000;
	 memory[16] = 16'b0000000000010010;
	 memory[17] = 16'b1111010011010000;
	 memory[18] = 16'b0000000000011000;
	 memory[19] = 16'b1110001100000011;
	 memory[20] = 16'b0000000000000000;
	 memory[21] = 16'b1110001111011000;
	 memory[22] = 16'b0000000000010110;
	 memory[23] = 16'b1110101010000111;
	 memory[24] = 16'b0000000000000000;
	 memory[25] = 16'b1110001100011000;
	 memory[26] = 16'b0000000000010110;
	 memory[27] = 16'b1110101010000111;
end

assign out = memory[address];

endmodule
