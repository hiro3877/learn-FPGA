`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/27 15:55:18
// Design Name: 
// Module Name: fft_1d_4_top_sim
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

//`include "./nettype.h"
//`include "./std_define.h"

module fft_1d_4_top_sim();


    reg [`InBus]            in0_r;
    reg [`InBus]            in0_i;
    reg [`InBus]            in1_r;
    reg [`InBus]            in1_i;
    reg [`InBus]            in2_r;
    reg [`InBus]            in2_i;
    reg [`InBus]            in3_r;  
    reg [`InBus]            in3_i;  
    
    wire [`OutBus]          out0_r;  
    wire [`OutBus]          out0_i;  
    wire [`OutBus]          out1_r;  
    wire [`OutBus]          out1_i;  
    wire [`OutBus]          out2_r;  
    wire [`OutBus]          out2_i;  
    wire [`OutBus]          out3_r;
    wire [`OutBus]          out3_i;


    fft_1d_4_top top_sim (in0_r,in0_i,in1_r,in1_i,in2_r,in2_i,in3_r,in3_i,
                          out0_r,out0_i,out1_r,out1_i,out2_r,out2_i,out3_r,out3_i);
    
    
    initial begin
    
        in0_r <= 16'b0000000000000000;
        in0_i <= 16'b0000000000000000;
        
        in1_r <= 16'b0000000100000000;
        in1_i <= 16'b0000000100000000;
        
        in2_r <= 16'b0000001000000000;
        in2_i <= 16'b0000001000000000;
        
        in3_r <= 16'b0000001100000000;
        in3_i <= 16'b0000001100000000;
        
        #100      
        $finish;
        
    end          



endmodule
