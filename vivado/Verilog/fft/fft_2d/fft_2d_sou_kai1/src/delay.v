`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/05 20:06:09
// Design Name: 
// Module Name: W_control
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

module delay(
    input  wire                      clk,
    input  wire [`DNumBus]           dnum,           //delay number     
    input  wire signed [`CalcTempBus]       in,
    output reg  signed [`CalcTempBus]       out
    );
    
    
    /************define delay temp*************/
    
    wire signed [`CalcTempBus] temp1;
    wire signed [`CalcTempBus] temp2;
    wire signed [`CalcTempBus] temp3;
    wire signed [`CalcTempBus] temp4;
    wire signed [`CalcTempBus] temp5;
    wire signed [`CalcTempBus] temp6;
    wire signed [`CalcTempBus] temp7;
    wire signed [`CalcTempBus] temp8;
    wire signed [`CalcTempBus] temp9;
    wire signed [`CalcTempBus] temp10;
    wire signed [`CalcTempBus] temp11;
    wire signed [`CalcTempBus] temp12;
    wire signed [`CalcTempBus] temp13;
    wire signed [`CalcTempBus] temp14;
    wire signed [`CalcTempBus] temp15;
    wire signed [`CalcTempBus] temp16;
    wire signed [`CalcTempBus] temp17;
    
    delay_base delay1 (clk,in,temp1);
    delay_base delay2 (clk,temp1,temp2);
    delay_base delay3 (clk,temp2,temp3);
    delay_base delay4 (clk,temp3,temp4);
    delay_base delay5 (clk,temp4,temp5);
    delay_base delay6 (clk,temp5,temp6);
    delay_base delay7 (clk,temp6,temp7);
    delay_base delay8 (clk,temp7,temp8);
    delay_base delay9 (clk,temp8,temp9);
    delay_base delay10 (clk,temp9,temp10);
    delay_base delay11 (clk,temp10,temp11);
    delay_base delay12 (clk,temp11,temp12);
    delay_base delay13 (clk,temp12,temp13);
    delay_base delay14 (clk,temp13,temp14);
    delay_base delay15 (clk,temp14,temp15);
    delay_base delay16 (clk,temp15,temp16);
    delay_base delay17 (clk,temp16,temp17);
    
    /***************control delay*********************/
    
    always @(posedge clk) begin
        case (dnum)
        5'd1	: out <= temp1;
        5'd2    : out <= temp2;
        5'd3    : out <= temp3;
        5'd4    : out <= temp4;
        5'd5    : out <= temp5;
        5'd6    : out <= temp6;
        5'd7    : out <= temp7;
        5'd8    : out <= temp8;
        5'd9    : out <= temp9;
        5'd10    : out <= temp10;
        5'd11    : out <= temp11;
        5'd12    : out <= temp12;
        5'd13    : out <= temp13;
        5'd14    : out <= temp14;
        5'd15    : out <= temp15;
        5'd16    : out <= temp16;
        5'd17    : out <= temp17;
            default : out <= 16'b0;
        endcase
    end
             
/***************define wire and reg********************/
    //reg [`DNumBus] count = 4'b0;
    
    
    /***********counter**************/
    /*
    always @(posedge clk) begin
        if (count == dnum) begin
            count <= 4'b0;
            out <= in;
            
        end else begin
            count <= count + 4'b001;
        end
    end
    */
                                
endmodule
