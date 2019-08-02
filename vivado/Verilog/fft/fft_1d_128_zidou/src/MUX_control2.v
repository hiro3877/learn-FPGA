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

module MUX_control2(
    input  wire                    clk,
    output reg  [`MuxControlBus]   sel
    );
    

/***************define wire and reg********************/
    reg [`MuxCountBus] count = 9'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 9'd256) begin
            count <= 9'b0;
        end else begin
            count <= count + 9'd1;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
        9'd97 : sel <= 2'd0;
        9'd98 : sel <= 2'd0;
        9'd99 : sel <= 2'd0;
        9'd100 : sel <= 2'd0;
        9'd101 : sel <= 2'd0;
        9'd102 : sel <= 2'd0;
        9'd103 : sel <= 2'd0;
        9'd104 : sel <= 2'd0;
        9'd105 : sel <= 2'd0;
        9'd106 : sel <= 2'd0;
        9'd107 : sel <= 2'd0;
        9'd108 : sel <= 2'd0;
        9'd109 : sel <= 2'd0;
        9'd110 : sel <= 2'd0;
        9'd111 : sel <= 2'd0;
        9'd112 : sel <= 2'd0;
        9'd113 : sel <= 2'd0;
        9'd114 : sel <= 2'd0;
        9'd115 : sel <= 2'd0;
        9'd116 : sel <= 2'd0;
        9'd117 : sel <= 2'd0;
        9'd118 : sel <= 2'd0;
        9'd119 : sel <= 2'd0;
        9'd120 : sel <= 2'd0;
        9'd121 : sel <= 2'd0;
        9'd122 : sel <= 2'd0;
        9'd123 : sel <= 2'd0;
        9'd124 : sel <= 2'd0;
        9'd125 : sel <= 2'd0;
        9'd126 : sel <= 2'd0;
        9'd127 : sel <= 2'd0;
        9'd128 : sel <= 2'd0;
        9'd129 : sel <= 2'd1;
        9'd130 : sel <= 2'd1;
        9'd131 : sel <= 2'd1;
        9'd132 : sel <= 2'd1;
        9'd133 : sel <= 2'd1;
        9'd134 : sel <= 2'd1;
        9'd135 : sel <= 2'd1;
        9'd136 : sel <= 2'd1;
        9'd137 : sel <= 2'd1;
        9'd138 : sel <= 2'd1;
        9'd139 : sel <= 2'd1;
        9'd140 : sel <= 2'd1;
        9'd141 : sel <= 2'd1;
        9'd142 : sel <= 2'd1;
        9'd143 : sel <= 2'd1;
        9'd144 : sel <= 2'd1;
        9'd145 : sel <= 2'd1;
        9'd146 : sel <= 2'd1;
        9'd147 : sel <= 2'd1;
        9'd148 : sel <= 2'd1;
        9'd149 : sel <= 2'd1;
        9'd150 : sel <= 2'd1;
        9'd151 : sel <= 2'd1;
        9'd152 : sel <= 2'd1;
        9'd153 : sel <= 2'd1;
        9'd154 : sel <= 2'd1;
        9'd155 : sel <= 2'd1;
        9'd156 : sel <= 2'd1;
        9'd157 : sel <= 2'd1;
        9'd158 : sel <= 2'd1;
        9'd159 : sel <= 2'd1;
        9'd160 : sel <= 2'd1;
        9'd161 : sel <= 2'd0;
        9'd162 : sel <= 2'd0;
        9'd163 : sel <= 2'd0;
        9'd164 : sel <= 2'd0;
        9'd165 : sel <= 2'd0;
        9'd166 : sel <= 2'd0;
        9'd167 : sel <= 2'd0;
        9'd168 : sel <= 2'd0;
        9'd169 : sel <= 2'd0;
        9'd170 : sel <= 2'd0;
        9'd171 : sel <= 2'd0;
        9'd172 : sel <= 2'd0;
        9'd173 : sel <= 2'd0;
        9'd174 : sel <= 2'd0;
        9'd175 : sel <= 2'd0;
        9'd176 : sel <= 2'd0;
        9'd177 : sel <= 2'd0;
        9'd178 : sel <= 2'd0;
        9'd179 : sel <= 2'd0;
        9'd180 : sel <= 2'd0;
        9'd181 : sel <= 2'd0;
        9'd182 : sel <= 2'd0;
        9'd183 : sel <= 2'd0;
        9'd184 : sel <= 2'd0;
        9'd185 : sel <= 2'd0;
        9'd186 : sel <= 2'd0;
        9'd187 : sel <= 2'd0;
        9'd188 : sel <= 2'd0;
        9'd189 : sel <= 2'd0;
        9'd190 : sel <= 2'd0;
        9'd191 : sel <= 2'd0;
        9'd192 : sel <= 2'd0;
        9'd193 : sel <= 2'd1;
        9'd194 : sel <= 2'd1;
        9'd195 : sel <= 2'd1;
        9'd196 : sel <= 2'd1;
        9'd197 : sel <= 2'd1;
        9'd198 : sel <= 2'd1;
        9'd199 : sel <= 2'd1;
        9'd200 : sel <= 2'd1;
        9'd201 : sel <= 2'd1;
        9'd202 : sel <= 2'd1;
        9'd203 : sel <= 2'd1;
        9'd204 : sel <= 2'd1;
        9'd205 : sel <= 2'd1;
        9'd206 : sel <= 2'd1;
        9'd207 : sel <= 2'd1;
        9'd208 : sel <= 2'd1;
        9'd209 : sel <= 2'd1;
        9'd210 : sel <= 2'd1;
        9'd211 : sel <= 2'd1;
        9'd212 : sel <= 2'd1;
        9'd213 : sel <= 2'd1;
        9'd214 : sel <= 2'd1;
        9'd215 : sel <= 2'd1;
        9'd216 : sel <= 2'd1;
        9'd217 : sel <= 2'd1;
        9'd218 : sel <= 2'd1;
        9'd219 : sel <= 2'd1;
        9'd220 : sel <= 2'd1;
        9'd221 : sel <= 2'd1;
        9'd222 : sel <= 2'd1;
        9'd223 : sel <= 2'd1;
        9'd224 : sel <= 2'd1;
            
            default : sel <= 2'd2;
            
        endcase
    end
                                
endmodule
