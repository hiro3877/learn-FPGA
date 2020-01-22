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
	output reg  sel
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
		5'd1 : sel <= 1'd0;
        5'd2 : sel <= 1'd0;
        5'd3 : sel <= 1'd0;
        5'd4 : sel <= 1'd0;
        5'd5 : sel <= 1'd0;
        5'd6 : sel <= 1'd0;
        5'd7 : sel <= 1'd0;
        5'd8 : sel <= 1'd0;
        5'd9 : sel <= 1'd0;
        5'd10 : sel <= 1'd0;
        5'd11 : sel <= 1'd0;
        5'd12 : sel <= 1'd0;
        5'd13 : sel <= 1'd0;
		5'd14 : sel <= 1'd0;
		5'd15 : sel <= 1'd0;
        5'd16 : sel <= 1'd0;
        5'd17 : sel <= 1'd0;
        5'd18 : sel <= 1'd0;
        5'd19 : sel <= 1'd0;
        5'd20 : sel <= 1'd1;
        5'd21 : sel <= 1'd1;
        5'd22 : sel <= 1'd1;
        5'd23 : sel <= 1'd1;
        5'd24 : sel <= 1'd1;
        5'd25 : sel <= 1'd1;
        5'd26 : sel <= 1'd1;
        5'd27 : sel <= 1'd1;
        5'd28 : sel <= 1'd1;
        5'd29 : sel <= 1'd1;
        
                
		
		
            
        default : sel <= 1'd0;
            
        endcase
    end

endmodule
