`timescale 1ns / 1ps

module Add16(a,b,out);

input [15:0] a,b;
output [15:0] out;

wire [15:0] c;

Half_Adder HA(.a(a[0]),.b(b[0]),.sum(out[0]),.carry(c[0]));
Full_Adder FA1(.a(a[1]),.b(b[1]),.c(c[0]),.sum(out[1]),.carry(c[1]));
Full_Adder FA2(.a(a[2]),.b(b[2]),.c(c[1]),.sum(out[2]),.carry(c[2]));
Full_Adder FA3(.a(a[3]),.b(b[3]),.c(c[2]),.sum(out[3]),.carry(c[3]));
Full_Adder FA4(.a(a[4]),.b(b[4]),.c(c[3]),.sum(out[4]),.carry(c[4]));
Full_Adder FA5(.a(a[5]),.b(b[5]),.c(c[4]),.sum(out[5]),.carry(c[5]));
Full_Adder FA6(.a(a[6]),.b(b[6]),.c(c[5]),.sum(out[6]),.carry(c[6]));
Full_Adder FA7(.a(a[7]),.b(b[7]),.c(c[6]),.sum(out[7]),.carry(c[7]));
Full_Adder FA8(.a(a[8]),.b(b[8]),.c(c[7]),.sum(out[8]),.carry(c[8]));
Full_Adder FA9(.a(a[9]),.b(b[9]),.c(c[8]),.sum(out[9]),.carry(c[9]));
Full_Adder FA10(.a(a[10]),.b(b[10]),.c(c[9]),.sum(out[10]),.carry(c[10]));
Full_Adder FA11(.a(a[11]),.b(b[11]),.c(c[10]),.sum(out[11]),.carry(c[11]));
Full_Adder FA12(.a(a[12]),.b(b[12]),.c(c[11]),.sum(out[12]),.carry(c[12]));
Full_Adder FA13(.a(a[13]),.b(b[13]),.c(c[12]),.sum(out[13]),.carry(c[13]));
Full_Adder FA14(.a(a[14]),.b(b[14]),.c(c[13]),.sum(out[14]),.carry(c[14]));
Full_Adder FA15(.a(a[15]),.b(b[15]),.c(c[14]),.sum(out[15]),.carry(c[15]));
endmodule
