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
    reg [`MuxCountBus] count = 6'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 6'd32) begin
            count <= 6'b0;
        end else begin
            count <= count + 6'd1;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
        6'd13 : sel <= 2'd0;
        6'd14 : sel <= 2'd0;
        6'd15 : sel <= 2'd0;
        6'd16 : sel <= 2'd0;
        6'd17 : sel <= 2'd1;
        6'd18 : sel <= 2'd1;
        6'd19 : sel <= 2'd1;
        6'd20 : sel <= 2'd1;
        6'd21 : sel <= 2'd0;
        6'd22 : sel <= 2'd0;
        6'd23 : sel <= 2'd0;
        6'd24 : sel <= 2'd0;
        6'd25 : sel <= 2'd1;
        6'd26 : sel <= 2'd1;
        6'd27 : sel <= 2'd1;
        6'd28 : sel <= 2'd1;
            
            default : sel <= 2'd2;
            
        endcase
    end
                                
endmodule
