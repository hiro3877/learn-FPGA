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

module W_control4(
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
            
        6'd16 : begin
        W_real <= `W24_real;
        W_imag <= `W24_imag;
        end
        6'd18 : begin
        W_real <= `W25_real;
        W_imag <= `W25_imag;
        end
        6'd20 : begin
        W_real <= `W26_real;
        W_imag <= `W26_imag;
        end
        6'd22 : begin
        W_real <= `W27_real;
        W_imag <= `W27_imag;
        end
        6'd24 : begin
        W_real <= `W28_real;
        W_imag <= `W28_imag;
        end
        6'd26 : begin
        W_real <= `W29_real;
        W_imag <= `W29_imag;
        end
        6'd28 : begin
        W_real <= `W30_real;
        W_imag <= `W30_imag;
        end
        6'd30 : begin
        W_real <= `W31_real;
        W_imag <= `W31_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
