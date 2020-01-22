`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 17:01:42
// Design Name: 
// Module Name: input_selecter_top
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

`include "./nettype.h"
`include "./std_define.h"

module input_selecter_top(
input  wire clk,

/*********************original input**************************/
input wire signed [`InBus]		in_1_1_r,
input wire signed [`InBus]		in_1_1_i,
input wire signed [`InBus]		in_1_2_r,
input wire signed [`InBus]		in_1_2_i,
input wire signed [`InBus]		in_1_3_r,
input wire signed [`InBus]		in_1_3_i,
input wire signed [`InBus]		in_1_4_r,
input wire signed [`InBus]		in_1_4_i,
input wire signed [`InBus]		in_2_1_r,
input wire signed [`InBus]		in_2_1_i,
input wire signed [`InBus]		in_2_2_r,
input wire signed [`InBus]		in_2_2_i,
input wire signed [`InBus]		in_2_3_r,
input wire signed [`InBus]		in_2_3_i,
input wire signed [`InBus]		in_2_4_r,
input wire signed [`InBus]		in_2_4_i,
input wire signed [`InBus]		in_3_1_r,
input wire signed [`InBus]		in_3_1_i,
input wire signed [`InBus]		in_3_2_r,
input wire signed [`InBus]		in_3_2_i,
input wire signed [`InBus]		in_3_3_r,
input wire signed [`InBus]		in_3_3_i,
input wire signed [`InBus]		in_3_4_r,
input wire signed [`InBus]		in_3_4_i,
input wire signed [`InBus]		in_4_1_r,
input wire signed [`InBus]		in_4_1_i,
input wire signed [`InBus]		in_4_2_r,
input wire signed [`InBus]		in_4_2_i,
input wire signed [`InBus]		in_4_3_r,
input wire signed [`InBus]		in_4_3_i,
input wire signed [`InBus]		in_4_4_r,
input wire signed [`InBus]		in_4_4_i,

/*********************output_selecter => input_selecter**************************/
input wire signed [`InBus]		rt_in_1_1_r,
input wire signed [`InBus]		rt_in_1_1_i,
input wire signed [`InBus]		rt_in_1_2_r,
input wire signed [`InBus]		rt_in_1_2_i,
input wire signed [`InBus]		rt_in_1_3_r,
input wire signed [`InBus]		rt_in_1_3_i,
input wire signed [`InBus]		rt_in_1_4_r,
input wire signed [`InBus]		rt_in_1_4_i,
input wire signed [`InBus]		rt_in_2_1_r,
input wire signed [`InBus]		rt_in_2_1_i,
input wire signed [`InBus]		rt_in_2_2_r,
input wire signed [`InBus]		rt_in_2_2_i,
input wire signed [`InBus]		rt_in_2_3_r,
input wire signed [`InBus]		rt_in_2_3_i,
input wire signed [`InBus]		rt_in_2_4_r,
input wire signed [`InBus]		rt_in_2_4_i,
input wire signed [`InBus]		rt_in_3_1_r,
input wire signed [`InBus]		rt_in_3_1_i,
input wire signed [`InBus]		rt_in_3_2_r,
input wire signed [`InBus]		rt_in_3_2_i,
input wire signed [`InBus]		rt_in_3_3_r,
input wire signed [`InBus]		rt_in_3_3_i,
input wire signed [`InBus]		rt_in_3_4_r,
input wire signed [`InBus]		rt_in_3_4_i,
input wire signed [`InBus]		rt_in_4_1_r,
input wire signed [`InBus]		rt_in_4_1_i,
input wire signed [`InBus]		rt_in_4_2_r,
input wire signed [`InBus]		rt_in_4_2_i,
input wire signed [`InBus]		rt_in_4_3_r,
input wire signed [`InBus]		rt_in_4_3_i,
input wire signed [`InBus]		rt_in_4_4_r,
input wire signed [`InBus]		rt_in_4_4_i,

/*********************output**************************/
output wire signed [`InBus]		out_1_1_r,
output wire signed [`InBus]		out_1_1_i,
output wire signed [`InBus]		out_1_2_r,
output wire signed [`InBus]		out_1_2_i,
output wire signed [`InBus]		out_1_3_r,
output wire signed [`InBus]		out_1_3_i,
output wire signed [`InBus]		out_1_4_r,
output wire signed [`InBus]		out_1_4_i,
output wire signed [`InBus]		out_2_1_r,
output wire signed [`InBus]		out_2_1_i,
output wire signed [`InBus]		out_2_2_r,
output wire signed [`InBus]		out_2_2_i,
output wire signed [`InBus]		out_2_3_r,
output wire signed [`InBus]		out_2_3_i,
output wire signed [`InBus]		out_2_4_r,
output wire signed [`InBus]		out_2_4_i,
output wire signed [`InBus]		out_3_1_r,
output wire signed [`InBus]		out_3_1_i,
output wire signed [`InBus]		out_3_2_r,
output wire signed [`InBus]		out_3_2_i,
output wire signed [`InBus]		out_3_3_r,
output wire signed [`InBus]		out_3_3_i,
output wire signed [`InBus]		out_3_4_r,
output wire signed [`InBus]		out_3_4_i,
output wire signed [`InBus]		out_4_1_r,
output wire signed [`InBus]		out_4_1_i,
output wire signed [`InBus]		out_4_2_r,
output wire signed [`InBus]		out_4_2_i,
output wire signed [`InBus]		out_4_3_r,
output wire signed [`InBus]		out_4_3_i,
output wire signed [`InBus]		out_4_4_r,
output wire signed [`InBus]		out_4_4_i);


/************define wire reg**************/
wire signed [`SelBus] sel;

