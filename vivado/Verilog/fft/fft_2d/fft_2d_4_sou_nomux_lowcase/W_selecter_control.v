`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 19:13:16
// Design Name: 
// Module Name: W_selecter_control
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

module W_selecter_control(
	input  wire clk,
	output reg [`SelBus]  sel
    );
	
	reg [`MuxCountBus] count = 5'b0;
	reg [2:0] count1 = 3'b0;
	reg upsig = 1'b0;
	

	/***********counter**************/
    always @(posedge clk) begin
        if (count == 5'd16) begin
            count <= 5'b0;
            upsig <= 1'b1;
            
        end else if (upsig == 1'b1) begin
            count1 <=  count1 + 3'b1;
            
        end else begin
            count <= count + 5'b1;
        end
    end
	
	
	/*************rotation factor control*******************/
    always @(*) begin
        case (count1)
3'd2 : sel <= 3'd1;
3'd3 : sel <= 3'd1;
3'd4 : sel <= 3'd1;

        default : sel <= 3'd0;
            
        endcase
    end

endmodule
