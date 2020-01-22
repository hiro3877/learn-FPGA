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

module top_io(
input wire clk,
input wire signed [`InBus]		in_r,
input wire signed [`InBus]		in_i,
output wire signed [`OutBus]		out_r,
output wire signed [`OutBus]		out_i

);

wire signed [`InBus]		in_1_1_r;
wire signed [`InBus]		in_1_1_i;
wire signed [`InBus]		in_1_2_r;
wire signed [`InBus]		in_1_2_i;
wire signed [`InBus]		in_1_3_r;
wire signed [`InBus]		in_1_3_i;
wire signed [`InBus]		in_1_4_r;
wire signed [`InBus]		in_1_4_i;
wire signed [`InBus]		in_2_1_r;
wire signed [`InBus]		in_2_1_i;
wire signed [`InBus]		in_2_2_r;
wire signed [`InBus]		in_2_2_i;
wire signed [`InBus]		in_2_3_r;
wire signed [`InBus]		in_2_3_i;
wire signed [`InBus]		in_2_4_r;
wire signed [`InBus]		in_2_4_i;
wire signed [`InBus]		in_3_1_r;
wire signed [`InBus]		in_3_1_i;
wire signed [`InBus]		in_3_2_r;
wire signed [`InBus]		in_3_2_i;
wire signed [`InBus]		in_3_3_r;
wire signed [`InBus]		in_3_3_i;
wire signed [`InBus]		in_3_4_r;
wire signed [`InBus]		in_3_4_i;
wire signed [`InBus]		in_4_1_r;
wire signed [`InBus]		in_4_1_i;
wire signed [`InBus]		in_4_2_r;
wire signed [`InBus]		in_4_2_i;
wire signed [`InBus]		in_4_3_r;
wire signed [`InBus]		in_4_3_i;
wire signed [`InBus]		in_4_4_r;
wire signed [`InBus]		in_4_4_i;

wire signed [`OutBus]		out_1_1_r;
wire signed [`OutBus]		out_1_1_i;
wire signed [`OutBus]		out_1_2_r;
wire signed [`OutBus]		out_1_2_i;
wire signed [`OutBus]		out_1_3_r;
wire signed [`OutBus]		out_1_3_i;
wire signed [`OutBus]		out_1_4_r;
wire signed [`OutBus]		out_1_4_i;
wire signed [`OutBus]		out_2_1_r;
wire signed [`OutBus]		out_2_1_i;
wire signed [`OutBus]		out_2_2_r;
wire signed [`OutBus]		out_2_2_i;
wire signed [`OutBus]		out_2_3_r;
wire signed [`OutBus]		out_2_3_i;
wire signed [`OutBus]		out_2_4_r;
wire signed [`OutBus]		out_2_4_i;
wire signed [`OutBus]		out_3_1_r;
wire signed [`OutBus]		out_3_1_i;
wire signed [`OutBus]		out_3_2_r;
wire signed [`OutBus]		out_3_2_i;
wire signed [`OutBus]		out_3_3_r;
wire signed [`OutBus]		out_3_3_i;
wire signed [`OutBus]		out_3_4_r;
wire signed [`OutBus]		out_3_4_i;
wire signed [`OutBus]		out_4_1_r;
wire signed [`OutBus]		out_4_1_i;
wire signed [`OutBus]		out_4_2_r;
wire signed [`OutBus]		out_4_2_i;
wire signed [`OutBus]		out_4_3_r;
wire signed [`OutBus]		out_4_3_i;
wire signed [`OutBus]		out_4_4_r;
wire signed [`OutBus]		out_4_4_i;

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

/*****************connection in in_buf******************/

