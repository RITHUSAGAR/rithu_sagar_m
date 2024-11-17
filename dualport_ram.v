`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 18:31:27
// Design Name: 
// Module Name: dualport_ram
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


module dualport_ram(clk,in_a,in_b,address_a,address_b,wr_en_a,wr_en_b,out_a,out_b);
input clk,wr_en_a,wr_en_b;
input [7:0] in_a,in_b;
input [3:0] address_a,address_b;
output reg [7:0] out_a,out_b;
reg [7:0] data_mem [15:0];

always @ (posedge clk)
begin
if(wr_en_a)
begin
data_mem[address_a] <= in_a;
end
else begin
out_a <= data_mem[address_a];
end
end

always @ (posedge clk)
begin
//if(wr_en_b)
if(wr_en_b && !(wr_en_a && (address_a == address_b)))
begin
data_mem[address_b] <= in_b;
end
else begin
out_b <= data_mem[address_b];
end
end

endmodule
