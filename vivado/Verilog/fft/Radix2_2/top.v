`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/20 20:43:41
// Design Name: 
// Module Name: top
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
/////////////////////////////////////////////////////////////////////////////////

`include "./nettype.h"
`include "./std_define.h"

module top(
input wire		clk,

input wire signed [`InBus]		in_1_1_r,
input wire signed [`InBus]		in_1_1_i,
input wire signed [`InBus]		in_1_2_r,
input wire signed [`InBus]		in_1_2_i,
input wire signed [`InBus]		in_2_1_r,
input wire signed [`InBus]		in_2_1_i,
input wire signed [`InBus]		in_2_2_r,
input wire signed [`InBus]		in_2_2_i,

output wire signed [`OutBus]		out_1_1_r,
output wire signed [`OutBus]		out_1_1_i,
output wire signed [`OutBus]		out_1_2_r,
output wire signed [`OutBus]		out_1_2_i,
output wire signed [`OutBus]		out_2_1_r,
output wire signed [`OutBus]		out_2_1_i,
output wire signed [`OutBus]		out_2_2_r,
output wire signed [`OutBus]		out_2_2_i

);

/************************temp MUX butterfly***********************/
wire signed [`CalcTempBus]          temp_m1_1_1_r;
wire signed [`CalcTempBus]          temp_m1_1_1_i;
wire signed [`CalcTempBus]          temp_m1_1_2_r;
wire signed [`CalcTempBus]          temp_m1_1_2_i;
wire signed [`CalcTempBus]          temp_m1_2_1_r;
wire signed [`CalcTempBus]          temp_m1_2_1_i;
wire signed [`CalcTempBus]          temp_m1_2_2_r;
wire signed [`CalcTempBus]          temp_m1_2_2_i;

wire signed [`CalcTempBus]          temp_b1_1_1_r;
wire signed [`CalcTempBus]          temp_b1_1_1_i;
wire signed [`CalcTempBus]          temp_b1_1_2_r;
wire signed [`CalcTempBus]          temp_b1_1_2_i;
wire signed [`CalcTempBus]          temp_b1_2_1_r;
wire signed [`CalcTempBus]          temp_b1_2_1_i;
wire signed [`CalcTempBus]          temp_b1_2_2_r;
wire signed [`CalcTempBus]          temp_b1_2_2_i;

/******************port map******************/
MULT MULT1 (clk,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,temp_m1_1_1_r,temp_m1_1_1_i,temp_m1_1_2_r,temp_m1_1_2_i,temp_m1_2_1_r,temp_m1_2_1_i,temp_m1_2_2_r,temp_m1_2_2_i,`W0_real,`W0_imag,`W0_real,`W0_imag,`W0_real,`W0_imag);
butterfly butterfly1 (clk,temp_m1_1_1_r,temp_m1_1_1_i,temp_m1_1_2_r,temp_m1_1_2_i,temp_m1_2_1_r,temp_m1_2_1_i,temp_m1_2_2_r,temp_m1_2_2_i,temp_b1_1_1_r,temp_b1_1_1_i,temp_b1_1_2_r,temp_b1_1_2_i,temp_b1_2_1_r,temp_b1_2_1_i,temp_b1_2_2_r,temp_b1_2_2_i);

/******************out assgin*******************/


assign out_1_1_r = temp_b1_1_1_r;
assign out_1_1_i = temp_b1_1_1_i;
assign out_1_2_r = temp_b1_1_2_r;
assign out_1_2_i = temp_b1_1_2_i;
assign out_2_1_r = temp_b1_2_1_r;
assign out_2_1_i = temp_b1_2_1_i;
assign out_2_2_r = temp_b1_2_2_r;
assign out_2_2_i = temp_b1_2_2_i;


endmodule