/*
always @(clk) begin

in_1_1_r <= in_r;
in_1_1_i <= in_i;
in_1_2_r <= in_r;
in_1_2_i <= in_i;
in_1_3_r <= in_r;
in_1_3_i <= in_i;
in_1_4_r <= in_r;
in_1_4_i <= in_i;
in_2_1_r <= in_r;
in_2_1_i <= in_i;
in_2_2_r <= in_r;
in_2_2_i <= in_i;
in_2_3_r <= in_r;
in_2_3_i <= in_i;
in_2_4_r <= in_r;
in_2_4_i <= in_i;
in_3_1_r <= in_r;
in_3_1_i <= in_i;
in_3_2_r <= in_r;
in_3_2_i <= in_i;
in_3_3_r <= in_r;
in_3_3_i <= in_i;
in_3_4_r <= in_r;
in_3_4_i <= in_i;
in_4_1_r <= in_r;
in_4_1_i <= in_i;
in_4_2_r <= in_r;
in_4_2_i <= in_i;
in_4_3_r <= in_r;
in_4_3_i <= in_i;
in_4_4_r <= in_r;
in_4_4_i <= in_i;

end
*/






/******************port map******************/
delay delay_in_1_1_r (clk,5'd1,in_r,in_1_1_r);
delay delay_in_1_1_i (clk,5'd1,in_i,in_1_1_i);
delay delay_in_1_2_r (clk,5'd2,in_r,in_1_2_r);
delay delay_in_1_2_i (clk,5'd2,in_i,in_1_2_i);
delay delay_in_1_3_r (clk,5'd3,in_r,in_1_3_r);
delay delay_in_1_3_i (clk,5'd3,in_i,in_1_3_i);
delay delay_in_1_4_r (clk,5'd4,in_r,in_1_4_r);
delay delay_in_1_4_i (clk,5'd4,in_i,in_1_4_i);

delay delay_in_2_1_r (clk,5'd5,in_r,in_2_1_r);
delay delay_in_2_1_i (clk,5'd5,in_i,in_2_1_i);
delay delay_in_2_2_r (clk,5'd6,in_r,in_2_2_r);
delay delay_in_2_2_i (clk,5'd6,in_i,in_2_2_i);
delay delay_in_2_3_r (clk,5'd7,in_r,in_2_3_r);
delay delay_in_2_3_i (clk,5'd7,in_i,in_2_3_i);
delay delay_in_2_4_r (clk,5'd8,in_r,in_2_4_r);
delay delay_in_2_4_i (clk,5'd8,in_i,in_2_4_i);

delay delay_in_3_1_r (clk,5'd9,in_r,in_3_1_r);
delay delay_in_3_1_i (clk,5'd9,in_i,in_3_1_i);
delay delay_in_3_2_r (clk,5'd10,in_r,in_3_2_r);
delay delay_in_3_2_i (clk,5'd10,in_i,in_3_2_i);
delay delay_in_3_3_r (clk,5'd11,in_r,in_3_3_r);
delay delay_in_3_3_i (clk,5'd11,in_i,in_3_3_i);
delay delay_in_3_4_r (clk,5'd12,in_r,in_3_4_r);
delay delay_in_3_4_i (clk,5'd12,in_i,in_3_4_i);

delay delay_in_4_1_r (clk,5'd13,in_r,in_4_1_r);
delay delay_in_4_1_i (clk,5'd13,in_i,in_4_1_i);
delay delay_in_4_2_r (clk,5'd14,in_r,in_4_2_r);
delay delay_in_4_2_i (clk,5'd14,in_i,in_4_2_i);
delay delay_in_4_3_r (clk,5'd15,in_r,in_4_3_r);
delay delay_in_4_3_i (clk,5'd15,in_i,in_4_3_i);
delay delay_in_4_4_r (clk,5'd16,in_r,in_4_4_r);
delay delay_in_4_4_i (clk,5'd16,in_i,in_4_4_i);



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

/*
assign in_1_1_r = in_r;
assign in_1_1_i = in_i;
assign in_1_2_r = in_r;
assign in_1_2_i = in_i;
assign in_1_3_r = in_r;
assign in_1_3_i = in_i;
assign in_1_4_r = in_r;
assign in_1_4_i = in_i;
assign in_2_1_r = in_r;
assign in_2_1_i = in_i;
assign in_2_2_r = in_r;
assign in_2_2_i = in_i;
assign in_2_3_r = in_r;
assign in_2_3_i = in_i;
assign in_2_4_r = in_r;
assign in_2_4_i = in_i;
assign in_3_1_r = in_r;
assign in_3_1_i = in_i;
assign in_3_2_r = in_r;
assign in_3_2_i = in_i;
assign in_3_3_r = in_r;
assign in_3_3_i = in_i;
assign in_3_4_r = in_r;
assign in_3_4_i = in_i;
assign in_4_1_r = in_r;
assign in_4_1_i = in_i;
assign in_4_2_r = in_r;
assign in_4_2_i = in_i;
assign in_4_3_r = in_r;
assign in_4_3_i = in_i;
assign in_4_4_r = in_r;
assign in_4_4_i = in_i;
*/

delay delay_out_1_1_r (clk,5'd1,temp_b2_1_1_r,out_1_1_r);
delay delay_out_1_1_i (clk,5'd1,temp_b2_1_1_i,out_1_1_i);
delay delay_out_1_2_r (clk,5'd2,temp_b2_1_2_r,out_1_2_r);
delay delay_out_1_2_i (clk,5'd2,temp_b2_1_2_i,out_1_2_i);
delay delay_out_1_3_r (clk,5'd3,temp_b2_1_3_r,out_1_3_r);
delay delay_out_1_3_i (clk,5'd3,temp_b2_1_3_i,out_1_3_i);
delay delay_out_1_4_r (clk,5'd4,temp_b2_1_4_r,out_1_4_r);
delay delay_out_1_4_i (clk,5'd4,temp_b2_1_4_i,out_1_4_i);

delay delay_out_2_1_r (clk,5'd5,temp_b2_2_1_r,out_2_1_r);
delay delay_out_2_1_i (clk,5'd5,temp_b2_2_1_i,out_2_1_i);
delay delay_out_2_2_r (clk,5'd6,temp_b2_2_2_r,out_2_2_r);
delay delay_out_2_2_i (clk,5'd6,temp_b2_2_2_i,out_2_2_i);
delay delay_out_2_3_r (clk,5'd7,temp_b2_2_3_r,out_2_3_r);
delay delay_out_2_3_i (clk,5'd7,temp_b2_2_3_i,out_2_3_i);
delay delay_out_2_4_r (clk,5'd8,temp_b2_2_4_r,out_2_4_r);
delay delay_out_2_4_i (clk,5'd8,temp_b2_2_4_i,out_2_4_i);

delay delay_out_3_1_r (clk,5'd9,temp_b2_3_1_r,out_3_1_r);
delay delay_out_3_1_i (clk,5'd9,temp_b2_3_1_i,out_3_1_i);
delay delay_out_3_2_r (clk,5'd10,temp_b2_3_2_r,out_3_2_r);
delay delay_out_3_2_i (clk,5'd10,temp_b2_3_2_i,out_3_2_i);
delay delay_out_3_3_r (clk,5'd11,temp_b2_3_3_r,out_3_3_r);
delay delay_out_3_3_i (clk,5'd11,temp_b2_3_3_i,out_3_3_i);
delay delay_out_3_4_r (clk,5'd12,temp_b2_3_4_r,out_3_4_r);
delay delay_out_3_4_i (clk,5'd12,temp_b2_3_4_i,out_3_4_i);

delay delay_out_4_1_r (clk,5'd13,temp_b2_4_1_r,out_4_1_r);
delay delay_out_4_1_i (clk,5'd13,temp_b2_4_1_i,out_4_1_i);
delay delay_out_4_2_r (clk,5'd14,temp_b2_4_2_r,out_4_2_r);
delay delay_out_4_2_i (clk,5'd14,temp_b2_4_2_i,out_4_2_i);
delay delay_out_4_3_r (clk,5'd15,temp_b2_4_3_r,out_4_3_r);
delay delay_out_4_3_i (clk,5'd15,temp_b2_4_3_i,out_4_3_i);
delay delay_out_4_4_r (clk,5'd16,temp_b2_4_4_r,out_4_4_r);
delay delay_out_4_4_i (clk,5'd16,temp_b2_4_4_i,out_4_4_i);

/*
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
*/


/************out => mux => out_r,out_i 1clock*************/
mux mux_r (clk,out_1_1_r,out_1_2_r,out_1_3_r,out_1_4_r,out_2_1_r,out_2_2_r,out_2_3_r,out_2_4_r,out_3_1_r,out_3_2_r,out_3_3_r,out_3_4_r,out_4_1_r,out_4_2_r,out_4_3_r,out_4_4_r,out_r);
mux mux_i (clk,out_1_1_i,out_1_2_i,out_1_3_i,out_1_4_i,out_2_1_i,out_2_2_i,out_2_3_i,out_2_4_i,out_3_1_i,out_3_2_i,out_3_3_i,out_3_4_i,out_4_1_i,out_4_2_i,out_4_3_i,out_4_4_i,out_i);


/*
assign out_r = out_1_1_r;
assign out_i = out_1_1_i;
*/


/*
delay delay_out_1_1_r (clk,5'd1,out_1_1_r,out_r);
delay delay_out_1_1_i (clk,5'd1,out_1_1_i,out_i);
delay delay_out_1_2_r (clk,5'd2,out_1_2_r,out_r);
delay delay_out_1_2_i (clk,5'd2,out_1_2_i,out_i);
delay delay_out_1_3_r (clk,5'd3,out_1_3_r,out_r);
delay delay_out_1_3_i (clk,5'd3,out_1_3_i,out_i);
delay delay_out_1_4_r (clk,5'd4,out_1_4_r,out_r);
delay delay_out_1_4_i (clk,5'd4,out_1_4_i,out_i);

delay delay_out_2_1_r (clk,5'd5,out_2_1_r,out_r);
delay delay_out_2_1_i (clk,5'd5,out_2_1_i,out_i);
delay delay_out_2_2_r (clk,5'd6,out_2_2_r,out_r);
delay delay_out_2_2_i (clk,5'd6,out_2_2_i,out_i);
delay delay_out_2_3_r (clk,5'd7,out_2_3_r,out_r);
delay delay_out_2_3_i (clk,5'd7,out_2_3_i,out_i);
delay delay_out_2_4_r (clk,5'd8,out_2_4_r,out_r);
delay delay_out_2_4_i (clk,5'd8,out_2_4_i,out_i);

delay delay_out_3_1_r (clk,5'd9,out_3_1_r,out_r);
delay delay_out_3_1_i (clk,5'd9,out_3_1_i,out_i);
delay delay_out_3_2_r (clk,5'd10,out_3_2_r,out_r);
delay delay_out_3_2_i (clk,5'd10,out_3_2_i,out_i);
delay delay_out_3_3_r (clk,5'd11,out_3_3_r,out_r);
delay delay_out_3_3_i (clk,5'd11,out_3_3_i,out_i);
delay delay_out_3_4_r (clk,5'd12,out_3_4_r,out_r);
delay delay_out_3_4_i (clk,5'd12,out_3_4_i,out_i);

delay delay_out_4_1_r (clk,5'd13,out_4_1_r,out_r);
delay delay_out_4_1_i (clk,5'd13,out_4_1_i,out_i);
delay delay_out_4_2_r (clk,5'd14,out_4_2_r,out_r);
delay delay_out_4_2_i (clk,5'd14,out_4_2_i,out_i);
delay delay_out_4_3_r (clk,5'd15,out_4_3_r,out_r);
delay delay_out_4_3_i (clk,5'd15,out_4_3_i,out_i);
delay delay_out_4_4_r (clk,5'd16,out_4_4_r,out_r);
delay delay_out_4_4_i (clk,5'd16,out_4_4_i,out_i);
*/


endmodule
