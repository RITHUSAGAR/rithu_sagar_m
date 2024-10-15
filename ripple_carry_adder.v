`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 21:57:27
// Design Name: 
// Module Name: ripple_carry_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(a,b,c,sum,carry);
input a,b,c;
output  sum,carry;

assign sum = a^b^c;
assign carry = a&b|(c&(a^b));

endmodule

module ripple_carry_adder(A,B,Cin,Sum,Carry);
input [3:0] A,B;
input Cin=0;
output  [3:0] Sum;
output  Carry;
wire c1,c2,c3;


full_adder f0 (.a(A[0]),.b(B[0]),.c(Cin),.sum(Sum[0]),.carry(c1));
full_adder f1 (.a(A[1]),.b(B[1]),.c(c1),.sum(Sum[1]),.carry(c2));
full_adder f2 (.a(A[2]),.b(B[2]),.c(c2),.sum(Sum[2]),.carry(c3));
full_adder f3 (.a(A[3]),.b(B[3]),.c(c3),.sum(Sum[3]),.carry(Carry));

endmodule



