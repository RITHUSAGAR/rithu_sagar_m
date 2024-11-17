`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 11:56:17
// Design Name: 
// Module Name: mealy_101
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


module mealy_101(in,out,clk,rst);
input in,clk,rst;
output reg out;
reg [1:0] pr_state,nxt_state;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

always @ (posedge clk)
begin
if(rst)
pr_state <= S0;
else
pr_state <= nxt_state;
end

always @(pr_state or in)
begin
case(pr_state)

S0: begin
if(in)begin
nxt_state <= S1;
out <= 1'b0;
end
else begin
nxt_state <= S0;
out <= 1'b0;
end
end

S1: begin
if(in) begin
nxt_state <= S1;
out <= 1'b0;
end
else begin
nxt_state <= S2;
out <= 1'b0;
end
end

S2: begin
if(in) begin
nxt_state <= S1;
out <= 1'b1;
end
else begin
nxt_state <= S0;
out <= 1'b0;
end
end

default: nxt_state <= S0;

endcase
end

endmodule
