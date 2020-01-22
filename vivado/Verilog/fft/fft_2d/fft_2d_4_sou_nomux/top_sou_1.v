`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/06 17:50:34
// Design Name: 
// Module Name: top_sou
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

//remove output_selecter

`include "./nettype.h"
`include "./std_define.h"

module top_sou_1(
input wire clk,
input wire signed [`InBus]		in_r,
input wire signed [`InBus]		in_i,
output wire signed [`OutBus]		out_r,
output wire signed [`OutBus]		out_i
);


/**********input => input_selecter************/
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

/************output**************/
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

/************input_selecter => Radix2-2*****************/
wire signed [`OutBus]		I_out_1_1_r;
wire signed [`OutBus]		I_out_1_1_i;
wire signed [`OutBus]		I_out_1_2_r;
wire signed [`OutBus]		I_out_1_2_i;
wire signed [`OutBus]		I_out_1_3_r;
wire signed [`OutBus]		I_out_1_3_i;
wire signed [`OutBus]		I_out_1_4_r;
wire signed [`OutBus]		I_out_1_4_i;
wire signed [`OutBus]		I_out_2_1_r;
wire signed [`OutBus]		I_out_2_1_i;
wire signed [`OutBus]		I_out_2_2_r;
wire signed [`OutBus]		I_out_2_2_i;
wire signed [`OutBus]		I_out_2_3_r;
wire signed [`OutBus]		I_out_2_3_i;
wire signed [`OutBus]		I_out_2_4_r;
wire signed [`OutBus]		I_out_2_4_i;
wire signed [`OutBus]		I_out_3_1_r;
wire signed [`OutBus]		I_out_3_1_i;
wire signed [`OutBus]		I_out_3_2_r;
wire signed [`OutBus]		I_out_3_2_i;
wire signed [`OutBus]		I_out_3_3_r;
wire signed [`OutBus]		I_out_3_3_i;
wire signed [`OutBus]		I_out_3_4_r;
wire signed [`OutBus]		I_out_3_4_i;
wire signed [`OutBus]		I_out_4_1_r;
wire signed [`OutBus]		I_out_4_1_i;
wire signed [`OutBus]		I_out_4_2_r;
wire signed [`OutBus]		I_out_4_2_i;
wire signed [`OutBus]		I_out_4_3_r;
wire signed [`OutBus]		I_out_4_3_i;
wire signed [`OutBus]		I_out_4_4_r;
wire signed [`OutBus]		I_out_4_4_i;

/**************W_real , W_imag*************/
wire signed [`WBus] W_real_1_2;
wire signed [`WBus] W_imag_1_2;
wire signed [`WBus] W_real_1_3;
wire signed [`WBus] W_imag_1_3;
wire signed [`WBus] W_real_1_4;
wire signed [`WBus] W_imag_1_4;
	
wire signed [`WBus] W_real_2_2;
wire signed [`WBus] W_imag_2_2;
wire signed [`WBus] W_real_2_3;
wire signed [`WBus] W_imag_2_3;
wire signed [`WBus] W_real_2_4;
wire signed [`WBus] W_imag_2_4;
	
wire signed [`WBus] W_real_3_2;
wire signed [`WBus] W_imag_3_2;
wire signed [`WBus] W_real_3_3;
wire signed [`WBus] W_imag_3_3;
wire signed [`WBus] W_real_3_4;
wire signed [`WBus] W_imag_3_4;

wire signed [`WBus] W_real_4_2;
wire signed [`WBus] W_imag_4_2;
wire signed [`WBus] W_real_4_3;
wire signed [`WBus] W_imag_4_3;
wire signed [`WBus] W_real_4_4;
wire signed [`WBus] W_imag_4_4;

/**************Radix2-2 => output_selecter*****************/
/*************m MULT , b butterfly***************/
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

/******************port map******************/

/**************input delay*****************/
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

/****************input => input_selecter****************/
input_selecter_top input_selecter (clk,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_1_3_r,in_1_3_i,in_1_4_r,in_1_4_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,in_2_3_r,in_2_3_i,in_2_4_r,in_2_4_i,in_3_1_r,in_3_1_i,in_3_2_r,in_3_2_i,in_3_3_r,in_3_3_i,in_3_4_r,in_3_4_i,in_4_1_r,in_4_1_i,in_4_2_r,in_4_2_i,in_4_3_r,in_4_3_i,in_4_4_r,in_4_4_i,temp_b1_1_1_r,temp_b1_1_1_i,temp_b1_1_2_r,temp_b1_1_2_i,temp_b1_1_3_r,temp_b1_1_3_i,temp_b1_1_4_r,temp_b1_1_4_i,temp_b1_2_1_r,temp_b1_2_1_i,temp_b1_2_2_r,temp_b1_2_2_i,temp_b1_2_3_r,temp_b1_2_3_i,temp_b1_2_4_r,temp_b1_2_4_i,temp_b1_3_1_r,temp_b1_3_1_i,temp_b1_3_2_r,temp_b1_3_2_i,temp_b1_3_3_r,temp_b1_3_3_i,temp_b1_3_4_r,temp_b1_3_4_i,temp_b1_4_1_r,temp_b1_4_1_i,temp_b1_4_2_r,temp_b1_4_2_i,temp_b1_4_3_r,temp_b1_4_3_i,temp_b1_4_4_r,temp_b1_4_4_i,I_out_1_1_r,I_out_1_1_i,I_out_1_2_r,I_out_1_2_i,I_out_1_3_r,I_out_1_3_i,I_out_1_4_r,I_out_1_4_i,I_out_2_1_r,I_out_2_1_i,I_out_2_2_r,I_out_2_2_i,I_out_2_3_r,I_out_2_3_i,I_out_2_4_r,I_out_2_4_i,I_out_3_1_r,I_out_3_1_i,I_out_3_2_r,I_out_3_2_i,I_out_3_3_r,I_out_3_3_i,I_out_3_4_r,I_out_3_4_i,I_out_4_1_r,I_out_4_1_i,I_out_4_2_r,I_out_4_2_i,I_out_4_3_r,I_out_4_3_i,I_out_4_4_r,I_out_4_4_i);

/****************W_selecter => temp*****************/
W_selecter_top W_selecter (clk,W_real_1_2,W_imag_1_2,W_real_1_3,W_imag_1_3,W_real_1_4,W_imag_1_4,W_real_2_2,W_imag_2_2,W_real_2_3,W_imag_2_3,W_real_2_4,W_imag_2_4,W_real_3_2,W_imag_3_2,W_real_3_3,W_imag_3_3,W_real_3_4,W_imag_3_4,W_real_4_2,W_imag_4_2,W_real_4_3,W_imag_4_3,W_real_4_4,W_imag_4_4);

/*************input_selecter => Radix2-2********************/
MULT MULT1 (clk,I_out_1_1_r,I_out_1_1_i,I_out_1_2_r,I_out_1_2_i,I_out_1_3_r,I_out_1_3_i,I_out_1_4_r,I_out_1_4_i,temp_m1_1_1_r,temp_m1_1_1_i,temp_m1_1_2_r,temp_m1_1_2_i,temp_m1_1_3_r,temp_m1_1_3_i,temp_m1_1_4_r,temp_m1_1_4_i,W_real_1_2,W_imag_1_2,W_real_1_3,W_imag_1_3,W_real_1_4,W_imag_1_4);

butterfly butterfly1 (clk,temp_m1_1_1_r,temp_m1_1_1_i,temp_m1_1_2_r,temp_m1_1_2_i,temp_m1_1_3_r,temp_m1_1_3_i,temp_m1_1_4_r,temp_m1_1_4_i,temp_b1_1_1_r,temp_b1_1_1_i,temp_b1_1_2_r,temp_b1_1_2_i,temp_b1_1_3_r,temp_b1_1_3_i,temp_b1_1_4_r,temp_b1_1_4_i);

MULT MULT2 (clk,I_out_2_1_r,I_out_2_1_i,I_out_2_2_r,I_out_2_2_i,I_out_2_3_r,I_out_2_3_i,I_out_2_4_r,I_out_2_4_i,temp_m1_2_1_r,temp_m1_2_1_i,temp_m1_2_2_r,temp_m1_2_2_i,temp_m1_2_3_r,temp_m1_2_3_i,temp_m1_2_4_r,temp_m1_2_4_i,W_real_2_2,W_imag_2_2,W_real_2_3,W_imag_2_3,W_real_2_4,W_imag_2_4);

butterfly butterfly2 (clk,temp_m1_2_1_r,temp_m1_2_1_i,temp_m1_2_2_r,temp_m1_2_2_i,temp_m1_2_3_r,temp_m1_2_3_i,temp_m1_2_4_r,temp_m1_2_4_i,temp_b1_2_1_r,temp_b1_2_1_i,temp_b1_2_2_r,temp_b1_2_2_i,temp_b1_2_3_r,temp_b1_2_3_i,temp_b1_2_4_r,temp_b1_2_4_i);


MULT MULT3 (clk,I_out_3_1_r,I_out_3_1_i,I_out_3_2_r,I_out_3_2_i,I_out_3_3_r,I_out_3_3_i,I_out_3_4_r,I_out_3_4_i,temp_m1_3_1_r,temp_m1_3_1_i,temp_m1_3_2_r,temp_m1_3_2_i,temp_m1_3_3_r,temp_m1_3_3_i,temp_m1_3_4_r,temp_m1_3_4_i,W_real_3_2,W_imag_3_2,W_real_3_3,W_imag_3_3,W_real_3_4,W_imag_3_4);

butterfly butterfly3 (clk,temp_m1_3_1_r,temp_m1_3_1_i,temp_m1_3_2_r,temp_m1_3_2_i,temp_m1_3_3_r,temp_m1_3_3_i,temp_m1_3_4_r,temp_m1_3_4_i,temp_b1_3_1_r,temp_b1_3_1_i,temp_b1_3_2_r,temp_b1_3_2_i,temp_b1_3_3_r,temp_b1_3_3_i,temp_b1_3_4_r,temp_b1_3_4_i);

MULT MULT4 (clk,I_out_4_1_r,I_out_4_1_i,I_out_4_2_r,I_out_4_2_i,I_out_4_3_r,I_out_4_3_i,I_out_4_4_r,I_out_4_4_i,temp_m1_4_1_r,temp_m1_4_1_i,temp_m1_4_2_r,temp_m1_4_2_i,temp_m1_4_3_r,temp_m1_4_3_i,temp_m1_4_4_r,temp_m1_4_4_i,W_real_4_2,W_imag_4_2,W_real_4_3,W_imag_4_3,W_real_4_4,W_imag_4_4);

butterfly butterfly4 (clk,temp_m1_4_1_r,temp_m1_4_1_i,temp_m1_4_2_r,temp_m1_4_2_i,temp_m1_4_3_r,temp_m1_4_3_i,temp_m1_4_4_r,temp_m1_4_4_i,temp_b1_4_1_r,temp_b1_4_1_i,temp_b1_4_2_r,temp_b1_4_2_i,temp_b1_4_3_r,temp_b1_4_3_i,temp_b1_4_4_r,temp_b1_4_4_i);

/****************output delay***************/
delay delay_out_1_1_r (clk,5'd1,temp_b1_1_1_r,out_1_1_r);
delay delay_out_1_1_i (clk,5'd1,temp_b1_1_1_i,out_1_1_i);
delay delay_out_1_2_r (clk,5'd2,temp_b1_1_2_r,out_1_2_r);
delay delay_out_1_2_i (clk,5'd2,temp_b1_1_2_i,out_1_2_i);
delay delay_out_1_3_r (clk,5'd3,temp_b1_1_3_r,out_1_3_r);
delay delay_out_1_3_i (clk,5'd3,temp_b1_1_3_i,out_1_3_i);
delay delay_out_1_4_r (clk,5'd4,temp_b1_1_4_r,out_1_4_r);
delay delay_out_1_4_i (clk,5'd4,temp_b1_1_4_i,out_1_4_i);

delay delay_out_2_1_r (clk,5'd5,temp_b1_2_1_r,out_2_1_r);
delay delay_out_2_1_i (clk,5'd5,temp_b1_2_1_i,out_2_1_i);
delay delay_out_2_2_r (clk,5'd6,temp_b1_2_2_r,out_2_2_r);
delay delay_out_2_2_i (clk,5'd6,temp_b1_2_2_i,out_2_2_i);
delay delay_out_2_3_r (clk,5'd7,temp_b1_2_3_r,out_2_3_r);
delay delay_out_2_3_i (clk,5'd7,temp_b1_2_3_i,out_2_3_i);
delay delay_out_2_4_r (clk,5'd8,temp_b1_2_4_r,out_2_4_r);
delay delay_out_2_4_i (clk,5'd8,temp_b1_2_4_i,out_2_4_i);

delay delay_out_3_1_r (clk,5'd9,temp_b1_3_1_r,out_3_1_r);
delay delay_out_3_1_i (clk,5'd9,temp_b1_3_1_i,out_3_1_i);
delay delay_out_3_2_r (clk,5'd10,temp_b1_3_2_r,out_3_2_r);
delay delay_out_3_2_i (clk,5'd10,temp_b1_3_2_i,out_3_2_i);
delay delay_out_3_3_r (clk,5'd11,temp_b1_3_3_r,out_3_3_r);
delay delay_out_3_3_i (clk,5'd11,temp_b1_3_3_i,out_3_3_i);
delay delay_out_3_4_r (clk,5'd12,temp_b1_3_4_r,out_3_4_r);
delay delay_out_3_4_i (clk,5'd12,temp_b1_3_4_i,out_3_4_i);

delay delay_out_4_1_r (clk,5'd13,temp_b1_4_1_r,out_4_1_r);
delay delay_out_4_1_i (clk,5'd13,temp_b1_4_1_i,out_4_1_i);
delay delay_out_4_2_r (clk,5'd14,temp_b1_4_2_r,out_4_2_r);
delay delay_out_4_2_i (clk,5'd14,temp_b1_4_2_i,out_4_2_i);
delay delay_out_4_3_r (clk,5'd15,temp_b1_4_3_r,out_4_3_r);
delay delay_out_4_3_i (clk,5'd15,temp_b1_4_3_i,out_4_3_i);
delay delay_out_4_4_r (clk,5'd16,temp_b1_4_4_r,out_4_4_r);
delay delay_out_4_4_i (clk,5'd16,temp_b1_4_4_i,out_4_4_i);

/************out => mux => out_r,out_i 1clock*************/
mux mux_r (clk,out_1_1_r,out_1_2_r,out_1_3_r,out_1_4_r,out_2_1_r,out_2_2_r,out_2_3_r,out_2_4_r,out_3_1_r,out_3_2_r,out_3_3_r,out_3_4_r,out_4_1_r,out_4_2_r,out_4_3_r,out_4_4_r,out_r);
mux mux_i (clk,out_1_1_i,out_1_2_i,out_1_3_i,out_1_4_i,out_2_1_i,out_2_2_i,out_2_3_i,out_2_4_i,out_3_1_i,out_3_2_i,out_3_3_i,out_3_4_i,out_4_1_i,out_4_2_i,out_4_3_i,out_4_4_i,out_i);


endmodule