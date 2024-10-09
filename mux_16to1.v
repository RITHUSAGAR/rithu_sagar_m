`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 15:09:52
// Design Name: 
// Module Name: mux_16to1
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


module mux_4to1_df(a,b,c,d,sel,y);
input a,b,c,d;
input [1:0] sel;
output y;
assign y = sel[1]?(sel[0]?b:a):(sel[0]?d:c);

endmodule


module mux_16to1(d,select,out);
input [15:0] d;
input [3:0] select;
wire t1,t2,t3,t4;
output out;
mux_4to1_df m1(.a(d[0]),.b(d[1]),.c(d[2]),.d(d[3]),.sel(select[1:0]),.y(t1));
mux_4to1_df m2(.a(d[4]),.b(d[5]),.c(d[6]),.d(d[7]),.sel(select[1:0]),.y(t2));
mux_4to1_df m3(.a(d[8]),.b(d[9]),.c(d[10]),.d(d[11]),.sel(select[1:0]),.y(t3));
mux_4to1_df m4(.a(d[12]),.b(d[13]),.c(d[14]),.d(d[15]),.sel(select[1:0]),.y(t4));
mux_4to1_df m5(.a(t1),.b(t2),.c(t3),.d(t4),.sel(select[3:2]),.y(out));
endmodule
