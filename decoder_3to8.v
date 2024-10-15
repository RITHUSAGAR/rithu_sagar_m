`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 21:52:54
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(y,d,en);
input [2:0] y;
input en;
output reg [7:0] d;

always @ (y or en)
begin
if (en)
begin
d = 8'b0;
case(y)
3'b000 : d[0] = 1'b1;
3'b001 : d[1] = 1'b1;
3'b010 : d[2] = 1'b1;
3'b011 : d[3] = 1'b1;
3'b100 : d[4] = 1'b1;
3'b101 : d[5] = 1'b1;
3'b110 : d[6] = 1'b1;
3'b111 : d[7] = 1'b1;
default: d = 8'b0;
endcase
end
else
d = 8'b0;

end
endmodule
