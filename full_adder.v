`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2024 19:57:37
// Design Name: 
// Module Name: full_adder
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


module full_adder(sum,cout,a,b,c);
input a,b,c;
output reg sum,cout;
always @ (*)
begin
 sum = a^b^c;
 cout = (a&b)|(b&c)|(a&c);
 end


endmodule
