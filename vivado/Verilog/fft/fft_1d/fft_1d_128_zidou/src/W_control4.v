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

module W_control4(
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
            
        9'd121 : begin
        W_real <= `W192_real;
        W_imag <= `W192_imag;
        end
        9'd122 : begin
        W_real <= `W193_real;
        W_imag <= `W193_imag;
        end
        9'd123 : begin
        W_real <= `W194_real;
        W_imag <= `W194_imag;
        end
        9'd124 : begin
        W_real <= `W195_real;
        W_imag <= `W195_imag;
        end
        9'd125 : begin
        W_real <= `W196_real;
        W_imag <= `W196_imag;
        end
        9'd126 : begin
        W_real <= `W197_real;
        W_imag <= `W197_imag;
        end
        9'd127 : begin
        W_real <= `W198_real;
        W_imag <= `W198_imag;
        end
        9'd128 : begin
        W_real <= `W199_real;
        W_imag <= `W199_imag;
        end
        9'd137 : begin
        W_real <= `W200_real;
        W_imag <= `W200_imag;
        end
        9'd138 : begin
        W_real <= `W201_real;
        W_imag <= `W201_imag;
        end
        9'd139 : begin
        W_real <= `W202_real;
        W_imag <= `W202_imag;
        end
        9'd140 : begin
        W_real <= `W203_real;
        W_imag <= `W203_imag;
        end
        9'd141 : begin
        W_real <= `W204_real;
        W_imag <= `W204_imag;
        end
        9'd142 : begin
        W_real <= `W205_real;
        W_imag <= `W205_imag;
        end
        9'd143 : begin
        W_real <= `W206_real;
        W_imag <= `W206_imag;
        end
        9'd144 : begin
        W_real <= `W207_real;
        W_imag <= `W207_imag;
        end
        9'd153 : begin
        W_real <= `W208_real;
        W_imag <= `W208_imag;
        end
        9'd154 : begin
        W_real <= `W209_real;
        W_imag <= `W209_imag;
        end
        9'd155 : begin
        W_real <= `W210_real;
        W_imag <= `W210_imag;
        end
        9'd156 : begin
        W_real <= `W211_real;
        W_imag <= `W211_imag;
        end
        9'd157 : begin
        W_real <= `W212_real;
        W_imag <= `W212_imag;
        end
        9'd158 : begin
        W_real <= `W213_real;
        W_imag <= `W213_imag;
        end
        9'd159 : begin
        W_real <= `W214_real;
        W_imag <= `W214_imag;
        end
        9'd160 : begin
        W_real <= `W215_real;
        W_imag <= `W215_imag;
        end
        9'd169 : begin
        W_real <= `W216_real;
        W_imag <= `W216_imag;
        end
        9'd170 : begin
        W_real <= `W217_real;
        W_imag <= `W217_imag;
        end
        9'd171 : begin
        W_real <= `W218_real;
        W_imag <= `W218_imag;
        end
        9'd172 : begin
        W_real <= `W219_real;
        W_imag <= `W219_imag;
        end
        9'd173 : begin
        W_real <= `W220_real;
        W_imag <= `W220_imag;
        end
        9'd174 : begin
        W_real <= `W221_real;
        W_imag <= `W221_imag;
        end
        9'd175 : begin
        W_real <= `W222_real;
        W_imag <= `W222_imag;
        end
        9'd176 : begin
        W_real <= `W223_real;
        W_imag <= `W223_imag;
        end
        9'd185 : begin
        W_real <= `W224_real;
        W_imag <= `W224_imag;
        end
        9'd186 : begin
        W_real <= `W225_real;
        W_imag <= `W225_imag;
        end
        9'd187 : begin
        W_real <= `W226_real;
        W_imag <= `W226_imag;
        end
        9'd188 : begin
        W_real <= `W227_real;
        W_imag <= `W227_imag;
        end
        9'd189 : begin
        W_real <= `W228_real;
        W_imag <= `W228_imag;
        end
        9'd190 : begin
        W_real <= `W229_real;
        W_imag <= `W229_imag;
        end
        9'd191 : begin
        W_real <= `W230_real;
        W_imag <= `W230_imag;
        end
        9'd192 : begin
        W_real <= `W231_real;
        W_imag <= `W231_imag;
        end
        9'd201 : begin
        W_real <= `W232_real;
        W_imag <= `W232_imag;
        end
        9'd202 : begin
        W_real <= `W233_real;
        W_imag <= `W233_imag;
        end
        9'd203 : begin
        W_real <= `W234_real;
        W_imag <= `W234_imag;
        end
        9'd204 : begin
        W_real <= `W235_real;
        W_imag <= `W235_imag;
        end
        9'd205 : begin
        W_real <= `W236_real;
        W_imag <= `W236_imag;
        end
        9'd206 : begin
        W_real <= `W237_real;
        W_imag <= `W237_imag;
        end
        9'd207 : begin
        W_real <= `W238_real;
        W_imag <= `W238_imag;
        end
        9'd208 : begin
        W_real <= `W239_real;
        W_imag <= `W239_imag;
        end
        9'd217 : begin
        W_real <= `W240_real;
        W_imag <= `W240_imag;
        end
        9'd218 : begin
        W_real <= `W241_real;
        W_imag <= `W241_imag;
        end
        9'd219 : begin
        W_real <= `W242_real;
        W_imag <= `W242_imag;
        end
        9'd220 : begin
        W_real <= `W243_real;
        W_imag <= `W243_imag;
        end
        9'd221 : begin
        W_real <= `W244_real;
        W_imag <= `W244_imag;
        end
        9'd222 : begin
        W_real <= `W245_real;
        W_imag <= `W245_imag;
        end
        9'd223 : begin
        W_real <= `W246_real;
        W_imag <= `W246_imag;
        end
        9'd224 : begin
        W_real <= `W247_real;
        W_imag <= `W247_imag;
        end
        9'd233 : begin
        W_real <= `W248_real;
        W_imag <= `W248_imag;
        end
        9'd234 : begin
        W_real <= `W249_real;
        W_imag <= `W249_imag;
        end
        9'd235 : begin
        W_real <= `W250_real;
        W_imag <= `W250_imag;
        end
        9'd236 : begin
        W_real <= `W251_real;
        W_imag <= `W251_imag;
        end
        9'd237 : begin
        W_real <= `W252_real;
        W_imag <= `W252_imag;
        end
        9'd238 : begin
        W_real <= `W253_real;
        W_imag <= `W253_imag;
        end
        9'd239 : begin
        W_real <= `W254_real;
        W_imag <= `W254_imag;
        end
        9'd240 : begin
        W_real <= `W255_real;
        W_imag <= `W255_imag;
        end
        
            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
