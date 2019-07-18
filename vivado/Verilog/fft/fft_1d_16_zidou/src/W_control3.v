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

module W_control3(
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
            
        6'd15 : begin
        W_real <= `W16_real;
        W_imag <= `W16_imag;
        end
        6'd16 : begin
        W_real <= `W17_real;
        W_imag <= `W17_imag;
        end
        6'd19 : begin
        W_real <= `W18_real;
        W_imag <= `W18_imag;
        end
        6'd20 : begin
        W_real <= `W19_real;
        W_imag <= `W19_imag;
        end
        6'd23 : begin
        W_real <= `W20_real;
        W_imag <= `W20_imag;
        end
        6'd24 : begin
        W_real <= `W21_real;
        W_imag <= `W21_imag;
        end
        6'd27 : begin
        W_real <= `W22_real;
        W_imag <= `W22_imag;
        end
        6'd28 : begin
        W_real <= `W23_real;
        W_imag <= `W23_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
