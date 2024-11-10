`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 14:45:13
// Design Name: 
// Module Name: siso
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


module siso(clk,clr,d,q);
input clk,clr,d;
output reg q;
reg [3:0] temp;
always @(posedge clk)
begin
if(clr)
begin
temp <= 4'b0000;
q <= 1'b0;
end
else
begin
 q <= temp[0];
temp <= temp>>1;
temp[3]  <= d; 

end
//q = temp[0];
end

endmodule
