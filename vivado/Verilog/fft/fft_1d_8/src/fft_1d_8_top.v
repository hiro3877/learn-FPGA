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

module fft_1d_8_top(
    input wire [`InBus]            in0_r,
    input wire [`InBus]            in0_i,
    input wire [`InBus]            in1_r,
    input wire [`InBus]            in1_i,
    input wire [`InBus]            in2_r,
    input wire [`InBus]            in2_i,
    input wire [`InBus]            in3_r,
    input wire [`InBus]            in3_i,
    input wire [`InBus]            in4_r,
    input wire [`InBus]            in4_i,
    input wire [`InBus]            in5_r,
    input wire [`InBus]            in5_i,
    input wire [`InBus]            in6_r,
    input wire [`InBus]            in6_i,
    input wire [`InBus]            in7_r,
    input wire [`InBus]            in7_i,
    
    output wire [`OutBus]          out0_r,
    output wire [`OutBus]          out0_i,
    output wire [`OutBus]          out1_r,
    output wire [`OutBus]          out1_i,
    output wire [`OutBus]          out2_r,
    output wire [`OutBus]          out2_i,
    output wire [`OutBus]          out3_r,
    output wire [`OutBus]          out3_i,
    output wire [`OutBus]          out4_r,
    output wire [`OutBus]          out4_i,
    output wire [`OutBus]          out5_r,
    output wire [`OutBus]          out5_i,
    output wire [`OutBus]          out6_r,
    output wire [`OutBus]          out6_i,
    output wire [`OutBus]          out7_r,
    output wire [`OutBus]          out7_i
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
        
    wire  [`CalcTempBus]         temp_r2_1_r;
    wire [`CalcTempBus]          temp_r2_1_i;
    wire [`CalcTempBus]          temp_r2_2_r;
    wire [`CalcTempBus]          temp_r2_2_i;
        
    wire [`CalcTempBus]          temp_r3_1_r;
    wire [`CalcTempBus]          temp_r3_1_i;
    wire [`CalcTempBus]          temp_r3_2_r;
    wire [`CalcTempBus]          temp_r3_2_i;
    
    wire [`CalcTempBus]          temp_r4_1_r;
    wire [`CalcTempBus]          temp_r4_1_i;
    wire [`CalcTempBus]          temp_r4_2_r;
    wire [`CalcTempBus]          temp_r4_2_i;
    
    wire [`CalcTempBus]          temp_r5_1_r;
    wire [`CalcTempBus]          temp_r5_1_i;
    wire [`CalcTempBus]          temp_r5_2_r;
    wire [`CalcTempBus]          temp_r5_2_i;
        
    wire  [`CalcTempBus]         temp_r6_1_r;
    wire [`CalcTempBus]          temp_r6_1_i;
    wire [`CalcTempBus]          temp_r6_2_r;
    wire [`CalcTempBus]          temp_r6_2_i;
        
    wire [`CalcTempBus]          temp_r7_1_r;
    wire [`CalcTempBus]          temp_r7_1_i;
    wire [`CalcTempBus]          temp_r7_2_r;
    wire [`CalcTempBus]          temp_r7_2_i;
    
    wire [`CalcTempBus]          temp_r8_1_r;
    wire [`CalcTempBus]          temp_r8_1_i;
    wire [`CalcTempBus]          temp_r8_2_r;
    wire [`CalcTempBus]          temp_r8_2_i;
    
    wire [`CalcTempBus]          temp_r9_1_r;
    wire [`CalcTempBus]          temp_r9_1_i;
    wire [`CalcTempBus]          temp_r9_2_r;
    wire [`CalcTempBus]          temp_r9_2_i;
        
    wire  [`CalcTempBus]         temp_r10_1_r;
    wire [`CalcTempBus]          temp_r10_1_i;
    wire [`CalcTempBus]          temp_r10_2_r;
    wire [`CalcTempBus]          temp_r10_2_i;
        
    wire [`CalcTempBus]          temp_r11_1_r;
    wire [`CalcTempBus]          temp_r11_1_i;
    wire [`CalcTempBus]          temp_r11_2_r;
    wire [`CalcTempBus]          temp_r11_2_i;
    
    /***************define Mult out temp*************/
    wire[`CalcTempBus]           temp_m0_r;      //m0_1 (Mult0 out_r)
    wire[`CalcTempBus]           temp_m0_i;
    
    wire[`CalcTempBus]           temp_m1_r;
    wire[`CalcTempBus]           temp_m1_i;
    
    wire[`CalcTempBus]           temp_m2_r;
    wire[`CalcTempBus]           temp_m2_i;
    
    wire[`CalcTempBus]           temp_m3_r;
    wire[`CalcTempBus]           temp_m3_i;
    
    wire[`CalcTempBus]           temp_m4_r;
    wire[`CalcTempBus]           temp_m4_i;
    
    wire[`CalcTempBus]           temp_m5_r;
    wire[`CalcTempBus]           temp_m5_i;
    
    wire[`CalcTempBus]           temp_m6_r;
    wire[`CalcTempBus]           temp_m6_i;
    
    wire[`CalcTempBus]           temp_m7_r;
    wire[`CalcTempBus]           temp_m7_i;
    
    wire[`CalcTempBus]           temp_m8_r;
    wire[`CalcTempBus]           temp_m8_i;
    
    wire[`CalcTempBus]           temp_m9_r;
    wire[`CalcTempBus]           temp_m9_i;
    
    wire[`CalcTempBus]           temp_m10_r;
    wire[`CalcTempBus]           temp_m10_i;
    
    wire[`CalcTempBus]           temp_m11_r;
    wire[`CalcTempBus]           temp_m11_i;
            
    /***************connection module****************/
    
    /******************add and sub******************/
    radix2 radix2_0 (
        .in1_r(in0_r),
        .in1_i(in0_i),
        .in2_r(in4_r),
        .in2_i(in4_i),
        .out1_r(temp_r0_1_r),
        .out1_i(temp_r0_1_i),
        .out2_r(temp_r0_2_r),
        .out2_i(temp_r0_2_i)        
        );
        
        
    radix2 radix2_1 (
        .in1_r(temp_r0_1_r),
        .in1_i(temp_r0_1_i),
        .in2_r(temp_r6_1_r),
        .in2_i(temp_r6_1_i),
        .out1_r(temp_r1_1_r),
        .out1_i(temp_r1_1_i),
        .out2_r(temp_r1_2_r),
        .out2_i(temp_r1_2_i)
        );  
        
    radix2 radix2_2 (
        .in1_r(temp_r1_1_r),
        .in1_i(temp_r1_1_i),
        .in2_r(temp_r4_1_r),
        .in2_i(temp_r4_1_i),
        .out1_r(temp_r2_1_r),
        .out1_i(temp_r2_1_i),
        .out2_r(temp_r2_2_r),
        .out2_i(temp_r2_2_i)
        );
        
    radix2 radix2_3 (
        .in1_r(in1_r),
        .in1_i(in1_i),
        .in2_r(in5_r),
        .in2_i(in5_i),
        .out1_r(temp_r3_1_r),
        .out1_i(temp_r3_1_i),
        .out2_r(temp_r3_2_r),
        .out2_i(temp_r3_2_i)        
        );
        
    radix2 radix2_4 (
        .in1_r(temp_r3_1_r),
        .in1_i(temp_r3_1_i),
        .in2_r(temp_r9_1_r),
        .in2_i(temp_r9_1_i),
        .out1_r(temp_r4_1_r),
        .out1_i(temp_r4_1_i),
        .out2_r(temp_r4_2_r),
        .out2_i(temp_r4_2_i)
        );
		
    radix2 radix2_5 (
        .in1_r(temp_m1_r),
        .in1_i(temp_m1_i),
        .in2_r(temp_m4_r),
        .in2_i(temp_m4_i),
        .out1_r(temp_r5_1_r),
        .out1_i(temp_r5_1_i),
        .out2_r(temp_r5_2_r),
        .out2_i(temp_r5_2_i)
        );
		
    radix2 radix2_6 (
        .in1_r(in2_r),
        .in1_i(in2_i),
        .in2_r(in6_r),
        .in2_i(in6_i),
        .out1_r(temp_r6_1_r),
        .out1_i(temp_r6_1_i),
        .out2_r(temp_r6_2_r),
        .out2_i(temp_r6_2_i)        
        );
		
    radix2 radix2_7 (
        .in1_r(temp_m0_r),
        .in1_i(temp_m0_i),
        .in2_r(temp_m6_r),
        .in2_i(temp_m6_i),
        .out1_r(temp_r7_1_r),
        .out1_i(temp_r7_1_i),
        .out2_r(temp_r7_2_r),
        .out2_i(temp_r7_2_i)
        );
		
    radix2 radix2_8 (
        .in1_r(temp_r7_1_r),
        .in1_i(temp_r7_1_i),
        .in2_r(temp_r10_1_r),
        .in2_i(temp_r10_1_i),
        .out1_r(temp_r8_1_r),
        .out1_i(temp_r8_1_i),
        .out2_r(temp_r8_2_r),
        .out2_i(temp_r8_2_i)
        );
		
    radix2 radix2_9 (
        .in1_r(in3_r),
        .in1_i(in3_i),
        .in2_r(in7_r),
        .in2_i(in7_i),
        .out1_r(temp_r9_1_r),
        .out1_i(temp_r9_1_i),
        .out2_r(temp_r9_2_r),
        .out2_i(temp_r9_2_i)        
        );
		
    radix2 radix2_10 (
        .in1_r(temp_m3_r),
        .in1_i(temp_m3_i),
        .in2_r(temp_m9_r),
        .in2_i(temp_m9_i),
        .out1_r(temp_r10_1_r),
        .out1_i(temp_r10_1_i),
        .out2_r(temp_r10_2_r),
        .out2_i(temp_r10_2_i)
        );
		
    radix2 radix2_11 (
        .in1_r(temp_m7_r),
        .in1_i(temp_m7_i),
        .in2_r(temp_m10_r),
        .in2_i(temp_m10_i),
        .out1_r(temp_r11_1_r),
        .out1_i(temp_r11_1_i),
        .out2_r(temp_r11_2_r),
        .out2_i(temp_r11_2_i)
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
        .out_i(temp_m2_i),
        .W_real(`W2_real),
        .W_imag(`W2_imag)
        );
        
    MULT MULT3 (
        .in2_r(temp_r3_2_r),
        .in2_i(temp_r3_2_i),
        .out_r(temp_m3_r),
        .out_i(temp_m3_i),
        .W_real(`W3_real),
        .W_imag(`W3_imag)
        );
		
    MULT MULT4 (
        .in2_r(temp_r4_2_r),
        .in2_i(temp_r4_2_i),
        .out_r(temp_m4_r),
        .out_i(temp_m4_i),
        .W_real(`W4_real),
        .W_imag(`W4_imag)
        );
		
    MULT MULT5 (
        .in2_r(temp_r5_2_r),
        .in2_i(temp_r5_2_i),
        .out_r(temp_m5_r),
        .out_i(temp_m5_i),
        .W_real(`W5_real),
        .W_imag(`W5_imag)
        );
		
    MULT MULT6 (
        .in2_r(temp_r6_2_r),
        .in2_i(temp_r6_2_i),
        .out_r(temp_m6_r),
        .out_i(temp_m6_i),
        .W_real(`W6_real),
        .W_imag(`W6_imag)
        );
		
    MULT MULT7 (
        .in2_r(temp_r7_2_r),
        .in2_i(temp_r7_2_i),
        .out_r(temp_m7_r),
        .out_i(temp_m7_i),
        .W_real(`W7_real),
        .W_imag(`W7_imag)
        );
		
    MULT MULT8 (
        .in2_r(temp_r8_2_r),
        .in2_i(temp_r8_2_i),
        .out_r(temp_m8_r),
        .out_i(temp_m8_i),
        .W_real(`W8_real),
        .W_imag(`W8_imag)
        );
		
    MULT MULT9 (
        .in2_r(temp_r9_2_r),
        .in2_i(temp_r9_2_i),
        .out_r(temp_m9_r),
        .out_i(temp_m9_i),
        .W_real(`W9_real),
        .W_imag(`W9_imag)
        );
		
    MULT MULT10 (
        .in2_r(temp_r10_2_r),
        .in2_i(temp_r10_2_i),
        .out_r(temp_m10_r),
        .out_i(temp_m10_i),
        .W_real(`W10_real),
        .W_imag(`W10_imag)
        );
        
    MULT MULT11 (
        .in2_r(temp_r11_2_r),
        .in2_i(temp_r11_2_i),
        .out_r(temp_m11_r),
        .out_i(temp_m11_i),
        .W_real(`W11_real),
        .W_imag(`W11_imag)
        );
    
    /****************connection wire to buffer***************/
    
    assign out0_r = temp_r2_1_r;
    assign out0_i = temp_r2_1_i;
    
    assign out1_r = temp_r8_1_r;
    assign out1_i = temp_r8_1_i;
    
    assign out2_r = temp_r5_1_r;
    assign out2_i = temp_r5_1_i;
            
    assign out3_r = temp_r11_1_r;
    assign out3_i = temp_r11_1_i;
	
    assign out4_r = temp_m2_r;
    assign out4_i = temp_m2_i;
    
    assign out5_r = temp_m8_r;
    assign out5_i = temp_m8_i;
    
    assign out6_r = temp_m5_r;
    assign out6_i = temp_m5_i;
            
    assign out7_r = temp_m11_r;
    assign out7_i = temp_m11_i;
    
    
endmodule
