`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/02 19:30:30
// Design Name: 
// Module Name: butterfly
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

module butterfly(
	input  wire clk,

    input  wire signed [`InBus]       in_1_1_r,
    input  wire signed [`InBus]       in_1_1_i,
    input  wire signed [`InBus]       in_1_2_r,
    input  wire signed [`InBus]       in_1_2_i,
    input  wire signed [`InBus]       in_2_1_r,
    input  wire signed [`InBus]       in_2_1_i,
    input  wire signed [`InBus]       in_2_2_r,
    input  wire signed [`InBus]       in_2_2_i,
    
    output wire signed [`OutBus]       out_1_1_r,
    output wire signed [`OutBus]       out_1_1_i,
    output wire signed [`OutBus]       out_1_2_r,
    output wire signed [`OutBus]       out_1_2_i,
    output wire signed [`OutBus]       out_2_1_r,
    output wire signed [`OutBus]       out_2_1_i,
    output wire signed [`OutBus]       out_2_2_r,
    output wire signed [`OutBus]       out_2_2_i
    );
    
	
	/*************define output buffer*************/
	
    reg signed [`OutBus]  out_1_1_r_tmp;
    reg signed [`OutBus]  out_1_1_i_tmp;
    reg signed [`OutBus]  out_1_2_r_tmp;
    reg signed [`OutBus]  out_1_2_i_tmp;
	reg signed [`OutBus]  out_2_1_r_tmp;
    reg signed [`OutBus]  out_2_1_i_tmp;
    reg signed [`OutBus]  out_2_2_r_tmp;
    reg signed [`OutBus]  out_2_2_i_tmp;
    
    
	
	/************add and sub****************/
    always @(posedge clk) begin
        out_1_1_r_tmp <= in_1_1_r + in_1_2_r + in_2_1_r + in_2_2_r;
        out_1_1_i_tmp <= in_1_1_i + in_1_2_i + in_2_1_i + in_2_2_i;
        out_1_2_r_tmp <= in_1_1_r - in_1_2_r + in_2_1_r - in_2_2_r;
        out_1_2_i_tmp <= in_1_1_i - in_1_2_i + in_2_1_i - in_2_2_i;
		out_2_1_r_tmp <= in_1_1_r + in_1_2_r - in_2_1_r - in_2_2_r;
        out_2_1_i_tmp <= in_1_1_i + in_1_2_i - in_2_1_i - in_2_2_i;
        out_2_2_r_tmp <= in_1_1_r - in_1_2_r - in_2_1_r + in_2_2_r;
        out_2_2_i_tmp <= in_1_1_i - in_1_2_i - in_2_1_i + in_2_2_i;
    end
	
	/**************connect wire to buffer************/
    assign out_1_1_r = out_1_1_r_tmp;
    assign out_1_1_i = out_1_1_i_tmp;
    assign out_1_2_r = out_1_2_r_tmp;
    assign out_1_2_i = out_1_2_i_tmp;
	assign out_2_1_r = out_2_1_r_tmp;
    assign out_2_1_i = out_2_1_i_tmp;
    assign out_2_2_r = out_2_2_r_tmp;
    assign out_2_2_i = out_2_2_i_tmp;
	
endmodule
