`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 21:02:48
// Design Name: 
// Module Name: mod_n_counter
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


module mod_n_counter(clk,rst,q);
parameter n = 10;
parameter width = 4;
input clk,rst;
output reg [width-1:0] q;
always @ (posedge clk or posedge rst)
begin
if(rst)
q <= 0;
else if (q == n-1)
q <= 0;
else
q <= q+1;
end

endmodule
