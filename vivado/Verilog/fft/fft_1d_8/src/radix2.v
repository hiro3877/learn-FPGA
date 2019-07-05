`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/25 16:47:05
// Design Name: 
// Module Name: radix2
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

module radix2(
    input  wire signed [`InBus]       in1_r,
    input  wire signed [`InBus]       in1_i,
    input  wire signed [`InBus]       in2_r,
    input  wire signed [`InBus]       in2_i,
    
    output wire signed [`OutBus]      out1_r,
    output wire signed [`OutBus]      out1_i,
    output wire signed [`OutBus]      out2_r,
    output wire signed [`OutBus]      out2_i
    );
    
    
    
    /*************define output buffer*************/
    reg signed [`OutBus]  out1_r_tmp;
    reg signed [`OutBus]  out1_i_tmp;
    reg signed [`OutBus]  out2_r_tmp;
    reg signed [`OutBus]  out2_i_tmp;
        
    
    /************add and sub****************/
    always @(in1_r,in1_i,in2_r,in2_i) begin
        out1_r_tmp <= in1_r + in2_r;
        out1_i_tmp <= in1_i + in2_i;
        out2_r_tmp <= in1_r - in2_r;
        out2_i_tmp <= in1_i - in2_i;
    end
    
        
    /**************connect reg to buffer************/
    assign out1_r = out1_r_tmp;
    assign out1_i = out1_i_tmp;
    assign out2_r = out2_r_tmp;
    assign out2_i = out2_i_tmp;
  
endmodule
