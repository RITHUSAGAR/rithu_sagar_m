`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 22:21:58
// Design Name: 
// Module Name: fibonacci_task
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


module fibonacci_task(clk,rst,fib);
input clk,rst;
output reg [31:0] fib;
reg [31:0] prev_val,cur_val;

task fibonacci;
input [31:0] curr,prev;
output reg [31:0] fib_seq;
begin
fib_seq = prev+curr;
end
endtask
always @ (posedge clk or posedge rst)
begin
if(rst)
begin
fib <= 32'd0;
prev_val <= 32'd0;
cur_val <= 32'd1;
end
else
begin
fib <= cur_val;
prev_val <= cur_val;
fibonacci(prev_val,cur_val,fib);
cur_val <= fib;
end
end

endmodule
