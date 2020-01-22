`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 16:03:23
// Design Name: 
// Module Name: input_selecter
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

// buf irete 1sou gotoni motoni modosu

`include "./nettype.h"
`include "./std_define.h"

module input_selecter(
input wire [`SelBus]		sel,

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
output reg signed [`InBus]		out_1_1_r,
output reg signed [`InBus]		out_1_1_i,
output reg signed [`InBus]		out_1_2_r,
output reg signed [`InBus]		out_1_2_i,
output reg signed [`InBus]		out_1_3_r,
output reg signed [`InBus]		out_1_3_i,
output reg signed [`InBus]		out_1_4_r,
output reg signed [`InBus]		out_1_4_i,
output reg signed [`InBus]		out_2_1_r,
output reg signed [`InBus]		out_2_1_i,
output reg signed [`InBus]		out_2_2_r,
output reg signed [`InBus]		out_2_2_i,
output reg signed [`InBus]		out_2_3_r,
output reg signed [`InBus]		out_2_3_i,
output reg signed [`InBus]		out_2_4_r,
output reg signed [`InBus]		out_2_4_i,
output reg signed [`InBus]		out_3_1_r,
output reg signed [`InBus]		out_3_1_i,
output reg signed [`InBus]		out_3_2_r,
output reg signed [`InBus]		out_3_2_i,
output reg signed [`InBus]		out_3_3_r,
output reg signed [`InBus]		out_3_3_i,
output reg signed [`InBus]		out_3_4_r,
output reg signed [`InBus]		out_3_4_i,
output reg signed [`InBus]		out_4_1_r,
output reg signed [`InBus]		out_4_1_i,
output reg signed [`InBus]		out_4_2_r,
output reg signed [`InBus]		out_4_2_i,
output reg signed [`InBus]		out_4_3_r,
output reg signed [`InBus]		out_4_3_i,
output reg signed [`InBus]		out_4_4_r,
output reg signed [`InBus]		out_4_4_i);

/*********************define rt_buf**************************/
reg signed [`InBus]		rt_buf_in_1_1_r;
reg signed [`InBus]		rt_buf_in_1_1_i;
reg signed [`InBus]		rt_buf_in_1_2_r;
reg signed [`InBus]		rt_buf_in_1_2_i;
reg signed [`InBus]		rt_buf_in_1_3_r;
reg signed [`InBus]		rt_buf_in_1_3_i;
reg signed [`InBus]		rt_buf_in_1_4_r;
reg signed [`InBus]		rt_buf_in_1_4_i;
reg signed [`InBus]		rt_buf_in_2_1_r;
reg signed [`InBus]		rt_buf_in_2_1_i;
reg signed [`InBus]		rt_buf_in_2_2_r;
reg signed [`InBus]		rt_buf_in_2_2_i;
reg signed [`InBus]		rt_buf_in_2_3_r;
reg signed [`InBus]		rt_buf_in_2_3_i;
reg signed [`InBus]		rt_buf_in_2_4_r;
reg signed [`InBus]		rt_buf_in_2_4_i;
reg signed [`InBus]		rt_buf_in_3_1_r;
reg signed [`InBus]		rt_buf_in_3_1_i;
reg signed [`InBus]		rt_buf_in_3_2_r;
reg signed [`InBus]		rt_buf_in_3_2_i;
reg signed [`InBus]		rt_buf_in_3_3_r;
reg signed [`InBus]		rt_buf_in_3_3_i;
reg signed [`InBus]		rt_buf_in_3_4_r;
reg signed [`InBus]		rt_buf_in_3_4_i;
reg signed [`InBus]		rt_buf_in_4_1_r;
reg signed [`InBus]		rt_buf_in_4_1_i;
reg signed [`InBus]		rt_buf_in_4_2_r;
reg signed [`InBus]		rt_buf_in_4_2_i;
reg signed [`InBus]		rt_buf_in_4_3_r;
reg signed [`InBus]		rt_buf_in_4_3_i;
reg signed [`InBus]		rt_buf_in_4_4_r;
reg signed [`InBus]		rt_buf_in_4_4_i;

always @(*) begin
case(sel)
3'b0	: begin
out_1_1_r <= in_1_1_r;
out_1_1_i <= in_1_1_i;
out_1_2_r <= in_1_2_r;
out_1_2_i <= in_1_2_i;
out_1_3_r <= in_2_1_r;
out_1_3_i <= in_2_1_i;
out_1_4_r <= in_2_2_r;
out_1_4_i <= in_2_2_i;
out_2_1_r <= in_1_3_r;
out_2_1_i <= in_1_3_i;
out_2_2_r <= in_1_4_r;
out_2_2_i <= in_1_4_i;
out_2_3_r <= in_2_3_r;
out_2_3_i <= in_2_3_i;
out_2_4_r <= in_2_4_r;
out_2_4_i <= in_2_4_i;
out_3_1_r <= in_3_1_r;
out_3_1_i <= in_3_1_i;
out_3_2_r <= in_3_2_r;
out_3_2_i <= in_3_2_i;
out_3_3_r <= in_4_1_r;
out_3_3_i <= in_4_1_i;
out_3_4_r <= in_4_2_r;
out_3_4_i <= in_4_2_i;
out_4_1_r <= in_3_3_r;
out_4_1_i <= in_3_3_i;
out_4_2_r <= in_3_4_r;
out_4_2_i <= in_3_4_i;
out_4_3_r <= in_4_3_r;
out_4_3_i <= in_4_3_i;
out_4_4_r <= in_4_4_r;
out_4_4_i <= in_4_4_i;
end

