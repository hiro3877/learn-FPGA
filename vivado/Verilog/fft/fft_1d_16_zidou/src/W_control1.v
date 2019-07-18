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

module W_control1(
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
            
        6'd9 : begin
        W_real <= `W0_real;
        W_imag <= `W0_imag;
        end
        6'd10 : begin
        W_real <= `W1_real;
        W_imag <= `W1_imag;
        end
        6'd11 : begin
        W_real <= `W2_real;
        W_imag <= `W2_imag;
        end
        6'd12 : begin
        W_real <= `W3_real;
        W_imag <= `W3_imag;
        end
        6'd13 : begin
        W_real <= `W4_real;
        W_imag <= `W4_imag;
        end
        6'd14 : begin
        W_real <= `W5_real;
        W_imag <= `W5_imag;
        end
        6'd15 : begin
        W_real <= `W6_real;
        W_imag <= `W6_imag;
        end
        6'd16 : begin
        W_real <= `W7_real;
        W_imag <= `W7_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
