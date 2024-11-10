`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2024 21:32:14
// Design Name: 
// Module Name: pipo
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


module pipo(clk,clr,d,q);
input clk,clr;
input [3:0] d;
output reg [3:0] q;
 always @ (posedge clk)
 begin 
 if(clr)
 q <= 4'b0000;
 else
 q <= d;
 end
endmodule
