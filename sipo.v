`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 23:00:45
// Design Name: 
// Module Name: sipo
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


module sipo(d,clk,clr,q);
input d,clk,clr;
output reg [3:0] q;
reg [3:0] temp;

always @(posedge clk)
begin
if (clr)
q <= 4'b0000;
else
temp = q>>1;
q = {d,temp[2:0]};

end
endmodule
