`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/08 20:34:07
// Design Name: 
// Module Name: mux
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

module mux(
    input wire                             clk,
    input wire signed [`CalcTempBus]       d1,
    input wire signed [`CalcTempBus]       d2,
    input wire signed [`CalcTempBus]       d3,
    input wire signed [`CalcTempBus]       d4,
    input wire signed [`CalcTempBus]       d5,
    input wire signed [`CalcTempBus]       d6,
    input wire signed [`CalcTempBus]       d7,
    input wire signed [`CalcTempBus]       d8,
    input wire signed [`CalcTempBus]       d9,
    input wire signed [`CalcTempBus]       d10,
    input wire signed [`CalcTempBus]       d11,
    input wire signed [`CalcTempBus]       d12,
    input wire signed [`CalcTempBus]       d13,
    input wire signed [`CalcTempBus]       d14,
    input wire signed [`CalcTempBus]       d15,
    input wire signed [`CalcTempBus]       d16,
    output reg signed [`CalcTempBus]       dout
    
);

reg [`MuxCountBus] count = 6'b0;


/***********counter**************/
    always @(posedge clk) begin
        if (count == 6'd41) begin
            count <= 6'd0;
        end else begin
            count <= count + 6'd1;
        end
    end

    always @(*) begin
        case(count)
            6'd25   : dout <= d1;
            6'd26   : dout <= d2;
            6'd27   : dout <= d3;
            6'd28   : dout <= d4;
            6'd29   : dout <= d5;
            6'd30   : dout <= d6;
            6'd31   : dout <= d7;
            6'd32   : dout <= d8;
            6'd33   : dout <= d9;
            6'd34   : dout <= d10;
            6'd35   : dout <= d11;
            6'd36   : dout <= d12;
            6'd37   : dout <= d13;
            6'd38   : dout <= d14;
            6'd39   : dout <= d15;
            6'd40   : dout <= d16;
            default : dout <= d1; 
        endcase
    end

endmodule
