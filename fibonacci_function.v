`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 14:19:37
// Design Name: 
// Module Name: fibonacci_function
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


module fibonacci_function(fib,clk,rst);
input clk,rst;
output reg [31:0] fib;
reg [31:0] prev_val,cur_val;

function [31:0] fibonacci;
input [31:0] prev,curr;
begin
fibonacci = prev+curr;
end
endfunction
always@ (posedge clk or posedge rst)
begin
if(rst == 1'b1)
begin
prev_val <= 32'd0;
cur_val <= 32'd1;
fib <= 32'd0;
end
else
begin
fib <= cur_val;
prev_val <= cur_val;
cur_val <= fibonacci(prev_val,cur_val);



end
end
endmodule
