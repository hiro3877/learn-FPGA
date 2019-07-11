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

module MUX_control2(
    input  wire                    clk,
    output reg  [`MuxControlBus]   sel
    );
    

/***************define wire and reg********************/
    reg [`MuxCountBus] count = 5'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 5'd16) begin
            count <= 5'b0;
        end else begin
            count <= count + 5'b001;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
            5'd7 : sel <= 2'd0;
            5'd8 : sel <= 2'd0;
            
            5'd9  : sel <= 2'd1;
            5'd10 : sel <= 2'd1;
            
            5'd11 : sel <= 2'd0;
            5'd12 : sel <= 2'd0;
            
            5'd13 : sel <= 2'd1;
            5'd14 : sel <= 2'd1;
            
            default : sel <= 2'd2;
            
        endcase
    end
                                
endmodule
