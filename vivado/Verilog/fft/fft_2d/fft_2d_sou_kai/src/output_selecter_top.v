`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 17:44:15
// Design Name: 
// Module Name: output_selecter_top
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

module output_selecter_top(

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

/**************final result***************/
output wire signed [`OutBus]		out_1_1_r,
output wire signed [`OutBus]		out_1_1_i,
output wire signed [`OutBus]		out_1_2_r,
output wire signed [`OutBus]		out_1_2_i,
output wire signed [`OutBus]		out_1_3_r,
output wire signed [`OutBus]		out_1_3_i,
output wire signed [`OutBus]		out_1_4_r,
output wire signed [`OutBus]		out_1_4_i,
output wire signed [`OutBus]		out_2_1_r,
output wire signed [`OutBus]		out_2_1_i,
output wire signed [`OutBus]		out_2_2_r,
output wire signed [`OutBus]		out_2_2_i,
output wire signed [`OutBus]		out_2_3_r,
output wire signed [`OutBus]		out_2_3_i,
output wire signed [`OutBus]		out_2_4_r,
output wire signed [`OutBus]		out_2_4_i,
output wire signed [`OutBus]		out_3_1_r,
output wire signed [`OutBus]		out_3_1_i,
output wire signed [`OutBus]		out_3_2_r,
output wire signed [`OutBus]		out_3_2_i,
output wire signed [`OutBus]		out_3_3_r,
output wire signed [`OutBus]		out_3_3_i,
output wire signed [`OutBus]		out_3_4_r,
output wire signed [`OutBus]		out_3_4_i,
output wire signed [`OutBus]		out_4_1_r,
output wire signed [`OutBus]		out_4_1_i,
output wire signed [`OutBus]		out_4_2_r,
output wire signed [`OutBus]		out_4_2_i,
output wire signed [`OutBus]		out_4_3_r,
output wire signed [`OutBus]		out_4_3_i,
output wire signed [`OutBus]		out_4_4_r,
output wire signed [`OutBus]		out_4_4_i,

/**************output_selecter => input_selecter*******************/
output wire signed [`OutBus]		rt_out_1_1_r,
output wire signed [`OutBus]		rt_out_1_1_i,
output wire signed [`OutBus]		rt_out_1_2_r,
output wire signed [`OutBus]		rt_out_1_2_i,
output wire signed [`OutBus]		rt_out_1_3_r,
output wire signed [`OutBus]		rt_out_1_3_i,
output wire signed [`OutBus]		rt_out_1_4_r,
output wire signed [`OutBus]		rt_out_1_4_i,
output wire signed [`OutBus]		rt_out_2_1_r,
output wire signed [`OutBus]		rt_out_2_1_i,
output wire signed [`OutBus]		rt_out_2_2_r,
output wire signed [`OutBus]		rt_out_2_2_i,
output wire signed [`OutBus]		rt_out_2_3_r,
output wire signed [`OutBus]		rt_out_2_3_i,
output wire signed [`OutBus]		rt_out_2_4_r,
output wire signed [`OutBus]		rt_out_2_4_i,
output wire signed [`OutBus]		rt_out_3_1_r,
output wire signed [`OutBus]		rt_out_3_1_i,
output wire signed [`OutBus]		rt_out_3_2_r,
output wire signed [`OutBus]		rt_out_3_2_i,
output wire signed [`OutBus]		rt_out_3_3_r,
output wire signed [`OutBus]		rt_out_3_3_i,
output wire signed [`OutBus]		rt_out_3_4_r,
output wire signed [`OutBus]		rt_out_3_4_i,
output wire signed [`OutBus]		rt_out_4_1_r,
output wire signed [`OutBus]		rt_out_4_1_i,
output wire signed [`OutBus]		rt_out_4_2_r,
output wire signed [`OutBus]		rt_out_4_2_i,
output wire signed [`OutBus]		rt_out_4_3_r,
output wire signed [`OutBus]		rt_out_4_3_i,
output wire signed [`OutBus]		rt_out_4_4_r,
output wire signed [`OutBus]		rt_out_4_4_i
);




endmodule