3'b1	: begin
rt_buf_in_1_1_r <= rt_in_1_1_r;
rt_buf_in_1_1_i <= rt_in_1_1_i;
out_1_1_r <= rt_buf_in_1_1_r;
out_1_1_i <= rt_buf_in_1_1_i;
rt_buf_in_1_2_r <= rt_in_1_2_r;
rt_buf_in_1_2_i <= rt_in_1_2_i;
out_1_2_r <= rt_buf_in_1_3_r;
out_1_2_i <= rt_buf_in_1_3_i;
rt_buf_in_2_1_r <= rt_in_1_3_r;
rt_buf_in_2_1_i <= rt_in_1_3_i;
out_1_3_r <= rt_buf_in_3_1_r;
out_1_3_i <= rt_buf_in_3_1_i;
rt_buf_in_2_2_r <= rt_in_1_4_r;
rt_buf_in_2_2_i <= rt_in_1_4_i;
out_1_4_r <= rt_buf_in_3_3_r;
out_1_4_i <= rt_buf_in_3_3_i;
rt_buf_in_1_3_r <= rt_in_2_1_r;
rt_buf_in_1_3_i <= rt_in_2_1_i;
out_2_1_r <= rt_buf_in_1_2_r;
out_2_1_i <= rt_buf_in_1_2_i;
rt_buf_in_1_4_r <= rt_in_2_2_r;
rt_buf_in_1_4_i <= rt_in_2_2_i;
out_2_2_r <= rt_buf_in_1_4_r;
out_2_2_i <= rt_buf_in_1_4_i;
rt_buf_in_2_3_r <= rt_in_2_3_r;
rt_buf_in_2_3_i <= rt_in_2_3_i;
out_2_3_r <= rt_buf_in_3_2_r;
out_2_3_i <= rt_buf_in_3_2_i;
rt_buf_in_2_4_r <= rt_in_2_4_r;
rt_buf_in_2_4_i <= rt_in_2_4_i;
out_2_4_r <= rt_buf_in_3_4_r;
out_2_4_i <= rt_buf_in_3_4_i;
rt_buf_in_3_1_r <= rt_in_3_1_r;
rt_buf_in_3_1_i <= rt_in_3_1_i;
out_3_1_r <= rt_buf_in_2_1_r;
out_3_1_i <= rt_buf_in_2_1_i;
rt_buf_in_3_2_r <= rt_in_3_2_r;
rt_buf_in_3_2_i <= rt_in_3_2_i;
out_3_2_r <= rt_buf_in_2_3_r;
out_3_2_i <= rt_buf_in_2_3_i;
rt_buf_in_4_1_r <= rt_in_3_3_r;
rt_buf_in_4_1_i <= rt_in_3_3_i;
out_3_3_r <= rt_buf_in_4_1_r;
out_3_3_i <= rt_buf_in_4_1_i;
rt_buf_in_4_2_r <= rt_in_3_4_r;
rt_buf_in_4_2_i <= rt_in_3_4_i;
out_3_4_r <= rt_buf_in_4_3_r;
out_3_4_i <= rt_buf_in_4_3_i;
rt_buf_in_3_3_r <= rt_in_4_1_r;
rt_buf_in_3_3_i <= rt_in_4_1_i;
out_4_1_r <= rt_buf_in_2_2_r;
out_4_1_i <= rt_buf_in_2_2_i;
rt_buf_in_3_4_r <= rt_in_4_2_r;
rt_buf_in_3_4_i <= rt_in_4_2_i;
out_4_2_r <= rt_buf_in_2_4_r;
out_4_2_i <= rt_buf_in_2_4_i;
rt_buf_in_4_3_r <= rt_in_4_3_r;
rt_buf_in_4_3_i <= rt_in_4_3_i;
out_4_3_r <= rt_buf_in_4_2_r;
out_4_3_i <= rt_buf_in_4_2_i;
rt_buf_in_4_4_r <= rt_in_4_4_r;
rt_buf_in_4_4_i <= rt_in_4_4_i;
out_4_4_r <= rt_buf_in_4_4_r;
out_4_4_i <= rt_buf_in_4_4_i;
end
			
            default : begin
out_1_1_r <= in_1_1_r;
out_1_1_i <= in_1_1_i;
out_1_2_r <= in_1_2_r;
out_1_2_i <= in_1_2_i;
out_1_3_r <= in_2_1_r;
out_1_3_i <= in_2_1_i;
out_1_4_r <= in_2_2_r;
out_1_4_i <= in_2_2_i;
out_2_1_r <= in_1_3_r;
out_2_1_i <= in_1_3_i;
out_2_2_r <= in_1_4_r;
out_2_2_i <= in_1_4_i;
out_2_3_r <= in_2_3_r;
out_2_3_i <= in_2_3_i;
out_2_4_r <= in_2_4_r;
out_2_4_i <= in_2_4_i;
out_3_1_r <= in_3_1_r;
out_3_1_i <= in_3_1_i;
out_3_2_r <= in_3_2_r;
out_3_2_i <= in_3_2_i;
out_3_3_r <= in_4_1_r;
out_3_3_i <= in_4_1_i;
out_3_4_r <= in_4_2_r;
out_3_4_i <= in_4_2_i;
out_4_1_r <= in_3_3_r;
out_4_1_i <= in_3_3_i;
out_4_2_r <= in_3_4_r;
out_4_2_i <= in_3_4_i;
out_4_3_r <= in_4_3_r;
out_4_3_i <= in_4_3_i;
out_4_4_r <= in_4_4_r;
out_4_4_i <= in_4_4_i;
				
			end
			
        endcase
	end




endmodule
