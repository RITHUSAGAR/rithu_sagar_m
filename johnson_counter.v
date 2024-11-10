`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 23:01:10
// Design Name: 
// Module Name: johnson_counter
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

module johnson_counter(clk,rst,q,qbar);
input clk,rst;
output reg [3:0] q;
output reg [3:0] qbar;
reg [3:0] q_new;

/*always @ (posedge clk or posedge rst)
begin
if (rst)
q <= 4'b0000;
else 
q <= {q[2:0],~q[3]};
end
assign qbar = ~q;
endmodule*/

always @ (posedge clk or posedge rst)
begin
 if (rst)
 q <= 4'b0000;
 else
 q <= q_new;
 end
 
always @ (posedge clk or posedge rst)
begin
if(rst)
qbar <= 4'b1111;
else
qbar <= ~q_new;
end

always @ (posedge clk or posedge rst)
begin
q_new <= {q[2:0],~q[3]};
qbar <= ~q_new;
end
endmodule

