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
    reg [`WCountBus] count = 5'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 5'd16) begin
            count <= 5'd0;
        end else begin
            count <= count + 5'd1;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
            5'd8 : begin
                W_real <= `W2_real;
                W_imag <= `W2_imag;
            end
            
            5'd10 : begin
                W_real <= `W5_real;
                W_imag <= `W5_imag;
            end
            
            5'd12 : begin
                W_real <= `W8_real;
                W_imag <= `W8_imag;
            end
            
            5'd14 : begin
                W_real <= `W11_real;
                W_imag <= `W11_imag;
            end
            
            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
