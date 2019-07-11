`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/05 19:42:42
// Design Name: 
// Module Name: fft_1d_8_kai_top
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

module fft_1d_8_kai_top(        //8 => 4

    input  wire clk,

    input  wire signed [`InBus]       in_r,
    input  wire signed [`InBus]       in_i,
    
    output wire signed [`OutBus]      out_r,
    output wire signed [`OutBus]      out_i
        
);

/***************************define wire and reg*******************************/

    /*************define Radix2 out temp***************/
    wire signed [`CalcTempBus]          temp_r0_1_r;     //r0_1_r (Radix2_0 out1_r)
    wire signed [`CalcTempBus]          temp_r0_1_i;
    wire signed [`CalcTempBus]          temp_r0_2_r;
    wire signed [`CalcTempBus]          temp_r0_2_i;
    
    wire signed [`CalcTempBus]          temp_r1_1_r;
    wire signed [`CalcTempBus]          temp_r1_1_i;
    wire signed [`CalcTempBus]          temp_r1_2_r;
    wire signed [`CalcTempBus]          temp_r1_2_i;
    
    wire signed [`CalcTempBus]          temp_r2_1_r;
    wire signed [`CalcTempBus]          temp_r2_1_i;
    wire signed [`CalcTempBus]          temp_r2_2_r;
    wire signed [`CalcTempBus]          temp_r2_2_i;

    /***************define Mult out temp*************/
    wire signed [`CalcTempBus]          temp_m0_r;      //m0_1 (Mult0 out_r)
    wire signed [`CalcTempBus]          temp_m0_i;
    
    wire signed [`CalcTempBus]          temp_m1_r;
    wire signed [`CalcTempBus]          temp_m1_i;
    
    wire signed [`CalcTempBus]          temp_m2_r;
    wire signed [`CalcTempBus]          temp_m2_i;
    
    /*************define delay temp*********************/
    wire signed [`CalcTempBus]          temp_d0;         //d0 (delay)
    wire signed [`CalcTempBus]          temp_d1;
    wire signed [`CalcTempBus]          temp_d2;
    wire signed [`CalcTempBus]          temp_d3;
    wire signed [`CalcTempBus]          temp_d4;
    wire signed [`CalcTempBus]          temp_d5;
    wire signed [`CalcTempBus]          temp_d6;
    wire signed [`CalcTempBus]          temp_d7;
    wire signed [`CalcTempBus]          temp_d8;
    wire signed [`CalcTempBus]          temp_d9;
    wire signed [`CalcTempBus]          temp_d10;
    wire signed [`CalcTempBus]          temp_d11;
    
    /***************define Mux temp*********************/
    wire signed [`CalcTempBus]          temp_mux1;         //mux1 (mux1)
    wire signed [`CalcTempBus]          temp_mux2;
    wire signed [`CalcTempBus]          temp_mux3;
    wire signed [`CalcTempBus]          temp_mux4;
    wire signed [`CalcTempBus]          temp_mux5;
    wire signed [`CalcTempBus]          temp_mux6;
    
    /**************define MUX_control temp****************/
    wire [`MuxControlBus]               temp_muxc1;         //muxc1 (MUX_control1)
    wire [`MuxControlBus]               temp_muxc2;
    wire [`MuxControlBus]               temp_muxc3;
    
    /*************difine W_control temp****************/
    wire signed [`WBus]                 temp_w1_r;         //w1_r (W_control1 W_real)
    wire signed [`WBus]                 temp_w1_i;
    wire signed [`WBus]                 temp_w2_r;
    wire signed [`WBus]                 temp_w2_i;
    wire signed [`WBus]                 temp_w3_r;
    wire signed [`WBus]                 temp_w3_i;
    
/**************************end define wire and reg***************************/
    
    
/***************************connenction module**************************/

    /**********************MUX_control********************/
    MUX_control1 MUX_control1 (clk,temp_muxc1);
    MUX_control2 MUX_control2 (clk,temp_muxc2);
    MUX_control3 MUX_control3 (clk,temp_muxc3);
    
    /*********************W_control************************/
    W_control1 W_control1 (clk,temp_w1_r,temp_w1_i);
    W_control2 W_control2 (clk,temp_w2_r,temp_w2_i);
    W_control3 W_control3 (clk,temp_w3_r,temp_w3_i);
    
    /***********************delay**************************/
    //delay delay0 (clk,4'd2,in_r,temp_d0);
    delay delay0 (clk,4'd5,in_r,temp_d0);       //sim dato saisyo 1clk delay sinai node , 1clk oomeni delay siteru
    //delay delay1 (clk,4'd2,in_i,temp_d1);
    delay delay1 (clk,4'd5,in_i,temp_d1);       //sim dato saisyo 1clk delay sinai node , 1clk oomeni delay siteru
    delay delay2 (clk,4'd4,temp_m0_r,temp_d2);
    delay delay3 (clk,4'd4,temp_m0_i,temp_d3);
    delay delay4 (clk,4'd2,temp_mux1,temp_d4);
    delay delay5 (clk,4'd2,temp_mux2,temp_d5);
    delay delay6 (clk,4'd2,temp_m1_r,temp_d6);
    delay delay7 (clk,4'd2,temp_m1_i,temp_d7);
    delay delay8 (clk,4'd1,temp_mux3,temp_d8);
    delay delay9 (clk,4'd1,temp_mux4,temp_d9);
    delay delay10 (clk,4'd1,temp_m2_r,temp_d10);
    delay delay11 (clk,4'd1,temp_m2_i,temp_d11);
    
    /**********************mux*****************************/
    mux mux1 (temp_muxc1,temp_r0_1_r,temp_d2,16'b0,temp_mux1);
    mux mux2 (temp_muxc1,temp_r0_1_i,temp_d3,16'b0,temp_mux2);
    mux mux3 (temp_muxc2,temp_r1_1_r,temp_d6,16'b0,temp_mux3);
    mux mux4 (temp_muxc2,temp_r1_1_i,temp_d7,16'b0,temp_mux4);
    mux mux5 (temp_muxc3,temp_r2_1_r,temp_d10,16'b0,temp_mux5);
    mux mux6 (temp_muxc3,temp_r2_1_i,temp_d11,16'b0,temp_mux6);
    
    /********************radix2*********************/
    radix2 radix2_0 (temp_d0,temp_d1,in_r,in_i,temp_r0_1_r,temp_r0_1_i,temp_r0_2_r,temp_r0_2_i);
    radix2 radix2_1 (temp_d4,temp_d5,temp_mux1,temp_mux2,temp_r1_1_r,temp_r1_1_i,temp_r1_2_r,temp_r1_2_i);
    radix2 radix2_2 (temp_d8,temp_d9,temp_mux3,temp_mux4,temp_r2_1_r,temp_r2_1_i,temp_r2_2_r,temp_r2_2_i);
    
    /*******************MULT*******************/
    MULT MULT0 (temp_r0_2_r,temp_r0_2_i,temp_m0_r,temp_m0_i,temp_w1_r,temp_w1_i);
    MULT MULT1 (temp_r1_2_r,temp_r1_2_i,temp_m1_r,temp_m1_i,temp_w2_r,temp_w2_i);
    MULT MULT2 (temp_r2_2_r,temp_r2_2_i,temp_m2_r,temp_m2_i,temp_w3_r,temp_w3_i);
    
/******************************connection module end********************************************/


/**********************connection wire to temp**********************/

    assign out_r = temp_mux5;
    assign out_i = temp_mux6;

endmodule
