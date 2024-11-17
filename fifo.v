`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 20:13:05
// Design Name: 
// Module Name: fifo
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


module fifo(clk,rst,data_in,data_out,rd_en,wr_en,data_full,data_empty);
input clk,rst,wr_en,rd_en;
input [7:0] data_in;
output reg [7:0] data_out;
output reg data_full,data_empty;

reg [3:0] count;
reg [3:0] rd_ptr,wr_ptr;
reg [7:0] data_mem [15:0];

integer i;

always @ (count)
begin
data_empty <= (count==4'd0);
data_full <= (count == 4'd15);
end

always @ (posedge clk)
begin
if(rst)begin
data_out <= 8'd0;
count <= 4'd0;
for (i=0;i<16;i=i+1)
begin
data_mem[i] <=0;
end
end
else if ((!data_full && wr_en) && (!data_empty && rd_en))
count <= count;
else if (!data_full && wr_en)
count <= count+1;
else if (!data_empty && rd_en)
count <= count-1;
else 
count <= count;
end

always @ (posedge clk)
begin
if (!data_full && wr_en)
data_mem[wr_ptr] <= data_in;
else
data_mem[wr_ptr] <= data_mem[wr_ptr];
end

always @ (posedge clk)
begin
if (!data_empty && rd_en)
data_out <= data_mem[rd_ptr];
else
data_out <= data_out;
end

always @ (posedge clk)
begin
if(rst)
begin
rd_ptr <= 1'b0;
wr_ptr <= 1'b0;
end
else 
begin
if(!data_full && wr_en)
wr_ptr <= wr_ptr + 1;
else
wr_ptr <= wr_ptr;

if(!data_empty && rd_en)
rd_ptr <= rd_ptr + 1;
else
rd_ptr <= rd_ptr;
end
end

endmodule
