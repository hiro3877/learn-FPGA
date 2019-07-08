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
    reg [`WCountBus] count = 3'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 3'b101) begin
            count <= 3'b0;
        end else begin
            count <= count + 3'b001;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
            3'b011 : begin
                W_real <= `W0_real;
                W_imag <= `W0_imag;
            end
            
            3'b100 : begin
                W_real <= `W1_real;
                W_imag <= `W1_imag;
            end
            
            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
