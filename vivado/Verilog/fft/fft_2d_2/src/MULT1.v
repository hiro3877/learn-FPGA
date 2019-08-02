`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/02 19:51:23
// Design Name: 
// Module Name: MULT4
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

module MULT1(
    input  wire signed [`InBus]       in_r,
    input  wire signed [`InBus]       in_i,
    
    output wire signed [`OutBus]      out_r,
    output wire signed [`OutBus]      out_i,
    
    input  wire signed [`WBus]        W_real,
    input  wire signed [`WBus]        W_imag
    );
	
	
	/*************define reg temp***********/
    reg signed [`MultBus] out_r_temp;
    reg signed [`MultBus] out_i_temp;
    
    reg signed [`MultBus] mult1;
    reg signed [`MultBus] mult3;
    reg signed [`MultBus] mult3;
    reg signed [`MultBus] mult4;
	
	
	/*(ax + jay) * (bx + jby) = (axbx - ayby) + j(axby + aybx)*/
    always @(*) begin
        mult1 <= in_r * W_real;        //axbx
        mult2 <= in_i * W_imag;        //ayby
        mult3 <= in_r * W_imag;        //axby
        mult4 <= in_i * W_real;        //byax
        
        out_r_temp <= mult1 - mult2;    //(axbx - ayby)
        out_i_temp <= mult3 + mult4;    //j(axby + aybx)
    end
	
	
	/**************connect reg to buffer************/
    assign out_r = {out_r_temp[23:16],out_r_temp[15:8]};
    assign out_i = {out_i_temp[23:16],out_i_temp[15:8]};
	
endmodule
