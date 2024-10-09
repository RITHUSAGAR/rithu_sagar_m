`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2024 13:57:39
// Design Name: 
// Module Name: nto1_mux
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


module nto1_mux(in,select,out);
parameter sel = 3;
parameter IN = 2**sel;
input [sel-1:0] select;
input [IN-1:0] in;
output reg out;
integer i;

always @(in or select)
begin
/*for(i=0;i<IN;i=i+1)
begin
if (select ==i)
    out = in[select];
    end*/
    out = in[select];
end



endmodule
