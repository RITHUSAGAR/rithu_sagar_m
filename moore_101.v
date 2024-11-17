`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 22:57:56
// Design Name: 
// Module Name: moore_101
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


module moore_101(clk,rst,in,out);
input clk,rst,in;
output reg out;

reg [1:0] pr_state,nxt_state;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

always @ (posedge clk)
begin
if(rst)
pr_state <= S0;
else
pr_state <= nxt_state;
end 

always @ (*)
begin
case(pr_state)
S0: begin
nxt_state <= in?S0:S1;
out <= 1'b0;
end


S1: begin
nxt_state <= in?S1:S2;
out <= 1'b0;
end


S2: begin
nxt_state <= in?S3:S0;
out <= 1'b0;
end


S3: begin
nxt_state <= in?S1:S2;
out <= 1'b1;
end

default: nxt_state <= S0;

endcase
end

endmodule
