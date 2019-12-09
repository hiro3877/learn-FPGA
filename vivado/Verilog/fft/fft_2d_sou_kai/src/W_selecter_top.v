`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 19:32:53
// Design Name: 
// Module Name: W_selecter_top
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

module W_selecter_top(
	input  wire clk,

	output wire signed [`WBus] W_real_1_2,
	output wire signed [`WBus] W_imag_1_2,
	output wire signed [`WBus] W_real_1_3,
    output wire signed [`WBus] W_imag_1_3,
	output wire signed [`WBus] W_real_1_4,
    output wire signed [`WBus] W_imag_1_4,
	
    output wire signed [`WBus] W_real_2_2,
	output wire signed [`WBus] W_imag_2_2,
	output wire signed [`WBus] W_real_2_3,
    output wire signed [`WBus] W_imag_2_3,
	output wire signed [`WBus] W_real_2_4,
    output wire signed [`WBus] W_imag_2_4,
	
    output wire signed [`WBus] W_real_3_2,
	output wire signed [`WBus] W_imag_3_2,
	output wire signed [`WBus] W_real_3_3,
    output wire signed [`WBus] W_imag_3_3,
	output wire signed [`WBus] W_real_3_4,
    output wire signed [`WBus] W_imag_3_4,

    output wire signed [`WBus] W_real_4_2,
	output wire signed [`WBus] W_imag_4_2,
	output wire signed [`WBus] W_real_4_3,
    output wire signed [`WBus] W_imag_4_3,
	output wire signed [`WBus] W_real_4_4,
    output wire signed [`WBus] W_imag_4_4
    );
	
	wire signed sel;
	
	
/****************port map*****************/
W_selecter_control W_selecter_control1 (clk,sel);
W_selecter W_selecter1 (sel,W_real_1_2,W_imag_1_2,W_real_1_3,W_imag_1_3,W_real_1_4,W_imag_1_4,W_real_2_2,W_imag_2_2,W_real_2_3,W_imag_2_3,W_real_2_4,W_imag_2_4,W_real_3_2,W_imag_3_2,W_real_3_3,W_imag_3_3,W_real_3_4,W_imag_3_4,W_real_4_2,W_imag_4_2,W_real_4_3,W_imag_4_3,W_real_4_4,W_imag_4_4);
	
endmodule
