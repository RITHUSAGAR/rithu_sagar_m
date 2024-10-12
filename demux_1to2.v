`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2024 11:32:19
// Design Name: 
// Module Name: demux_1to2
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


module demux_1to2(a,y1,y2,sel);
input a,sel;
output reg y1,y2=0;


always @(sel or a)
begin
{y1,y2} = sel?{a,sel}:{a,~sel};
/*case (sel)
1'b0: y1 = a;
1'b1: y2 = a;
endcase*/
/*y1 = ~sel&a;
y2 = sel&a;*/

end

endmodule
