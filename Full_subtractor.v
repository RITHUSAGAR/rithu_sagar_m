`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 11:59:24
// Design Name: 
// Module Name: Full_subtractor
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


module Full_subtractor(a,b,c,d,bin);
input a,b,c;
output reg d,bin;
always @(a or b or c)
begin
d = a^b^c;
bin = ~a&b|(c&~(a^b));
end
endmodule


