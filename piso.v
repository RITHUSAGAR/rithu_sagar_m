`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2024 15:05:51
// Design Name: 
// Module Name: piso
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


module piso(clk,clr,d,q,sel);
input clk,clr,sel;
input [3:0] d;
output reg q;
reg [3:0] temp;
always @(posedge clk)
begin
if (clr)
begin
temp <= 4'b0000;
q <= 1'b0;
end
else if (sel == 0)
temp <= d;
else
begin
q <= temp[0];
temp <= temp>>1;
end
end 
endmodule
