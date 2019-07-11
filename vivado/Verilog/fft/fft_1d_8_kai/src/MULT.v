`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/25 17:56:21
// Design Name: 
// Module Name: MULT0
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


/**********define rotation factor*************/
 //`define W_real	    16'b0000000100000000        //1.0 (00000001.00000000)
 //`define W_imag		16'b0000000000000000        //0.0 (00000000.00000000)

`include "./nettype.h"
`include "./std_define.h"

module MULT(
    input  wire signed [`InBus]       in2_r,
    input  wire signed [`InBus]       in2_i,
    
    output wire signed [`OutBus]      out_r,
    output wire signed [`OutBus]      out_i,
    
    input  wire signed [`WBus]        W_real,
    input  wire signed [`WBus]        W_imag
    );

/*************define reg temp***********/
    reg signed [`MultBus] out_r_temp;
    reg signed [`MultBus] out_i_temp;
    
    reg signed [`MultBus] mult0;
    reg signed [`MultBus] mult1;
    reg signed [`MultBus] mult2;
    reg signed [`MultBus] mult3;
    
    
    /*(ax + jay) * (bx + jby) = (axbx - ayby) + j(axby + aybx)*/
    always @(in2_r,in2_i,mult0,mult1,mult2,mult3) begin
        mult0 <= in2_r * W_real;        //axbx
        mult1 <= in2_i * W_imag;        //ayby
        mult2 <= in2_r * W_imag;        //axby
        mult3 <= in2_i * W_real;        //byax
        
        out_r_temp <= mult0 - mult1;    //(axbx - ayby)
        out_i_temp <= mult2 + mult3;    //j(axby + aybx)
    end
    
    
/**************connect reg to buffer************/

    //assign out_r = out_r_temp;
    //assign out_i = out_i_temp;
    
    assign out_r = {out_r_temp[23:16],out_r_temp[15:8]};
    assign out_i = {out_i_temp[23:16],out_i_temp[15:8]};
        
endmodule