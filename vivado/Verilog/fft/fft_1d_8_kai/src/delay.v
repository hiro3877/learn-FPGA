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
    
    wire signed [`CalcTempBus] temp1;       //delay1
    wire signed [`CalcTempBus] temp2;       //delay2
    wire signed [`CalcTempBus] temp3;       //delay3
    wire signed [`CalcTempBus] temp4;
    wire signed [`CalcTempBus] temp5;
    
    /**********connection delay_base******************/
    
    delay_base delay1 (clk,in,temp1);
    delay_base delay2 (clk,temp1,temp2);
    delay_base delay3 (clk,temp2,temp3);
    delay_base delay4 (clk,temp3,temp4);
    delay_base delay5 (clk,temp4,temp5);
    
    /***************control delay*********************/
    
    always @(*) begin
        case (dnum)
            4'd1    : out <= temp1;      //delay1
            4'd2    : out <= temp2;     //delay2
            4'd3    : out <= temp3;     //delay3
            4'd4    : out <= temp4;
            4'd5    : out <= temp5;
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
