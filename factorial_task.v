`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 12:40:49
// Design Name: 
// Module Name: factorial_task
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


module factorial_task(num,fact);
input [2:0] num;
output reg [15:0] fact;

task factorial;
input [2:0] number;
output reg [15:0]  factorial_result;
integer i;
begin
if(number==0)
factorial_result = 1;
else
begin
factorial_result = 1;
for (i = 1; i <=number; i = i+1)
factorial_result = factorial_result*i;
end
end
endtask

always @(*)
begin
factorial(num,fact);
end


endmodule
