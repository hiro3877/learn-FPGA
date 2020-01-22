`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/26 18:16:27
// Design Name: 
// Module Name: radix2_2
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

module radix2_2(
	input  wire clk,

    input  wire signed [`InBus]       in_1_1_r,
    input  wire signed [`InBus]       in_1_1_i,
    input  wire signed [`InBus]       in_1_2_r,
    input  wire signed [`InBus]       in_1_2_i,
    input  wire signed [`InBus]       in_2_1_r,
    input  wire signed [`InBus]       in_2_1_i,
    input  wire signed [`InBus]       in_2_2_r,
    input  wire signed [`InBus]       in_2_2_i,
    
    output  wire signed [`OutBus]       out_1_1_r,
    output  wire signed [`OutBus]       out_1_1_i,
    output  wire signed [`OutBus]       out_1_2_r,
    output  wire signed [`OutBus]       out_1_2_i,
    output  wire signed [`OutBus]       out_2_1_r,
    output  wire signed [`OutBus]       out_2_1_i,
    output  wire signed [`OutBus]       out_2_2_r,
    output  wire signed [`OutBus]       out_2_2_i,
	
	input  wire signed [`WBus]        W_real_2,
    input  wire signed [`WBus]        W_imag_2,
	input  wire signed [`WBus]        W_real_3,
    input  wire signed [`WBus]        W_imag_3,
	input  wire signed [`WBus]        W_real_4,
    input  wire signed [`WBus]        W_imag_4
    );
	
	
	/*****************define temp**************/
	wire signed [`InBus]		temp_m_1_1_r;
	wire signed [`InBus]		temp_m_1_1_i;
	wire signed [`InBus]		temp_m_1_2_r;
	wire signed [`InBus]		temp_m_1_2_i;
	wire signed [`InBus]		temp_m_2_1_r;
	wire signed [`InBus]		temp_m_2_1_i;
	wire signed [`InBus]		temp_m_2_2_r;
	wire signed [`InBus]		temp_m_2_2_i;
	
	
	/****************port map*************/
	MULT MULT(clk,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,temp_m_1_1_r,temp_m_1_1_i,temp_m_1_2_r,temp_m_1_2_i,temp_m_2_1_r,temp_m_2_1_i,temp_m_2_2_r,temp_m_2_2_i,W_real_2,W_imag_2,W_real_3,W_imag_3,W_real_4,W_imag_4);
	
	butterfly butterfly(clk,temp_m_1_1_r,temp_m_1_1_i,temp_m_1_2_r,temp_m_1_2_i,temp_m_2_1_r,temp_m_2_1_i,temp_m_2_2_r,temp_m_2_2_i,out_1_1_r,out_1_1_i,out_1_2_r,out_1_2_i,out_2_1_r,out_2_1_i,out_2_2_r,out_2_2_i);
	
	
endmodule
