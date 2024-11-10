`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 09:25:46
// Design Name: 
// Module Name: updown_counter
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


module updown_counter(clk,rst,sel,q);
input clk,rst,sel;
output reg [2:0] q;

always @(posedge clk)
begin
if (rst)
q <= 3'b000;
else
q <= sel?(q-1):(q+1);
end


endmodule
