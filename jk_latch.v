`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 10:07:10
// Design Name: 
// Module Name: jk_latch
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


module jk_latch(j,k,rst,en,q,qbar);
input j,k,en,rst;
output reg q, qbar;

//always @(j or k or en or rst)
always @(*)
begin
if (rst)
begin
q <= 1'b0;qbar <= 1'b1;
end
else if(en==0)
q <= q; 
else
begin
case({j,k})
2'b00: q <= q;
2'b01: q <= 1'b0;
2'b10: q <= 1'b1;
2'b11: #1 q <= ~q;
endcase
//qbar <= ~q;
end
end
always @(*)
begin
qbar <= ~q;
end
endmodule
