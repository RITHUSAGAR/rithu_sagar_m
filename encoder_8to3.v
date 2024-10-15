`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 10:46:26
// Design Name: 
// Module Name: encoder_8to3
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


module encoder_8to3(d,out,en);
input [7:0] d;
input en;
output reg [2:0] out;
always @ (d or en)
begin
if(en==1)
begin
case(d) 
8'b00000001 : out = 3'b000; 
8'b00000010 : out = 3'b001;
8'b00000100 : out = 3'b010;
8'b00001000 : out = 3'b011;
8'b00010000 : out = 3'b100;
8'b00100000 : out = 3'b101;
8'b01000000 : out = 3'b110;
8'b10000000 : out = 3'b111;
default : out = 3'b000;
endcase
end
else
begin
out = 3'b000;
end
end
endmodule
