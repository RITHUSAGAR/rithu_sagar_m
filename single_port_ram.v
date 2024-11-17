`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 22:00:26
// Design Name: 
// Module Name: single_port_ram
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


module single_port_ram(clk,address,en,wr_en,data_in,data_out);
input clk,en,wr_en;
input [7:0] data_in;
input [3:0] address;
output reg [7:0] data_out;
reg [7:0] data_mem [15:0];
initial begin
data_out <= 8'd0;
end
always @ (posedge clk)
begin
if(en)
begin
if(wr_en)
data_mem[address] <= data_in;
else
data_out <= data_mem[address];
end
end
endmodule
