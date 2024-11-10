`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 10:19:49
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(s,r,q,qbar,rst,en);

input s,r,en,rst;
output reg q,qbar;
always @(s or r or en or rst or q or qbar)
begin
if (rst)
begin
q <= 1'b0; qbar <= 1'b1;
end
else if
(en ==0)
begin
q = q;  
end
else
begin
case({s,r})
2'b00:  q <= q;

2'b01:  q <= 1'b0;

2'b10:  q <= 1'b1;

2'b11: begin  q <= 1'bx; 
end
default: q=q;
endcase
qbar <= ~q;
end


end

endmodule