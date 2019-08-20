`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/20 20:55:03
// Design Name: 
// Module Name: MULT
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

module MULT(
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
	
	
	/*************define reg temp***********/
	/*
    reg signed [`OutBus]  out_1_1_r_tmp;
    reg signed [`OutBus]  out_1_1_i_tmp;
	*/
    reg signed [`MultBus]  out_1_2_r_temp;
    reg signed [`MultBus]  out_1_2_i_temp;
	reg signed [`MultBus]  out_2_1_r_temp;
    reg signed [`MultBus]  out_2_1_i_temp;
    reg signed [`MultBus]  out_2_2_r_temp;
    reg signed [`MultBus]  out_2_2_i_temp;
    
	/*
    reg signed [`MultBus] mult_1_1_1;
	reg signed [`MultBus] mult_1_1_2;
	reg signed [`MultBus] mult_1_1_3;
	reg signed [`MultBus] mult_1_1_4;
	*/
	
    reg signed [`MultBus] mult_1_2_1;
	reg signed [`MultBus] mult_1_2_2;
	reg signed [`MultBus] mult_1_2_3;
	reg signed [`MultBus] mult_1_2_4;
	
    reg signed [`MultBus] mult_2_1_1;
	reg signed [`MultBus] mult_2_1_2;
	reg signed [`MultBus] mult_2_1_3;
	reg signed [`MultBus] mult_2_1_4;
	
    reg signed [`MultBus] mult_2_2_1;
	reg signed [`MultBus] mult_2_2_2;
	reg signed [`MultBus] mult_2_2_3;
	reg signed [`MultBus] mult_2_2_4;
	
	
	/*(ax + jay) * (bx + jby) = (axbx - ayby) + j(axby + aybx)*/
	/*F[0][1]*/
    always @(clk) begin
        mult_1_2_1 <= in_1_2_r * W_real_2;        //axbx
        mult_1_2_2 <= in_1_2_i * W_imag_2;        //ayby
        mult_1_2_3 <= in_1_2_r * W_imag_2;        //axby
        mult_1_2_4 <= in_1_2_i * W_real_2;        //byax
        
        out_1_2_r_temp <= mult_1_2_1 - mult_1_2_2;    //(axbx - ayby)
        out_1_2_i_temp <= mult_1_2_3 + mult_1_2_4;    //j(axby + aybx)
    end
	
	/*F[1][0]*/
	always @(clk) begin
        mult_2_1_1 <= in_2_1_r * W_real_3;        //axbx
        mult_2_1_2 <= in_2_1_i * W_imag_3;        //ayby
        mult_2_1_3 <= in_2_1_r * W_imag_3;        //axby
        mult_2_1_4 <= in_2_1_i * W_real_3;        //byax
        
        out_2_1_r_temp <= mult_2_1_1 - mult_2_1_2;    //(axbx - ayby)
        out_2_1_i_temp <= mult_2_1_3 + mult_2_1_4;    //j(axby + aybx)
    end
	
	/*F[1][1]*/
	always @(clk) begin
        mult_2_2_1 <= in_2_2_r * W_real_4;        //axbx
        mult_2_2_2 <= in_2_2_i * W_imag_4;        //ayby
        mult_2_2_3 <= in_2_2_r * W_imag_4;        //axby
        mult_2_2_4 <= in_2_2_i * W_real_4;        //byax
        
        out_2_2_r_temp <= mult_2_2_1 - mult_2_2_2;    //(axbx - ayby)
        out_2_2_i_temp <= mult_2_2_3 + mult_2_2_4;    //j(axby + aybx)
    end
	
	
	/**************connect reg to buffer************/
	assign out_1_1_r = in_1_1_r;
	assign out_1_1_i = in_1_1_i;
	
    assign out_1_2_r = {out_1_2_r_temp[23:16],out_1_2_r_temp[15:8]};
    assign out_1_2_i = {out_1_2_i_temp[23:16],out_1_2_i_temp[15:8]};
	
	assign out_2_1_r = {out_2_1_r_temp[23:16],out_2_1_r_temp[15:8]};
    assign out_2_1_i = {out_2_1_i_temp[23:16],out_2_1_i_temp[15:8]};
	
	assign out_2_2_r = {out_2_2_r_temp[23:16],out_2_2_r_temp[15:8]};
    assign out_2_2_i = {out_2_2_i_temp[23:16],out_2_2_i_temp[15:8]};
	
endmodule

