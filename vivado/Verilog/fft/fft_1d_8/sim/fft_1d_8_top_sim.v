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

module fft_1d_8_top_sim();


reg [`InBus] in0_r;
reg [`InBus] in0_i;
reg [`InBus] in1_r;
reg [`InBus] in1_i;
reg [`InBus] in2_r;
reg [`InBus] in2_i;
reg [`InBus] in3_r;
reg [`InBus] in3_i;
reg [`InBus] in4_r;
reg [`InBus] in4_i;
reg [`InBus] in5_r;
reg [`InBus] in5_i;
reg [`InBus] in6_r;
reg [`InBus] in6_i;
reg [`InBus] in7_r;
reg [`InBus] in7_i;

wire [`OutBus] out0_r;
wire [`OutBus] out0_i;
wire [`OutBus] out1_r;
wire [`OutBus] out1_i;
wire [`OutBus] out2_r;
wire [`OutBus] out2_i;
wire [`OutBus] out3_r;
wire [`OutBus] out3_i;
wire [`OutBus] out4_r;
wire [`OutBus] out4_i;
wire [`OutBus] out5_r;
wire [`OutBus] out5_i;
wire [`OutBus] out6_r;
wire [`OutBus] out6_i;
wire [`OutBus] out7_r;
wire [`OutBus] out7_i;


fft_1d_8_top top_sim (in0_r,in0_i,in1_r,in1_i,in2_r,in2_i,in3_r,in3_i,in4_r,in4_i,in5_r,in5_i,in6_r,in6_i,in7_r,in7_i,
                       out0_r,out0_i,out1_r,out1_i,out2_r,out2_i,out3_r,out3_i,out4_r,out4_i,out5_r,out5_i,out6_r,out6_i,out7_r,out7_i);
    
    
    initial begin
    
        in0_r <= 16'b0000000000000000;
        in0_i <= 16'b0000000000000000;
        
        in1_r <= 16'b0000000100000000;
        in1_i <= 16'b0000000100000000;
        
        in2_r <= 16'b0000001000000000;
        in2_i <= 16'b0000001000000000;
        
        in3_r <= 16'b0000001100000000;
        in3_i <= 16'b0000001100000000;
        
        in4_r <= 16'b0000010000000000;
        in4_i <= 16'b0000010000000000;
        
        in5_r <= 16'b0000010100000000;
        in5_i <= 16'b0000010100000000;
        
        in6_r <= 16'b0000011000000000;
        in6_i <= 16'b0000011000000000;
        
        in7_r <= 16'b0000011100000000;
        in7_i <= 16'b0000011100000000;
        
        #100      
        $finish;
        
    end          



endmodule
