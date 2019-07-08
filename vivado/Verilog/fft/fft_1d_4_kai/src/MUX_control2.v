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
    reg [`MuxCountBus] count = 4'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 4'b1001) begin
            count <= 4'b0;
        end else begin
            count <= count + 4'b001;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
            4'b0100 : sel <= 2'b0;
            4'b0101 : sel <= 2'b01;
            
            4'b0110 : sel <= 2'b0;
            4'b0111 : sel <= 2'b01;
                        
            default : sel <= 2'b10;
            
        endcase
    end
                                
endmodule
