`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 23:15:02
// Design Name: 
// Module Name: factorial_function
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


module factorial_function(num,fact);
input [2:0] num;
output reg [15:0] fact;

function [15:0] factorial;
input [2:0] number;
integer i;
begin
if (number==0)
factorial = 1;
else
begin
factorial = 1;
for (i=1;i<=number;i=i+1)
factorial=factorial*i;
//factorial = number*factorial(number-1);
end
end
endfunction

always @ (*)
begin
fact = factorial(num);
end


endmodule
