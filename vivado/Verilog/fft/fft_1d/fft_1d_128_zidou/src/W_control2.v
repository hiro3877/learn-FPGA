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
// Tool Versions: `timescale 1ns / 1ps
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

module W_control2(
    input  wire                clk,
    output reg  signed [`WBus] W_real,
    output reg  signed [`WBus] W_imag
    );
    

/***************define wire and reg********************/
    reg [`WCountBus] count = 9'b0;
    
    
    /***********counter**************/
    always @(posedge clk) begin
        if (count == 9'd256) begin
            count <= 9'd0;
        end else begin
            count <= count + 9'd1;
        end
    end
    
    /*************rotation factor control*******************/
    always @(count) begin
        case (count)
            
        9'd97 : begin
        W_real <= `W64_real;
        W_imag <= `W64_imag;
        end
        9'd98 : begin
        W_real <= `W65_real;
        W_imag <= `W65_imag;
        end
        9'd99 : begin
        W_real <= `W66_real;
        W_imag <= `W66_imag;
        end
        9'd100 : begin
        W_real <= `W67_real;
        W_imag <= `W67_imag;
        end
        9'd101 : begin
        W_real <= `W68_real;
        W_imag <= `W68_imag;
        end
        9'd102 : begin
        W_real <= `W69_real;
        W_imag <= `W69_imag;
        end
        9'd103 : begin
        W_real <= `W70_real;
        W_imag <= `W70_imag;
        end
        9'd104 : begin
        W_real <= `W71_real;
        W_imag <= `W71_imag;
        end
        9'd105 : begin
        W_real <= `W72_real;
        W_imag <= `W72_imag;
        end
        9'd106 : begin
        W_real <= `W73_real;
        W_imag <= `W73_imag;
        end
        9'd107 : begin
        W_real <= `W74_real;
        W_imag <= `W74_imag;
        end
        9'd108 : begin
        W_real <= `W75_real;
        W_imag <= `W75_imag;
        end
        9'd109 : begin
        W_real <= `W76_real;
        W_imag <= `W76_imag;
        end
        9'd110 : begin
        W_real <= `W77_real;
        W_imag <= `W77_imag;
        end
        9'd111 : begin
        W_real <= `W78_real;
        W_imag <= `W78_imag;
        end
        9'd112 : begin
        W_real <= `W79_real;
        W_imag <= `W79_imag;
        end
        9'd113 : begin
        W_real <= `W80_real;
        W_imag <= `W80_imag;
        end
        9'd114 : begin
        W_real <= `W81_real;
        W_imag <= `W81_imag;
        end
        9'd115 : begin
        W_real <= `W82_real;
        W_imag <= `W82_imag;
        end
        9'd116 : begin
        W_real <= `W83_real;
        W_imag <= `W83_imag;
        end
        9'd117 : begin
        W_real <= `W84_real;
        W_imag <= `W84_imag;
        end
        9'd118 : begin
        W_real <= `W85_real;
        W_imag <= `W85_imag;
        end
        9'd119 : begin
        W_real <= `W86_real;
        W_imag <= `W86_imag;
        end
        9'd120 : begin
        W_real <= `W87_real;
        W_imag <= `W87_imag;
        end
        9'd121 : begin
        W_real <= `W88_real;
        W_imag <= `W88_imag;
        end
        9'd122 : begin
        W_real <= `W89_real;
        W_imag <= `W89_imag;
        end
        9'd123 : begin
        W_real <= `W90_real;
        W_imag <= `W90_imag;
        end
        9'd124 : begin
        W_real <= `W91_real;
        W_imag <= `W91_imag;
        end
        9'd125 : begin
        W_real <= `W92_real;
        W_imag <= `W92_imag;
        end
        9'd126 : begin
        W_real <= `W93_real;
        W_imag <= `W93_imag;
        end
        9'd127 : begin
        W_real <= `W94_real;
        W_imag <= `W94_imag;
        end
        9'd128 : begin
        W_real <= `W95_real;
        W_imag <= `W95_imag;
        end
        9'd161 : begin
        W_real <= `W96_real;
        W_imag <= `W96_imag;
        end
        9'd162 : begin
        W_real <= `W97_real;
        W_imag <= `W97_imag;
        end
        9'd163 : begin
        W_real <= `W98_real;
        W_imag <= `W98_imag;
        end
        9'd164 : begin
        W_real <= `W99_real;
        W_imag <= `W99_imag;
        end
        9'd165 : begin
        W_real <= `W100_real;
        W_imag <= `W100_imag;
        end
        9'd166 : begin
        W_real <= `W101_real;
        W_imag <= `W101_imag;
        end
        9'd167 : begin
        W_real <= `W102_real;
        W_imag <= `W102_imag;
        end
        9'd168 : begin
        W_real <= `W103_real;
        W_imag <= `W103_imag;
        end
        9'd169 : begin
        W_real <= `W104_real;
        W_imag <= `W104_imag;
        end
        9'd170 : begin
        W_real <= `W105_real;
        W_imag <= `W105_imag;
        end
        9'd171 : begin
        W_real <= `W106_real;
        W_imag <= `W106_imag;
        end
        9'd172 : begin
        W_real <= `W107_real;
        W_imag <= `W107_imag;
        end
        9'd173 : begin
        W_real <= `W108_real;
        W_imag <= `W108_imag;
        end
        9'd174 : begin
        W_real <= `W109_real;
        W_imag <= `W109_imag;
        end
        9'd175 : begin
        W_real <= `W110_real;
        W_imag <= `W110_imag;
        end
        9'd176 : begin
        W_real <= `W111_real;
        W_imag <= `W111_imag;
        end
        9'd177 : begin
        W_real <= `W112_real;
        W_imag <= `W112_imag;
        end
        9'd178 : begin
        W_real <= `W113_real;
        W_imag <= `W113_imag;
        end
        9'd179 : begin
        W_real <= `W114_real;
        W_imag <= `W114_imag;
        end
        9'd180 : begin
        W_real <= `W115_real;
        W_imag <= `W115_imag;
        end
        9'd181 : begin
        W_real <= `W116_real;
        W_imag <= `W116_imag;
        end
        9'd182 : begin
        W_real <= `W117_real;
        W_imag <= `W117_imag;
        end
        9'd183 : begin
        W_real <= `W118_real;
        W_imag <= `W118_imag;
        end
        9'd184 : begin
        W_real <= `W119_real;
        W_imag <= `W119_imag;
        end
        9'd185 : begin
        W_real <= `W120_real;
        W_imag <= `W120_imag;
        end
        9'd186 : begin
        W_real <= `W121_real;
        W_imag <= `W121_imag;
        end
        9'd187 : begin
        W_real <= `W122_real;
        W_imag <= `W122_imag;
        end
        9'd188 : begin
        W_real <= `W123_real;
        W_imag <= `W123_imag;
        end
        9'd189 : begin
        W_real <= `W124_real;
        W_imag <= `W124_imag;
        end
        9'd190 : begin
        W_real <= `W125_real;
        W_imag <= `W125_imag;
        end
        9'd191 : begin
        W_real <= `W126_real;
        W_imag <= `W126_imag;
        end
        9'd192 : begin
        W_real <= `W127_real;
        W_imag <= `W127_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