/****************port map*****************/
input_selecter_control input_selecter_control1 (clk,sel);
input_selecter input_selecter (sel,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_1_3_r,in_1_3_i,in_1_4_r,in_1_4_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,in_2_3_r,in_2_3_i,in_2_4_r,in_2_4_i,in_3_1_r,in_3_1_i,in_3_2_r,in_3_2_i,in_3_3_r,in_3_3_i,in_3_4_r,in_3_4_i,in_4_1_r,in_4_1_i,in_4_2_r,in_4_2_i,in_4_3_r,in_4_3_i,in_4_4_r,in_4_4_i,rt_in_1_1_r,rt_in_1_1_i,rt_in_1_2_r,rt_in_1_2_i,rt_in_1_3_r,rt_in_1_3_i,rt_in_1_4_r,rt_in_1_4_i,rt_in_2_1_r,rt_in_2_1_i,rt_in_2_2_r,rt_in_2_2_i,rt_in_2_3_r,rt_in_2_3_i,rt_in_2_4_r,rt_in_2_4_i,rt_in_3_1_r,rt_in_3_1_i,rt_in_3_2_r,rt_in_3_2_i,rt_in_3_3_r,rt_in_3_3_i,rt_in_3_4_r,rt_in_3_4_i,rt_in_4_1_r,rt_in_4_1_i,rt_in_4_2_r,rt_in_4_2_i,rt_in_4_3_r,rt_in_4_3_i,rt_in_4_4_r,rt_in_4_4_i,out_1_1_r,out_1_1_i,out_1_2_r,out_1_2_i,out_1_3_r,out_1_3_i,out_1_4_r,out_1_4_i,out_2_1_r,out_2_1_i,out_2_2_r,out_2_2_i,out_2_3_r,out_2_3_i,out_2_4_r,out_2_4_i,out_3_1_r,out_3_1_i,out_3_2_r,out_3_2_i,out_3_3_r,out_3_3_i,out_3_4_r,out_3_4_i,out_4_1_r,out_4_1_i,out_4_2_r,out_4_2_i,out_4_3_r,out_4_3_i,out_4_4_r,out_4_4_i);


endmodule
