`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 16:52:52
// Design Name: 
// Module Name: input_selecter_control
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

module input_selecter_control(
input  wire clk,
output reg [`SelBus]  sel
);

	reg [`MuxCountBus] count = 5'b0;

	/***********counter**************/
    always @(posedge clk) begin
        if (count == 5'd31) begin
            count <= 5'b0;
        end else begin
            count <= count + 5'b1;
        end
    end
	
	
	/*************rotation factor control*******************/
    always @(*) begin
        case (count)
5'd1 : sel <= 3'd0;
5'd2 : sel <= 3'd0;
5'd3 : sel <= 3'd0;
5'd4 : sel <= 3'd0;
5'd5 : sel <= 3'd0;
5'd6 : sel <= 3'd0;
5'd7 : sel <= 3'd0;
5'd8 : sel <= 3'd0;
5'd9 : sel <= 3'd0;
5'd10 : sel <= 3'd0;
5'd11 : sel <= 3'd0;
5'd12 : sel <= 3'd0;
5'd13 : sel <= 3'd0;
5'd14 : sel <= 3'd0;
5'd15 : sel <= 3'd0;
5'd16 : sel <= 3'd0;
5'd17 : sel <= 3'd0;
5'd18 : sel <= 3'd0;
5'd19 : sel <= 3'd1;
5'd20 : sel <= 3'd1;
5'd21 : sel <= 3'd1;
            
        default : sel <= 3'd1;
            
        endcase
    end

endmodule
