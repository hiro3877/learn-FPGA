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

module W_control2(
    input  wire                clk,
    output reg  signed [`WBus] W_real,
    output reg  signed [`WBus] W_imag
    );
    

/***************define wire and reg********************/
    reg [`WCountBus] count = 6'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 6'd32) begin
            count <= 6'd0;
        end else begin
            count <= count + 6'd1;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
        6'd13 : begin
        W_real <= `W8_real;
        W_imag <= `W8_imag;
        end
        6'd14 : begin
        W_real <= `W9_real;
        W_imag <= `W9_imag;
        end
        6'd15 : begin
        W_real <= `W10_real;
        W_imag <= `W10_imag;
        end
        6'd16 : begin
        W_real <= `W11_real;
        W_imag <= `W11_imag;
        end
        6'd21 : begin
        W_real <= `W12_real;
        W_imag <= `W12_imag;
        end
        6'd22 : begin
        W_real <= `W13_real;
        W_imag <= `W13_imag;
        end
        6'd23 : begin
        W_real <= `W14_real;
        W_imag <= `W14_imag;
        end
        6'd24 : begin
        W_real <= `W15_real;
        W_imag <= `W15_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
