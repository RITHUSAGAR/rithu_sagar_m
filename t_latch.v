`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 10:36:48
// Design Name: 
// Module Name: t_latch
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


module t_latch(en,rst,t,q,qbar);
input en,rst,t;
output reg q, qbar;
always @ (*)
begin
if (rst)
q <= 1'b0;
else
 if (en==0)
q<=q;
else if(t==0)
q<=q;
else
#1 q<=~q;
end
always@(*)
begin
qbar <= ~q;
end
endmodule
