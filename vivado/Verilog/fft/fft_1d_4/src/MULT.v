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
    input  wire [`InBus]       in2_r,
    input  wire [`InBus]       in2_i,
    
    output wire [`OutBus]      out_r,
    output wire [`OutBus]      out_i,
    
    input  wire [`WBus]        W_real,
    input  wire [`WBus]        W_imag
    );

/*************define reg temp***********/
    reg [`OutBus] out_r_temp;
    reg [`OutBus] out_i_temp;
    
    reg [`MultBus] mult0;
    reg [`MultBus] mult1;
    reg [`MultBus] mult2;
    reg [`MultBus] mult3;
    
    
    /*(ax + jay) * (bx + jby) = (axbx - ayby) + j(axby + aybx)*/
    always @(*) begin
        mult0 <= in2_r * W_real;        //axbx
        mult1 <= in2_i * W_imag;        //ayby
        mult2 <= in2_r * W_imag;        //axby
        mult3 <= in2_i * W_real;        //byax
        
        out_r_temp <= mult0 - mult1;    //(axbx - ayby)
        out_i_temp <= mult2 + mult3;    //j(axby + aybx)
    end
    
    
/**************connect wire to buffer************/
    assign out_r = out_r_temp;
    assign out_i = out_i_temp;
        
endmodule