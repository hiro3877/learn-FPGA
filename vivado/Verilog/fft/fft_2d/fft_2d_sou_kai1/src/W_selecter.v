`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 18:21:56
// Design Name: 
// Module Name: W_selecter
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

module W_selecter(
	input wire		sel,
	
    output reg signed [`WBus] W_real_1_2,
	output reg signed [`WBus] W_imag_1_2,
	output reg signed [`WBus] W_real_1_3,
    output reg signed [`WBus] W_imag_1_3,
	output reg signed [`WBus] W_real_1_4,
    output reg signed [`WBus] W_imag_1_4,
	
    output reg signed [`WBus] W_real_2_2,
	output reg signed [`WBus] W_imag_2_2,
	output reg signed [`WBus] W_real_2_3,
    output reg signed [`WBus] W_imag_2_3,
	output reg signed [`WBus] W_real_2_4,
    output reg signed [`WBus] W_imag_2_4,
	
    output reg signed [`WBus] W_real_3_2,
	output reg signed [`WBus] W_imag_3_2,
	output reg signed [`WBus] W_real_3_3,
    output reg signed [`WBus] W_imag_3_3,
	output reg signed [`WBus] W_real_3_4,
    output reg signed [`WBus] W_imag_3_4,

    output reg signed [`WBus] W_real_4_2,
	output reg signed [`WBus] W_imag_4_2,
	output reg signed [`WBus] W_real_4_3,
    output reg signed [`WBus] W_imag_4_3,
	output reg signed [`WBus] W_real_4_4,
    output reg signed [`WBus] W_imag_4_4

    );
	
	always @(*) begin
        case(sel)
            1'b0   : begin		//first input
				W_real_1_2 <= `W0_real;
				W_imag_1_2 <= `W0_imag;
				W_real_1_3 <= `W0_real;
				W_imag_1_3 <= `W0_imag;
				W_real_1_4 <= `W0_real;
				W_imag_1_4 <= `W0_imag;
				
				W_real_2_2 <= `W0_real;
				W_imag_2_2 <= `W0_imag;
				W_real_2_3 <= `W0_real;
				W_imag_2_3 <= `W0_imag;
				W_real_2_4 <= `W0_real;
				W_imag_2_4 <= `W0_imag;
				
				W_real_3_2 <= `W0_real;
				W_imag_3_2 <= `W0_imag;
				W_real_3_3 <= `W0_real;
				W_imag_3_3 <= `W0_imag;
				W_real_3_4 <= `W0_real;
				W_imag_3_4 <= `W0_imag;
				
				W_real_4_2 <= `W0_real;
				W_imag_4_2 <= `W0_imag;
				W_real_4_3 <= `W0_real;
				W_imag_4_3 <= `W0_imag;
				W_real_4_4 <= `W0_real;
				W_imag_4_4 <= `W0_imag;
				
			end
			
			1'b1	: begin
				W_real_1_2 <= `W0_real;
				W_imag_1_2 <= `W0_imag;
				W_real_1_3 <= `W0_real;
				W_imag_1_3 <= `W0_imag;
				W_real_1_4 <= `W0_real;
				W_imag_1_4 <= `W0_imag;
				
				W_real_2_2 <= `W1_real;
				W_imag_2_2 <= `W1_imag;
				W_real_2_3 <= `W0_real;
				W_imag_2_3 <= `W0_imag;
				W_real_2_4 <= `W1_real;
				W_imag_2_4 <= `W1_imag;
				
				W_real_3_2 <= `W0_real;
				W_imag_3_2 <= `W0_imag;
				W_real_3_3 <= `W1_real;
				W_imag_3_3 <= `W1_imag;
				W_real_3_4 <= `W1_real;
				W_imag_3_4 <= `W1_imag;
				
				W_real_4_2 <= `W1_real;
				W_imag_4_2 <= `W1_imag;
				W_real_4_3 <= `W1_real;
				W_imag_4_3 <= `W1_imag;
				W_real_4_4 <= `W2_real;
				W_imag_4_4 <= `W2_imag;
				
			end
			
			default : begin
				W_real_1_2 <= `W0_real;
				W_imag_1_2 <= `W0_imag;
				W_real_1_3 <= `W0_real;
				W_imag_1_3 <= `W0_imag;
				W_real_1_4 <= `W0_real;
				W_imag_1_4 <= `W0_imag;
				
				W_real_2_2 <= `W0_real;
				W_imag_2_2 <= `W0_imag;
				W_real_2_3 <= `W0_real;
				W_imag_2_3 <= `W0_imag;
				W_real_2_4 <= `W0_real;
				W_imag_2_4 <= `W0_imag;
				
				W_real_3_2 <= `W0_real;
				W_imag_3_2 <= `W0_imag;
				W_real_3_3 <= `W0_real;
				W_imag_3_3 <= `W0_imag;
				W_real_3_4 <= `W0_real;
				W_imag_3_4 <= `W0_imag;
				
				W_real_4_2 <= `W0_real;
				W_imag_4_2 <= `W0_imag;
				W_real_4_3 <= `W0_real;
				W_imag_4_3 <= `W0_imag;
				W_real_4_4 <= `W0_real;
				W_imag_4_4 <= `W0_imag;
				
			end
			
		endcase
	
	end
			
endmodule
