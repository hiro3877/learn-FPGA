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
    input wire        [`MuxControlBus]     sel,
    input wire signed [`CalcTempBus]       d0,
    input wire signed [`CalcTempBus]       d1,
    input wire signed [`CalcTempBus]       d2,
    output reg signed [`CalcTempBus]       dout
    
);

    always @(*) begin
        case(sel)
            2'b00   : dout <= d0;
            2'b01   : dout <= d1;
            2'b10   : dout <= d2;
            default : dout <= d2; 
        endcase
    end

endmodule
