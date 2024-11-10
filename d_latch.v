`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 22:18:30
// Design Name: 
// Module Name: d_latch
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


module d_latch(d,en,rst,q,qbar);
input d,en,rst;
output reg q,qbar;
always @(*)
begin
if(rst)
begin
q <= 1'b0; qbar <= 1'b1;
end
else if (en==0)
q = q;
else 
begin
q <= d?1'b1:1'b0;
end
qbar <= ~q;
end
endmodule
