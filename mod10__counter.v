`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 10:33:00
// Design Name: 
// Module Name: mod10__counter
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


module mod10__counter(clk,rst,q);
input clk,rst;
output reg [3:0] q;
always @(posedge clk or posedge rst) 
begin
if(rst)
q <= 4'b0000;
else if (q == 4'd9)
q <= 4'b0000;
else 
q <= q+1;

end
endmodule
