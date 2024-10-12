`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 19:10:42
// Design Name: 
// Module Name: demux_1to4
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


module demux_1to4(a,sel,y0,y1,y2,y3);
input a;
input  [1:0] sel;
output reg y0,y1,y2,y3;

always @ (a or sel)
begin
case(sel)

2'b00:
begin
y0 = a;
y1 = 0;
y2 = 0;
y3 = 0;
end
2'b01:
begin
y1 = a;
y0 = 0;
y2 = 0;
y3 = 0;
end
2'b10:
begin
y2 = a;
y0 = 0;
y1 = 0;
y3 = 0;
end
2'b11:
begin
y3 = a;
y0 = 0;
y2 = 0;
y1 = 0;
end

endcase

end

endmodule
