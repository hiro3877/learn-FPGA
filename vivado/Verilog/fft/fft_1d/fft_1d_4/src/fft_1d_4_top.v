`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/25 18:27:01
// Design Name: 
// Module Name: fft_1d_4_top
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

module fft_1d_4_top(
    input wire [`InBus]            in0_r,
    input wire [`InBus]            in0_i,
    input wire [`InBus]            in1_r,
    input wire [`InBus]            in1_i,
    input wire [`InBus]            in2_r,
    input wire [`InBus]            in2_i,
    input wire [`InBus]            in3_r,
    input wire [`InBus]            in3_i,
    
    output wire [`OutBus]          out0_r,
    output wire [`OutBus]          out0_i,
    output wire [`OutBus]          out1_r,
    output wire [`OutBus]          out1_i,
    output wire [`OutBus]          out2_r,
    output wire [`OutBus]          out2_i,
    output wire [`OutBus]          out3_r,
    output wire [`OutBus]          out3_i
    );
    
    
    /*************define Radix2 out temp***************/
    wire [`CalcTempBus]          temp_r0_1_r;     //r0_1_r (Radix2_0 out1_r)
    wire [`CalcTempBus]          temp_r0_1_i;
    wire [`CalcTempBus]          temp_r0_2_r;
    wire [`CalcTempBus]          temp_r0_2_i;
    
    wire [`CalcTempBus]          temp_r1_1_r;
    wire [`CalcTempBus]          temp_r1_1_i;
    wire [`CalcTempBus]          temp_r1_2_r;
    wire [`CalcTempBus]          temp_r1_2_i;
        
    wire  [`CalcTempBus]          temp_r2_1_r;
    wire [`CalcTempBus]          temp_r2_1_i;
    wire [`CalcTempBus]          temp_r2_2_r;
    wire [`CalcTempBus]          temp_r2_2_i;
        
    wire [`CalcTempBus]          temp_r3_1_r;
    wire [`CalcTempBus]          temp_r3_1_i;
    wire [`CalcTempBus]          temp_r3_2_r;
    wire [`CalcTempBus]          temp_r3_2_i;
    
    /***************define Mult out temp*************/
    wire[`CalcTempBus]           temp_m0_r;      //m0_1 (Mult0 out_r)
    wire[`CalcTempBus]           temp_m0_i;
    
    wire[`CalcTempBus]           temp_m1_r;
    wire[`CalcTempBus]           temp_m1_i;
    
    wire[`CalcTempBus]           temp_m2_r;
    wire[`CalcTempBus]           temp_m2_i;
    
    wire[`CalcTempBus]           temp_m3_r;
    wire[`CalcTempBus]           temp_m3_i;
            
    /***************connection module****************/
    
    /******************add and sub******************/
    radix2 radix2_0 (
        .in1_r(in0_r),
        .in1_i(in0_i),
        .in2_r(in2_r),
        .in2_i(in2_i),
        .out1_r(temp_r0_1_r),
        .out1_i(temp_r0_1_i),
        .out2_r(temp_r0_2_r),
        .out2_i(temp_r0_2_i)        
        );
        
    radix2 radix2_1 (
        .in1_r(in1_r),
        .in1_i(in1_i),
        .in2_r(in3_r),
        .in2_i(in3_i),
        .out1_r(temp_r1_1_r),
        .out1_i(temp_r1_1_i),
        .out2_r(temp_r1_2_r),
        .out2_i(temp_r1_2_i)
        );
        
    radix2 radix2_2 (
        .in1_r(temp_r0_1_r),
        .in1_i(temp_r0_1_i),
        .in2_r(temp_r1_1_r),
        .in2_i(temp_r1_1_i),
        .out1_r(temp_r2_1_r),
        //.out1_r(out0_r),
        .out1_i(temp_r2_1_i),
        //.out1_i(out0_i),
        .out2_r(temp_r2_2_r),
        .out2_i(temp_r2_2_i)
        );
        
    radix2 radix2_3 (
        .in1_r(temp_m0_r),
        .in1_i(temp_m0_i),
        .in2_r(temp_m1_r),
        .in2_i(temp_m1_i),
        .out1_r(temp_r3_1_r),
        //.out1_r(out1_r),
        .out1_i(temp_r3_1_i),
        //.out1_i(out1_i),
        .out2_r(temp_r3_2_r),
        .out2_i(temp_r3_2_i)
        );
        
    /***********************Mult**************************/
    
    MULT MULT0 (
        .in2_r(temp_r0_2_r),
        .in2_i(temp_r0_2_i),
        .out_r(temp_m0_r),
        .out_i(temp_m0_i),
        .W_real(`W0_real),
        .W_imag(`W0_imag)
        );
        
    MULT MULT1 (
        .in2_r(temp_r1_2_r),
        .in2_i(temp_r1_2_i),
        .out_r(temp_m1_r),
        .out_i(temp_m1_i),
        .W_real(`W1_real),
        .W_imag(`W1_imag)
        );
        
    MULT MULT2 (
        .in2_r(temp_r2_2_r),
        .in2_i(temp_r2_2_i),
        .out_r(temp_m2_r),
        //.out_r(out2_r),
        .out_i(temp_m2_i),
        //.out_i(out2_i),
        .W_real(`W2_real),
        .W_imag(`W2_imag)
        );
        
    MULT MULT3 (
        .in2_r(temp_r3_2_r),
        .in2_i(temp_r3_2_i),
        .out_r(temp_m3_r),
        //.out_r(out3_r),
        .out_i(temp_m3_i),
        //.out_i(out3_i),
        .W_real(`W3_real),
        .W_imag(`W3_imag)
        );
        
    
    /****************connection wire to buffer***************/
    
    assign out0_r = temp_r2_1_r;
    assign out0_i = temp_r2_1_i;
    
    assign out1_r = temp_r3_1_r;
    assign out1_i = temp_r3_1_i;
    
    assign out2_r = temp_m2_r;
    assign out2_i = temp_m2_i;
            
    assign out3_r = temp_m3_r;
    assign out3_i = temp_m3_i;
    
    
endmodule
