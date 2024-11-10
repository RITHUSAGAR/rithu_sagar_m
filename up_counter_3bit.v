`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 10:34:41
// Design Name: 
// Module Name: up_counter_3bit
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


module up_counter_3bit(clk,rst,q);
input clk,rst;
output reg [2:0] q;
always@(posedge clk)
begin
if(rst)
q=3'b000;
else
q = q+1;
end

endmodule
