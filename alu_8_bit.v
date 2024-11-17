`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2024 16:07:43
// Design Name: 
// Module Name: alu_8_bit
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


module alu_8_bit(a,b,rst,op,out,carry);
input [7:0] a,b;
input [2:0] op;
input rst; 
output reg [15:0] out;
output reg carry;

always @ (a or b or op or rst)
begin
if (rst)
begin
out <= 16'b0;
carry <= 1'b0;
end
else
begin
case(op)
3'b000: begin
out = a+b;
carry = out[8];
end
3'b001: begin
out = a-b;
carry = out[8];
end
3'b010: begin
out <= a*b;
carry = 1'b0;
end
3'b011: begin
out = a&b;
carry = 1'b0;
end
3'b100: begin
out = ~(a&b);
carry = 1'b0;
end
3'b101: begin
out = a|b;
carry = 1'b0;
end
3'b110: begin
out = ~(a|b);
carry = 1'b0;
end
3'b111: begin
out = a^b;
carry = 1'b0;
end
endcase
end
end
endmodule
