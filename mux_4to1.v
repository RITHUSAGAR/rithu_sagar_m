`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 12:57:03
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(a,b,c,d,sel,y);
input [1:0] a,b,c,d,sel;
output reg [1:0] y;
always @(*)
begin
case(sel)
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
endcase

end

endmodule
