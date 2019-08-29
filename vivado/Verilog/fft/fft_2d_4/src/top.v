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
output wire signed [`OutBus]		out_4_4_i

);

wire signed [`CalcTempBus]          temp_m1_1_1_r;
wire signed [`CalcTempBus]          temp_m1_1_1_i;
wire signed [`CalcTempBus]          temp_m1_1_2_r;
wire signed [`CalcTempBus]          temp_m1_1_2_i;
wire signed [`CalcTempBus]          temp_m1_1_3_r;
wire signed [`CalcTempBus]          temp_m1_1_3_i;
wire signed [`CalcTempBus]          temp_m1_1_4_r;
wire signed [`CalcTempBus]          temp_m1_1_4_i;
wire signed [`CalcTempBus]          temp_m1_2_1_r;
wire signed [`CalcTempBus]          temp_m1_2_1_i;
wire signed [`CalcTempBus]          temp_m1_2_2_r;
wire signed [`CalcTempBus]          temp_m1_2_2_i;
wire signed [`CalcTempBus]          temp_m1_2_3_r;
wire signed [`CalcTempBus]          temp_m1_2_3_i;
wire signed [`CalcTempBus]          temp_m1_2_4_r;
wire signed [`CalcTempBus]          temp_m1_2_4_i;
wire signed [`CalcTempBus]          temp_m1_3_1_r;
wire signed [`CalcTempBus]          temp_m1_3_1_i;
wire signed [`CalcTempBus]          temp_m1_3_2_r;
wire signed [`CalcTempBus]          temp_m1_3_2_i;
wire signed [`CalcTempBus]          temp_m1_3_3_r;
wire signed [`CalcTempBus]          temp_m1_3_3_i;
wire signed [`CalcTempBus]          temp_m1_3_4_r;
wire signed [`CalcTempBus]          temp_m1_3_4_i;
wire signed [`CalcTempBus]          temp_m1_4_1_r;
wire signed [`CalcTempBus]          temp_m1_4_1_i;
wire signed [`CalcTempBus]          temp_m1_4_2_r;
wire signed [`CalcTempBus]          temp_m1_4_2_i;
wire signed [`CalcTempBus]          temp_m1_4_3_r;
wire signed [`CalcTempBus]          temp_m1_4_3_i;
wire signed [`CalcTempBus]          temp_m1_4_4_r;
wire signed [`CalcTempBus]          temp_m1_4_4_i;
wire signed [`CalcTempBus]          temp_m2_1_1_r;
wire signed [`CalcTempBus]          temp_m2_1_1_i;
wire signed [`CalcTempBus]          temp_m2_1_2_r;
wire signed [`CalcTempBus]          temp_m2_1_2_i;
wire signed [`CalcTempBus]          temp_m2_1_3_r;
wire signed [`CalcTempBus]          temp_m2_1_3_i;
wire signed [`CalcTempBus]          temp_m2_1_4_r;
wire signed [`CalcTempBus]          temp_m2_1_4_i;
wire signed [`CalcTempBus]          temp_m2_2_1_r;
wire signed [`CalcTempBus]          temp_m2_2_1_i;
wire signed [`CalcTempBus]          temp_m2_2_2_r;
wire signed [`CalcTempBus]          temp_m2_2_2_i;
wire signed [`CalcTempBus]          temp_m2_2_3_r;
wire signed [`CalcTempBus]          temp_m2_2_3_i;
wire signed [`CalcTempBus]          temp_m2_2_4_r;
wire signed [`CalcTempBus]          temp_m2_2_4_i;
wire signed [`CalcTempBus]          temp_m2_3_1_r;
wire signed [`CalcTempBus]          temp_m2_3_1_i;
wire signed [`CalcTempBus]          temp_m2_3_2_r;
wire signed [`CalcTempBus]          temp_m2_3_2_i;
wire signed [`CalcTempBus]          temp_m2_3_3_r;
wire signed [`CalcTempBus]          temp_m2_3_3_i;
wire signed [`CalcTempBus]          temp_m2_3_4_r;
wire signed [`CalcTempBus]          temp_m2_3_4_i;
wire signed [`CalcTempBus]          temp_m2_4_1_r;
wire signed [`CalcTempBus]          temp_m2_4_1_i;
wire signed [`CalcTempBus]          temp_m2_4_2_r;
wire signed [`CalcTempBus]          temp_m2_4_2_i;
wire signed [`CalcTempBus]          temp_m2_4_3_r;
wire signed [`CalcTempBus]          temp_m2_4_3_i;
wire signed [`CalcTempBus]          temp_m2_4_4_r;
wire signed [`CalcTempBus]          temp_m2_4_4_i;

wire signed [`CalcTempBus]          temp_b1_1_1_r;
wire signed [`CalcTempBus]          temp_b1_1_1_i;
wire signed [`CalcTempBus]          temp_b1_1_2_r;
wire signed [`CalcTempBus]          temp_b1_1_2_i;
wire signed [`CalcTempBus]          temp_b1_1_3_r;
wire signed [`CalcTempBus]          temp_b1_1_3_i;
wire signed [`CalcTempBus]          temp_b1_1_4_r;
wire signed [`CalcTempBus]          temp_b1_1_4_i;
wire signed [`CalcTempBus]          temp_b1_2_1_r;
wire signed [`CalcTempBus]          temp_b1_2_1_i;
wire signed [`CalcTempBus]          temp_b1_2_2_r;
wire signed [`CalcTempBus]          temp_b1_2_2_i;
wire signed [`CalcTempBus]          temp_b1_2_3_r;
wire signed [`CalcTempBus]          temp_b1_2_3_i;
wire signed [`CalcTempBus]          temp_b1_2_4_r;
wire signed [`CalcTempBus]          temp_b1_2_4_i;
wire signed [`CalcTempBus]          temp_b1_3_1_r;
wire signed [`CalcTempBus]          temp_b1_3_1_i;
wire signed [`CalcTempBus]          temp_b1_3_2_r;
wire signed [`CalcTempBus]          temp_b1_3_2_i;
wire signed [`CalcTempBus]          temp_b1_3_3_r;
wire signed [`CalcTempBus]          temp_b1_3_3_i;
wire signed [`CalcTempBus]          temp_b1_3_4_r;
wire signed [`CalcTempBus]          temp_b1_3_4_i;
wire signed [`CalcTempBus]          temp_b1_4_1_r;
wire signed [`CalcTempBus]          temp_b1_4_1_i;
wire signed [`CalcTempBus]          temp_b1_4_2_r;
wire signed [`CalcTempBus]          temp_b1_4_2_i;
wire signed [`CalcTempBus]          temp_b1_4_3_r;
wire signed [`CalcTempBus]          temp_b1_4_3_i;
wire signed [`CalcTempBus]          temp_b1_4_4_r;
wire signed [`CalcTempBus]          temp_b1_4_4_i;
wire signed [`CalcTempBus]          temp_b2_1_1_r;
wire signed [`CalcTempBus]          temp_b2_1_1_i;
wire signed [`CalcTempBus]          temp_b2_1_2_r;
wire signed [`CalcTempBus]          temp_b2_1_2_i;
wire signed [`CalcTempBus]          temp_b2_1_3_r;
wire signed [`CalcTempBus]          temp_b2_1_3_i;
wire signed [`CalcTempBus]          temp_b2_1_4_r;
wire signed [`CalcTempBus]          temp_b2_1_4_i;
wire signed [`CalcTempBus]          temp_b2_2_1_r;
wire signed [`CalcTempBus]          temp_b2_2_1_i;
wire signed [`CalcTempBus]          temp_b2_2_2_r;
wire signed [`CalcTempBus]          temp_b2_2_2_i;
wire signed [`CalcTempBus]          temp_b2_2_3_r;
wire signed [`CalcTempBus]          temp_b2_2_3_i;
wire signed [`CalcTempBus]          temp_b2_2_4_r;
wire signed [`CalcTempBus]          temp_b2_2_4_i;
wire signed [`CalcTempBus]          temp_b2_3_1_r;
wire signed [`CalcTempBus]          temp_b2_3_1_i;
wire signed [`CalcTempBus]          temp_b2_3_2_r;
wire signed [`CalcTempBus]          temp_b2_3_2_i;
wire signed [`CalcTempBus]          temp_b2_3_3_r;
wire signed [`CalcTempBus]          temp_b2_3_3_i;
wire signed [`CalcTempBus]          temp_b2_3_4_r;
wire signed [`CalcTempBus]          temp_b2_3_4_i;
wire signed [`CalcTempBus]          temp_b2_4_1_r;
wire signed [`CalcTempBus]          temp_b2_4_1_i;
wire signed [`CalcTempBus]          temp_b2_4_2_r;
wire signed [`CalcTempBus]          temp_b2_4_2_i;
wire signed [`CalcTempBus]          temp_b2_4_3_r;
wire signed [`CalcTempBus]          temp_b2_4_3_i;
wire signed [`CalcTempBus]          temp_b2_4_4_r;
wire signed [`CalcTempBus]          temp_b2_4_4_i;

/******************port map******************/
MULT MULT1 (clk,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,temp_m1_1_1_r,temp_m1_1_1_i,temp_m1_1_2_r,temp_m1_1_2_i,temp_m1_2_1_r,temp_m1_2_1_i,temp_m1_2_2_r,temp_m1_2_2_i,`W0_real,`W0_imag,`W0_real,`W0_imag,`W0_real,`W0_imag);
butterfly butterfly1 (clk,temp_m1_1_1_r,temp_m1_1_1_i,temp_m1_1_2_r,temp_m1_1_2_i,temp_m1_2_1_r,temp_m1_2_1_i,temp_m1_2_2_r,temp_m1_2_2_i,temp_b1_1_1_r,temp_b1_1_1_i,temp_b1_1_2_r,temp_b1_1_2_i,temp_b1_2_1_r,temp_b1_2_1_i,temp_b1_2_2_r,temp_b1_2_2_i);
MULT MULT2 (clk,in_1_3_r,in_1_3_i,in_1_4_r,in_1_4_i,in_2_3_r,in_2_3_i,in_2_4_r,in_2_4_i,temp_m1_1_3_r,temp_m1_1_3_i,temp_m1_1_4_r,temp_m1_1_4_i,temp_m1_2_3_r,temp_m1_2_3_i,temp_m1_2_4_r,temp_m1_2_4_i,`W0_real,`W0_imag,`W0_real,`W0_imag,`W0_real,`W0_imag);
butterfly butterfly2 (clk,temp_m1_1_3_r,temp_m1_1_3_i,temp_m1_1_4_r,temp_m1_1_4_i,temp_m1_2_3_r,temp_m1_2_3_i,temp_m1_2_4_r,temp_m1_2_4_i,temp_b1_1_3_r,temp_b1_1_3_i,temp_b1_1_4_r,temp_b1_1_4_i,temp_b1_2_3_r,temp_b1_2_3_i,temp_b1_2_4_r,temp_b1_2_4_i);
MULT MULT3 (clk,in_3_1_r,in_3_1_i,in_3_2_r,in_3_2_i,in_4_1_r,in_4_1_i,in_4_2_r,in_4_2_i,temp_m1_3_1_r,temp_m1_3_1_i,temp_m1_3_2_r,temp_m1_3_2_i,temp_m1_4_1_r,temp_m1_4_1_i,temp_m1_4_2_r,temp_m1_4_2_i,`W0_real,`W0_imag,`W0_real,`W0_imag,`W0_real,`W0_imag);
butterfly butterfly3 (clk,temp_m1_3_1_r,temp_m1_3_1_i,temp_m1_3_2_r,temp_m1_3_2_i,temp_m1_4_1_r,temp_m1_4_1_i,temp_m1_4_2_r,temp_m1_4_2_i,temp_b1_3_1_r,temp_b1_3_1_i,temp_b1_3_2_r,temp_b1_3_2_i,temp_b1_4_1_r,temp_b1_4_1_i,temp_b1_4_2_r,temp_b1_4_2_i);
MULT MULT4 (clk,in_3_3_r,in_3_3_i,in_3_4_r,in_3_4_i,in_4_3_r,in_4_3_i,in_4_4_r,in_4_4_i,temp_m1_3_3_r,temp_m1_3_3_i,temp_m1_3_4_r,temp_m1_3_4_i,temp_m1_4_3_r,temp_m1_4_3_i,temp_m1_4_4_r,temp_m1_4_4_i,`W0_real,`W0_imag,`W0_real,`W0_imag,`W0_real,`W0_imag);
butterfly butterfly4 (clk,temp_m1_3_3_r,temp_m1_3_3_i,temp_m1_3_4_r,temp_m1_3_4_i,temp_m1_4_3_r,temp_m1_4_3_i,temp_m1_4_4_r,temp_m1_4_4_i,temp_b1_3_3_r,temp_b1_3_3_i,temp_b1_3_4_r,temp_b1_3_4_i,temp_b1_4_3_r,temp_b1_4_3_i,temp_b1_4_4_r,temp_b1_4_4_i);
MULT MULT5 (clk,temp_b1_1_1_r,temp_b1_1_1_i,temp_b1_1_3_r,temp_b1_1_3_i,temp_b1_3_1_r,temp_b1_3_1_i,temp_b1_3_3_r,temp_b1_3_3_i,temp_m2_1_1_r,temp_m2_1_1_i,temp_m2_1_3_r,temp_m2_1_3_i,temp_m2_3_1_r,temp_m2_3_1_i,temp_m2_3_3_r,temp_m2_3_3_i,`W0_real,`W0_imag,`W0_real,`W0_imag,`W0_real,`W0_imag);
butterfly butterfly5 (clk,temp_m2_1_1_r,temp_m2_1_1_i,temp_m2_1_3_r,temp_m2_1_3_i,temp_m2_3_1_r,temp_m2_3_1_i,temp_m2_3_3_r,temp_m2_3_3_i,temp_b2_1_1_r,temp_b2_1_1_i,temp_b2_1_3_r,temp_b2_1_3_i,temp_b2_3_1_r,temp_b2_3_1_i,temp_b2_3_3_r,temp_b2_3_3_i);
MULT MULT6 (clk,temp_b1_1_2_r,temp_b1_1_2_i,temp_b1_1_4_r,temp_b1_1_4_i,temp_b1_3_2_r,temp_b1_3_2_i,temp_b1_3_4_r,temp_b1_3_4_i,temp_m2_1_2_r,temp_m2_1_2_i,temp_m2_1_4_r,temp_m2_1_4_i,temp_m2_3_2_r,temp_m2_3_2_i,temp_m2_3_4_r,temp_m2_3_4_i,`W1_real,`W1_imag,`W0_real,`W0_imag,`W1_real,`W1_imag);
butterfly butterfly6 (clk,temp_m2_1_2_r,temp_m2_1_2_i,temp_m2_1_4_r,temp_m2_1_4_i,temp_m2_3_2_r,temp_m2_3_2_i,temp_m2_3_4_r,temp_m2_3_4_i,temp_b2_1_2_r,temp_b2_1_2_i,temp_b2_1_4_r,temp_b2_1_4_i,temp_b2_3_2_r,temp_b2_3_2_i,temp_b2_3_4_r,temp_b2_3_4_i);
MULT MULT7 (clk,temp_b1_2_1_r,temp_b1_2_1_i,temp_b1_2_3_r,temp_b1_2_3_i,temp_b1_4_1_r,temp_b1_4_1_i,temp_b1_4_3_r,temp_b1_4_3_i,temp_m2_2_1_r,temp_m2_2_1_i,temp_m2_2_3_r,temp_m2_2_3_i,temp_m2_4_1_r,temp_m2_4_1_i,temp_m2_4_3_r,temp_m2_4_3_i,`W0_real,`W0_imag,`W1_real,`W1_imag,`W1_real,`W1_imag);
butterfly butterfly7 (clk,temp_m2_2_1_r,temp_m2_2_1_i,temp_m2_2_3_r,temp_m2_2_3_i,temp_m2_4_1_r,temp_m2_4_1_i,temp_m2_4_3_r,temp_m2_4_3_i,temp_b2_2_1_r,temp_b2_2_1_i,temp_b2_2_3_r,temp_b2_2_3_i,temp_b2_4_1_r,temp_b2_4_1_i,temp_b2_4_3_r,temp_b2_4_3_i);
MULT MULT8 (clk,temp_b1_2_2_r,temp_b1_2_2_i,temp_b1_2_4_r,temp_b1_2_4_i,temp_b1_4_2_r,temp_b1_4_2_i,temp_b1_4_4_r,temp_b1_4_4_i,temp_m2_2_2_r,temp_m2_2_2_i,temp_m2_2_4_r,temp_m2_2_4_i,temp_m2_4_2_r,temp_m2_4_2_i,temp_m2_4_4_r,temp_m2_4_4_i,`W1_real,`W1_imag,`W1_real,`W1_imag,`W2_real,`W2_imag);
butterfly butterfly8 (clk,temp_m2_2_2_r,temp_m2_2_2_i,temp_m2_2_4_r,temp_m2_2_4_i,temp_m2_4_2_r,temp_m2_4_2_i,temp_m2_4_4_r,temp_m2_4_4_i,temp_b2_2_2_r,temp_b2_2_2_i,temp_b2_2_4_r,temp_b2_2_4_i,temp_b2_4_2_r,temp_b2_4_2_i,temp_b2_4_4_r,temp_b2_4_4_i);


assign out_1_1_r = temp_b2_1_1_r;
assign out_1_1_i = temp_b2_1_1_i;
assign out_1_2_r = temp_b2_1_2_r;
assign out_1_2_i = temp_b2_1_2_i;
assign out_1_3_r = temp_b2_1_3_r;
assign out_1_3_i = temp_b2_1_3_i;
assign out_1_4_r = temp_b2_1_4_r;
assign out_1_4_i = temp_b2_1_4_i;
assign out_2_1_r = temp_b2_2_1_r;
assign out_2_1_i = temp_b2_2_1_i;
assign out_2_2_r = temp_b2_2_2_r;
assign out_2_2_i = temp_b2_2_2_i;
assign out_2_3_r = temp_b2_2_3_r;
assign out_2_3_i = temp_b2_2_3_i;
assign out_2_4_r = temp_b2_2_4_r;
assign out_2_4_i = temp_b2_2_4_i;
assign out_3_1_r = temp_b2_3_1_r;
assign out_3_1_i = temp_b2_3_1_i;
assign out_3_2_r = temp_b2_3_2_r;
assign out_3_2_i = temp_b2_3_2_i;
assign out_3_3_r = temp_b2_3_3_r;
assign out_3_3_i = temp_b2_3_3_i;
assign out_3_4_r = temp_b2_3_4_r;
assign out_3_4_i = temp_b2_3_4_i;
assign out_4_1_r = temp_b2_4_1_r;
assign out_4_1_i = temp_b2_4_1_i;
assign out_4_2_r = temp_b2_4_2_r;
assign out_4_2_i = temp_b2_4_2_i;
assign out_4_3_r = temp_b2_4_3_r;
assign out_4_3_i = temp_b2_4_3_i;
assign out_4_4_r = temp_b2_4_4_r;
assign out_4_4_i = temp_b2_4_4_i;



endmodule
