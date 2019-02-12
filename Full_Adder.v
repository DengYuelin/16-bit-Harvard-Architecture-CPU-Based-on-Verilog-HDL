`timescale 1ns / 1ps

module Full_Adder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

Half_Adder HA1(.a(a),.b(b),.sum(s1),.carry(c1));
Half_Adder HA2(.a(s1),.b(c),.sum(sum),.carry(c2));
or (carry,c1,c2);


endmodule
