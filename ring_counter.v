`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 12:49:52
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(clk,rst,q);
input clk,rst;
output reg [3:0] q;
always @(posedge clk or posedge rst)
begin
if (rst)
q <= 4'b0001;
else
q <= {q[2:0],q[3]};
end
endmodule
