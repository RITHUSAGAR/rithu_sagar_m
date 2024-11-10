`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 15:08:32
// Design Name: 
// Module Name: s_r_flipflop
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


module s_r_flipflop(s,r,q,qbar,clk,rst);
input s,r,clk,rst;
output reg q;
output reg  qbar;
always @(posedge clk)

begin
if(rst)
begin
q<=1'b0;qbar<=1'b1;
end
else
begin
case({s,r})
2'b00: {q,qbar} <= {q,~q};
2'b01: {q,qbar} <= {1'b0,1'b1};
2'b10: {q,qbar} <= {1'b0,1'b1};
2'b11: {q,qbar} <= {1'bx,1'bx};

endcase
end

end
//assign qbar = ~q;
endmodule