`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2024 10:18:51
// Design Name: 
// Module Name: demux_2to1
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


module demux_2to1(a,y1,y2,sel);
input a,sel;
output reg y1,y2;
//y1 == 1'b0;
//y2 == 1'b0;
always @(sel or a)
begin
case (sel)
1'b0: y1 <= a;
1'b1: y2 <= a;
endcase
end
endmodule
