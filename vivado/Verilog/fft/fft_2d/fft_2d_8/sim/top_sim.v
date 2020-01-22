`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/25 18:20:35
// Design Name: 
// Module Name: top_sim
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


module top_sim();

reg		clk;

reg signed [`InBus]		in_1_1_r;
reg signed [`InBus]		in_1_1_i;
reg signed [`InBus]		in_1_2_r;
reg signed [`InBus]		in_1_2_i;
reg signed [`InBus]		in_1_3_r;
reg signed [`InBus]		in_1_3_i;
reg signed [`InBus]		in_1_4_r;
reg signed [`InBus]		in_1_4_i;
reg signed [`InBus]		in_1_5_r;
reg signed [`InBus]		in_1_5_i;
reg signed [`InBus]		in_1_6_r;
reg signed [`InBus]		in_1_6_i;
reg signed [`InBus]		in_1_7_r;
reg signed [`InBus]		in_1_7_i;
reg signed [`InBus]		in_1_8_r;
reg signed [`InBus]		in_1_8_i;
reg signed [`InBus]		in_2_1_r;
reg signed [`InBus]		in_2_1_i;
reg signed [`InBus]		in_2_2_r;
reg signed [`InBus]		in_2_2_i;
reg signed [`InBus]		in_2_3_r;
reg signed [`InBus]		in_2_3_i;
reg signed [`InBus]		in_2_4_r;
reg signed [`InBus]		in_2_4_i;
reg signed [`InBus]		in_2_5_r;
reg signed [`InBus]		in_2_5_i;
reg signed [`InBus]		in_2_6_r;
reg signed [`InBus]		in_2_6_i;
reg signed [`InBus]		in_2_7_r;
reg signed [`InBus]		in_2_7_i;
reg signed [`InBus]		in_2_8_r;
reg signed [`InBus]		in_2_8_i;
reg signed [`InBus]		in_3_1_r;
reg signed [`InBus]		in_3_1_i;
reg signed [`InBus]		in_3_2_r;
reg signed [`InBus]		in_3_2_i;
reg signed [`InBus]		in_3_3_r;
reg signed [`InBus]		in_3_3_i;
reg signed [`InBus]		in_3_4_r;
reg signed [`InBus]		in_3_4_i;
reg signed [`InBus]		in_3_5_r;
reg signed [`InBus]		in_3_5_i;
reg signed [`InBus]		in_3_6_r;
reg signed [`InBus]		in_3_6_i;
reg signed [`InBus]		in_3_7_r;
reg signed [`InBus]		in_3_7_i;
reg signed [`InBus]		in_3_8_r;
reg signed [`InBus]		in_3_8_i;
reg signed [`InBus]		in_4_1_r;
reg signed [`InBus]		in_4_1_i;
reg signed [`InBus]		in_4_2_r;
reg signed [`InBus]		in_4_2_i;
reg signed [`InBus]		in_4_3_r;
reg signed [`InBus]		in_4_3_i;
reg signed [`InBus]		in_4_4_r;
reg signed [`InBus]		in_4_4_i;
reg signed [`InBus]		in_4_5_r;
reg signed [`InBus]		in_4_5_i;
reg signed [`InBus]		in_4_6_r;
reg signed [`InBus]		in_4_6_i;
reg signed [`InBus]		in_4_7_r;
reg signed [`InBus]		in_4_7_i;
reg signed [`InBus]		in_4_8_r;
reg signed [`InBus]		in_4_8_i;
reg signed [`InBus]		in_5_1_r;
reg signed [`InBus]		in_5_1_i;
reg signed [`InBus]		in_5_2_r;
reg signed [`InBus]		in_5_2_i;
reg signed [`InBus]		in_5_3_r;
reg signed [`InBus]		in_5_3_i;
reg signed [`InBus]		in_5_4_r;
reg signed [`InBus]		in_5_4_i;
reg signed [`InBus]		in_5_5_r;
reg signed [`InBus]		in_5_5_i;
reg signed [`InBus]		in_5_6_r;
reg signed [`InBus]		in_5_6_i;
reg signed [`InBus]		in_5_7_r;
reg signed [`InBus]		in_5_7_i;
reg signed [`InBus]		in_5_8_r;
reg signed [`InBus]		in_5_8_i;
reg signed [`InBus]		in_6_1_r;
reg signed [`InBus]		in_6_1_i;
reg signed [`InBus]		in_6_2_r;
reg signed [`InBus]		in_6_2_i;
reg signed [`InBus]		in_6_3_r;
reg signed [`InBus]		in_6_3_i;
reg signed [`InBus]		in_6_4_r;
reg signed [`InBus]		in_6_4_i;
reg signed [`InBus]		in_6_5_r;
reg signed [`InBus]		in_6_5_i;
reg signed [`InBus]		in_6_6_r;
reg signed [`InBus]		in_6_6_i;
reg signed [`InBus]		in_6_7_r;
reg signed [`InBus]		in_6_7_i;
reg signed [`InBus]		in_6_8_r;
reg signed [`InBus]		in_6_8_i;
reg signed [`InBus]		in_7_1_r;
reg signed [`InBus]		in_7_1_i;
reg signed [`InBus]		in_7_2_r;
reg signed [`InBus]		in_7_2_i;
reg signed [`InBus]		in_7_3_r;
reg signed [`InBus]		in_7_3_i;
reg signed [`InBus]		in_7_4_r;
reg signed [`InBus]		in_7_4_i;
reg signed [`InBus]		in_7_5_r;
reg signed [`InBus]		in_7_5_i;
reg signed [`InBus]		in_7_6_r;
reg signed [`InBus]		in_7_6_i;
reg signed [`InBus]		in_7_7_r;
reg signed [`InBus]		in_7_7_i;
reg signed [`InBus]		in_7_8_r;
reg signed [`InBus]		in_7_8_i;
reg signed [`InBus]		in_8_1_r;
reg signed [`InBus]		in_8_1_i;
reg signed [`InBus]		in_8_2_r;
reg signed [`InBus]		in_8_2_i;
reg signed [`InBus]		in_8_3_r;
reg signed [`InBus]		in_8_3_i;
reg signed [`InBus]		in_8_4_r;
reg signed [`InBus]		in_8_4_i;
reg signed [`InBus]		in_8_5_r;
reg signed [`InBus]		in_8_5_i;
reg signed [`InBus]		in_8_6_r;
reg signed [`InBus]		in_8_6_i;
reg signed [`InBus]		in_8_7_r;
reg signed [`InBus]		in_8_7_i;
reg signed [`InBus]		in_8_8_r;
reg signed [`InBus]		in_8_8_i;

wire signed [`OutBus]		out_1_1_r;
wire signed [`OutBus]		out_1_1_i;
wire signed [`OutBus]		out_1_2_r;
wire signed [`OutBus]		out_1_2_i;
wire signed [`OutBus]		out_1_3_r;
wire signed [`OutBus]		out_1_3_i;
wire signed [`OutBus]		out_1_4_r;
wire signed [`OutBus]		out_1_4_i;
wire signed [`OutBus]		out_1_5_r;
wire signed [`OutBus]		out_1_5_i;
wire signed [`OutBus]		out_1_6_r;
wire signed [`OutBus]		out_1_6_i;
wire signed [`OutBus]		out_1_7_r;
wire signed [`OutBus]		out_1_7_i;
wire signed [`OutBus]		out_1_8_r;
wire signed [`OutBus]		out_1_8_i;
wire signed [`OutBus]		out_2_1_r;
wire signed [`OutBus]		out_2_1_i;
wire signed [`OutBus]		out_2_2_r;
wire signed [`OutBus]		out_2_2_i;
wire signed [`OutBus]		out_2_3_r;
wire signed [`OutBus]		out_2_3_i;
wire signed [`OutBus]		out_2_4_r;
wire signed [`OutBus]		out_2_4_i;
wire signed [`OutBus]		out_2_5_r;
wire signed [`OutBus]		out_2_5_i;
wire signed [`OutBus]		out_2_6_r;
wire signed [`OutBus]		out_2_6_i;
wire signed [`OutBus]		out_2_7_r;
wire signed [`OutBus]		out_2_7_i;
wire signed [`OutBus]		out_2_8_r;
wire signed [`OutBus]		out_2_8_i;
wire signed [`OutBus]		out_3_1_r;
wire signed [`OutBus]		out_3_1_i;
wire signed [`OutBus]		out_3_2_r;
wire signed [`OutBus]		out_3_2_i;
wire signed [`OutBus]		out_3_3_r;
wire signed [`OutBus]		out_3_3_i;
wire signed [`OutBus]		out_3_4_r;
wire signed [`OutBus]		out_3_4_i;
wire signed [`OutBus]		out_3_5_r;
wire signed [`OutBus]		out_3_5_i;
wire signed [`OutBus]		out_3_6_r;
wire signed [`OutBus]		out_3_6_i;
wire signed [`OutBus]		out_3_7_r;
wire signed [`OutBus]		out_3_7_i;
wire signed [`OutBus]		out_3_8_r;
wire signed [`OutBus]		out_3_8_i;
wire signed [`OutBus]		out_4_1_r;
wire signed [`OutBus]		out_4_1_i;
wire signed [`OutBus]		out_4_2_r;
wire signed [`OutBus]		out_4_2_i;
wire signed [`OutBus]		out_4_3_r;
wire signed [`OutBus]		out_4_3_i;
wire signed [`OutBus]		out_4_4_r;
wire signed [`OutBus]		out_4_4_i;
wire signed [`OutBus]		out_4_5_r;
wire signed [`OutBus]		out_4_5_i;
wire signed [`OutBus]		out_4_6_r;
wire signed [`OutBus]		out_4_6_i;
wire signed [`OutBus]		out_4_7_r;
wire signed [`OutBus]		out_4_7_i;
wire signed [`OutBus]		out_4_8_r;
wire signed [`OutBus]		out_4_8_i;
wire signed [`OutBus]		out_5_1_r;
wire signed [`OutBus]		out_5_1_i;
wire signed [`OutBus]		out_5_2_r;
wire signed [`OutBus]		out_5_2_i;
wire signed [`OutBus]		out_5_3_r;
wire signed [`OutBus]		out_5_3_i;
wire signed [`OutBus]		out_5_4_r;
wire signed [`OutBus]		out_5_4_i;
wire signed [`OutBus]		out_5_5_r;
wire signed [`OutBus]		out_5_5_i;
wire signed [`OutBus]		out_5_6_r;
wire signed [`OutBus]		out_5_6_i;
wire signed [`OutBus]		out_5_7_r;
wire signed [`OutBus]		out_5_7_i;
wire signed [`OutBus]		out_5_8_r;
wire signed [`OutBus]		out_5_8_i;
wire signed [`OutBus]		out_6_1_r;
wire signed [`OutBus]		out_6_1_i;
wire signed [`OutBus]		out_6_2_r;
wire signed [`OutBus]		out_6_2_i;
wire signed [`OutBus]		out_6_3_r;
wire signed [`OutBus]		out_6_3_i;
wire signed [`OutBus]		out_6_4_r;
wire signed [`OutBus]		out_6_4_i;
wire signed [`OutBus]		out_6_5_r;
wire signed [`OutBus]		out_6_5_i;
wire signed [`OutBus]		out_6_6_r;
wire signed [`OutBus]		out_6_6_i;
wire signed [`OutBus]		out_6_7_r;
wire signed [`OutBus]		out_6_7_i;
wire signed [`OutBus]		out_6_8_r;
wire signed [`OutBus]		out_6_8_i;
wire signed [`OutBus]		out_7_1_r;
wire signed [`OutBus]		out_7_1_i;
wire signed [`OutBus]		out_7_2_r;
wire signed [`OutBus]		out_7_2_i;
wire signed [`OutBus]		out_7_3_r;
wire signed [`OutBus]		out_7_3_i;
wire signed [`OutBus]		out_7_4_r;
wire signed [`OutBus]		out_7_4_i;
wire signed [`OutBus]		out_7_5_r;
wire signed [`OutBus]		out_7_5_i;
wire signed [`OutBus]		out_7_6_r;
wire signed [`OutBus]		out_7_6_i;
wire signed [`OutBus]		out_7_7_r;
wire signed [`OutBus]		out_7_7_i;
wire signed [`OutBus]		out_7_8_r;
wire signed [`OutBus]		out_7_8_i;
wire signed [`OutBus]		out_8_1_r;
wire signed [`OutBus]		out_8_1_i;
wire signed [`OutBus]		out_8_2_r;
wire signed [`OutBus]		out_8_2_i;
wire signed [`OutBus]		out_8_3_r;
wire signed [`OutBus]		out_8_3_i;
wire signed [`OutBus]		out_8_4_r;
wire signed [`OutBus]		out_8_4_i;
wire signed [`OutBus]		out_8_5_r;
wire signed [`OutBus]		out_8_5_i;
wire signed [`OutBus]		out_8_6_r;
wire signed [`OutBus]		out_8_6_i;
wire signed [`OutBus]		out_8_7_r;
wire signed [`OutBus]		out_8_7_i;
wire signed [`OutBus]		out_8_8_r;
wire signed [`OutBus]		out_8_8_i;

top sim (clk,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_1_3_r,in_1_3_i,in_1_4_r,in_1_4_i,in_1_5_r,in_1_5_i,in_1_6_r,in_1_6_i,in_1_7_r,in_1_7_i,in_1_8_r,in_1_8_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,in_2_3_r,in_2_3_i,in_2_4_r,in_2_4_i,in_2_5_r,in_2_5_i,in_2_6_r,in_2_6_i,in_2_7_r,in_2_7_i,in_2_8_r,in_2_8_i,in_3_1_r,in_3_1_i,in_3_2_r,in_3_2_i,in_3_3_r,in_3_3_i,in_3_4_r,in_3_4_i,in_3_5_r,in_3_5_i,in_3_6_r,in_3_6_i,in_3_7_r,in_3_7_i,in_3_8_r,in_3_8_i,in_4_1_r,in_4_1_i,in_4_2_r,in_4_2_i,in_4_3_r,in_4_3_i,in_4_4_r,in_4_4_i,in_4_5_r,in_4_5_i,in_4_6_r,in_4_6_i,in_4_7_r,in_4_7_i,in_4_8_r,in_4_8_i,in_5_1_r,in_5_1_i,in_5_2_r,in_5_2_i,in_5_3_r,in_5_3_i,in_5_4_r,in_5_4_i,in_5_5_r,in_5_5_i,in_5_6_r,in_5_6_i,in_5_7_r,in_5_7_i,in_5_8_r,in_5_8_i,in_6_1_r,in_6_1_i,in_6_2_r,in_6_2_i,in_6_3_r,in_6_3_i,in_6_4_r,in_6_4_i,in_6_5_r,in_6_5_i,in_6_6_r,in_6_6_i,in_6_7_r,in_6_7_i,in_6_8_r,in_6_8_i,in_7_1_r,in_7_1_i,in_7_2_r,in_7_2_i,in_7_3_r,in_7_3_i,in_7_4_r,in_7_4_i,in_7_5_r,in_7_5_i,in_7_6_r,in_7_6_i,in_7_7_r,in_7_7_i,in_7_8_r,in_7_8_i,in_8_1_r,in_8_1_i,in_8_2_r,in_8_2_i,in_8_3_r,in_8_3_i,in_8_4_r,in_8_4_i,in_8_5_r,in_8_5_i,in_8_6_r,in_8_6_i,in_8_7_r,in_8_7_i,in_8_8_r,in_8_8_i,out_1_1_r,out_1_1_i,out_1_2_r,out_1_2_i,out_1_3_r,out_1_3_i,out_1_4_r,out_1_4_i,out_1_5_r,out_1_5_i,out_1_6_r,out_1_6_i,out_1_7_r,out_1_7_i,out_1_8_r,out_1_8_i,out_2_1_r,out_2_1_i,out_2_2_r,out_2_2_i,out_2_3_r,out_2_3_i,out_2_4_r,out_2_4_i,out_2_5_r,out_2_5_i,out_2_6_r,out_2_6_i,out_2_7_r,out_2_7_i,out_2_8_r,out_2_8_i,out_3_1_r,out_3_1_i,out_3_2_r,out_3_2_i,out_3_3_r,out_3_3_i,out_3_4_r,out_3_4_i,out_3_5_r,out_3_5_i,out_3_6_r,out_3_6_i,out_3_7_r,out_3_7_i,out_3_8_r,out_3_8_i,out_4_1_r,out_4_1_i,out_4_2_r,out_4_2_i,out_4_3_r,out_4_3_i,out_4_4_r,out_4_4_i,out_4_5_r,out_4_5_i,out_4_6_r,out_4_6_i,out_4_7_r,out_4_7_i,out_4_8_r,out_4_8_i,out_5_1_r,out_5_1_i,out_5_2_r,out_5_2_i,out_5_3_r,out_5_3_i,out_5_4_r,out_5_4_i,out_5_5_r,out_5_5_i,out_5_6_r,out_5_6_i,out_5_7_r,out_5_7_i,out_5_8_r,out_5_8_i,out_6_1_r,out_6_1_i,out_6_2_r,out_6_2_i,out_6_3_r,out_6_3_i,out_6_4_r,out_6_4_i,out_6_5_r,out_6_5_i,out_6_6_r,out_6_6_i,out_6_7_r,out_6_7_i,out_6_8_r,out_6_8_i,out_7_1_r,out_7_1_i,out_7_2_r,out_7_2_i,out_7_3_r,out_7_3_i,out_7_4_r,out_7_4_i,out_7_5_r,out_7_5_i,out_7_6_r,out_7_6_i,out_7_7_r,out_7_7_i,out_7_8_r,out_7_8_i,out_8_1_r,out_8_1_i,out_8_2_r,out_8_2_i,out_8_3_r,out_8_3_i,out_8_4_r,out_8_4_i,out_8_5_r,out_8_5_i,out_8_6_r,out_8_6_i,out_8_7_r,out_8_7_i,out_8_8_r,out_8_8_i);

initial begin
clk <= 1'b0;


in_1_1_r <= 16'sb0000000000000010;
in_1_1_i <= 16'sb0000000000000010;

in_1_2_r <= 16'sb0000000000000011;
in_1_2_i <= 16'sb0000000000000011;

in_1_3_r <= 16'sb0000000000000100;
in_1_3_i <= 16'sb0000000000000100;

in_1_4_r <= 16'sb0000000000000101;
in_1_4_i <= 16'sb0000000000000101;

in_1_5_r <= 16'sb0000000000000110;
in_1_5_i <= 16'sb0000000000000110;

in_1_6_r <= 16'sb0000000000000111;
in_1_6_i <= 16'sb0000000000000111;

in_1_7_r <= 16'sb0000000000001000;
in_1_7_i <= 16'sb0000000000001000;

in_1_8_r <= 16'sb0000000000001001;
in_1_8_i <= 16'sb0000000000001001;

in_2_1_r <= 16'sb0000000000000011;
in_2_1_i <= 16'sb0000000000000011;

in_2_2_r <= 16'sb0000000000000100;
in_2_2_i <= 16'sb0000000000000100;

in_2_3_r <= 16'sb0000000000000101;
in_2_3_i <= 16'sb0000000000000101;

in_2_4_r <= 16'sb0000000000000110;
in_2_4_i <= 16'sb0000000000000110;

in_2_5_r <= 16'sb0000000000000111;
in_2_5_i <= 16'sb0000000000000111;

in_2_6_r <= 16'sb0000000000001000;
in_2_6_i <= 16'sb0000000000001000;

in_2_7_r <= 16'sb0000000000001001;
in_2_7_i <= 16'sb0000000000001001;

in_2_8_r <= 16'sb0000000000001010;
in_2_8_i <= 16'sb0000000000001010;

in_3_1_r <= 16'sb0000000000000100;
in_3_1_i <= 16'sb0000000000000100;

in_3_2_r <= 16'sb0000000000000101;
in_3_2_i <= 16'sb0000000000000101;

in_3_3_r <= 16'sb0000000000000110;
in_3_3_i <= 16'sb0000000000000110;

in_3_4_r <= 16'sb0000000000000111;
in_3_4_i <= 16'sb0000000000000111;

in_3_5_r <= 16'sb0000000000001000;
in_3_5_i <= 16'sb0000000000001000;

in_3_6_r <= 16'sb0000000000001001;
in_3_6_i <= 16'sb0000000000001001;

in_3_7_r <= 16'sb0000000000001010;
in_3_7_i <= 16'sb0000000000001010;

in_3_8_r <= 16'sb0000000000001011;
in_3_8_i <= 16'sb0000000000001011;

in_4_1_r <= 16'sb0000000000000101;
in_4_1_i <= 16'sb0000000000000101;

in_4_2_r <= 16'sb0000000000000110;
in_4_2_i <= 16'sb0000000000000110;

in_4_3_r <= 16'sb0000000000000111;
in_4_3_i <= 16'sb0000000000000111;

in_4_4_r <= 16'sb0000000000001000;
in_4_4_i <= 16'sb0000000000001000;

in_4_5_r <= 16'sb0000000000001001;
in_4_5_i <= 16'sb0000000000001001;

in_4_6_r <= 16'sb0000000000001010;
in_4_6_i <= 16'sb0000000000001010;

in_4_7_r <= 16'sb0000000000001011;
in_4_7_i <= 16'sb0000000000001011;

in_4_8_r <= 16'sb0000000000001100;
in_4_8_i <= 16'sb0000000000001100;

in_5_1_r <= 16'sb0000000000000110;
in_5_1_i <= 16'sb0000000000000110;

in_5_2_r <= 16'sb0000000000000111;
in_5_2_i <= 16'sb0000000000000111;

in_5_3_r <= 16'sb0000000000001000;
in_5_3_i <= 16'sb0000000000001000;

in_5_4_r <= 16'sb0000000000001001;
in_5_4_i <= 16'sb0000000000001001;

in_5_5_r <= 16'sb0000000000001010;
in_5_5_i <= 16'sb0000000000001010;

in_5_6_r <= 16'sb0000000000001011;
in_5_6_i <= 16'sb0000000000001011;

in_5_7_r <= 16'sb0000000000001100;
in_5_7_i <= 16'sb0000000000001100;

in_5_8_r <= 16'sb0000000000001101;
in_5_8_i <= 16'sb0000000000001101;

in_6_1_r <= 16'sb0000000000000111;
in_6_1_i <= 16'sb0000000000000111;

in_6_2_r <= 16'sb0000000000001000;
in_6_2_i <= 16'sb0000000000001000;

in_6_3_r <= 16'sb0000000000001001;
in_6_3_i <= 16'sb0000000000001001;

in_6_4_r <= 16'sb0000000000001010;
in_6_4_i <= 16'sb0000000000001010;

in_6_5_r <= 16'sb0000000000001011;
in_6_5_i <= 16'sb0000000000001011;

in_6_6_r <= 16'sb0000000000001100;
in_6_6_i <= 16'sb0000000000001100;

in_6_7_r <= 16'sb0000000000001101;
in_6_7_i <= 16'sb0000000000001101;

in_6_8_r <= 16'sb0000000000001110;
in_6_8_i <= 16'sb0000000000001110;

in_7_1_r <= 16'sb0000000000001000;
in_7_1_i <= 16'sb0000000000001000;

in_7_2_r <= 16'sb0000000000001001;
in_7_2_i <= 16'sb0000000000001001;

in_7_3_r <= 16'sb0000000000001010;
in_7_3_i <= 16'sb0000000000001010;

in_7_4_r <= 16'sb0000000000001011;
in_7_4_i <= 16'sb0000000000001011;

in_7_5_r <= 16'sb0000000000001100;
in_7_5_i <= 16'sb0000000000001100;

in_7_6_r <= 16'sb0000000000001101;
in_7_6_i <= 16'sb0000000000001101;

in_7_7_r <= 16'sb0000000000001110;
in_7_7_i <= 16'sb0000000000001110;

in_7_8_r <= 16'sb0000000000001111;
in_7_8_i <= 16'sb0000000000001111;

in_8_1_r <= 16'sb0000000000001001;
in_8_1_i <= 16'sb0000000000001001;

in_8_2_r <= 16'sb0000000000001010;
in_8_2_i <= 16'sb0000000000001010;

in_8_3_r <= 16'sb0000000000001011;
in_8_3_i <= 16'sb0000000000001011;

in_8_4_r <= 16'sb0000000000001100;
in_8_4_i <= 16'sb0000000000001100;

in_8_5_r <= 16'sb0000000000001101;
in_8_5_i <= 16'sb0000000000001101;

in_8_6_r <= 16'sb0000000000001110;
in_8_6_i <= 16'sb0000000000001110;

in_8_7_r <= 16'sb0000000000001111;
in_8_7_i <= 16'sb0000000000001111;

in_8_8_r <= 16'sb0000000000010000;
in_8_8_i <= 16'sb0000000000010000;


#100
$finish;

end


always #5 begin
            clk <= ~clk;
        end
        
        
endmodule
