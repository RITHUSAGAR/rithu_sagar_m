`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 12:15:13
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(s,r,q,qbar,clk,rst);
input s,r,clk,rst;
output reg q,qbar;
always @(posedge clk)

begin
if(rst)
begin
q<=1'b0;qbar<=1'b1;
end
else
begin
case({s,r})
2'b00: q <= q;
2'b01: q <= 1'b0;
2'b10: q <= 1'b1;
2'b11: q <= 1'bx;
default: q=q;
endcase
end
qbar <= ~q;
end

endmodule
