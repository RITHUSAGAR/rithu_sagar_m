`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 22:33:18
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(j,k,clk,rst,q,qbar);
input j,k,rst,clk;
output reg q,qbar;

always @(posedge clk)
begin
if (rst)
begin
q <= 1'b0;qbar<=1'b1;
end
else
begin
case({j,k})
2'b00: {q,qbar} <= {q,~q};
2'b01: {q,qbar} <= {1'b0,1'b1};
2'b10: {q,qbar} <= {1'b1,1'b0};
2'b11: {q,qbar} <= {~q,q};
endcase

end 

end
//assign qbar = ~q; 
endmodule
