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

module W_control3(
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
            
        9'd113 : begin
        W_real <= `W128_real;
        W_imag <= `W128_imag;
        end
        9'd114 : begin
        W_real <= `W129_real;
        W_imag <= `W129_imag;
        end
        9'd115 : begin
        W_real <= `W130_real;
        W_imag <= `W130_imag;
        end
        9'd116 : begin
        W_real <= `W131_real;
        W_imag <= `W131_imag;
        end
        9'd117 : begin
        W_real <= `W132_real;
        W_imag <= `W132_imag;
        end
        9'd118 : begin
        W_real <= `W133_real;
        W_imag <= `W133_imag;
        end
        9'd119 : begin
        W_real <= `W134_real;
        W_imag <= `W134_imag;
        end
        9'd120 : begin
        W_real <= `W135_real;
        W_imag <= `W135_imag;
        end
        9'd121 : begin
        W_real <= `W136_real;
        W_imag <= `W136_imag;
        end
        9'd122 : begin
        W_real <= `W137_real;
        W_imag <= `W137_imag;
        end
        9'd123 : begin
        W_real <= `W138_real;
        W_imag <= `W138_imag;
        end
        9'd124 : begin
        W_real <= `W139_real;
        W_imag <= `W139_imag;
        end
        9'd125 : begin
        W_real <= `W140_real;
        W_imag <= `W140_imag;
        end
        9'd126 : begin
        W_real <= `W141_real;
        W_imag <= `W141_imag;
        end
        9'd127 : begin
        W_real <= `W142_real;
        W_imag <= `W142_imag;
        end
        9'd128 : begin
        W_real <= `W143_real;
        W_imag <= `W143_imag;
        end
        9'd145 : begin
        W_real <= `W144_real;
        W_imag <= `W144_imag;
        end
        9'd146 : begin
        W_real <= `W145_real;
        W_imag <= `W145_imag;
        end
        9'd147 : begin
        W_real <= `W146_real;
        W_imag <= `W146_imag;
        end
        9'd148 : begin
        W_real <= `W147_real;
        W_imag <= `W147_imag;
        end
        9'd149 : begin
        W_real <= `W148_real;
        W_imag <= `W148_imag;
        end
        9'd150 : begin
        W_real <= `W149_real;
        W_imag <= `W149_imag;
        end
        9'd151 : begin
        W_real <= `W150_real;
        W_imag <= `W150_imag;
        end
        9'd152 : begin
        W_real <= `W151_real;
        W_imag <= `W151_imag;
        end
        9'd153 : begin
        W_real <= `W152_real;
        W_imag <= `W152_imag;
        end
        9'd154 : begin
        W_real <= `W153_real;
        W_imag <= `W153_imag;
        end
        9'd155 : begin
        W_real <= `W154_real;
        W_imag <= `W154_imag;
        end
        9'd156 : begin
        W_real <= `W155_real;
        W_imag <= `W155_imag;
        end
        9'd157 : begin
        W_real <= `W156_real;
        W_imag <= `W156_imag;
        end
        9'd158 : begin
        W_real <= `W157_real;
        W_imag <= `W157_imag;
        end
        9'd159 : begin
        W_real <= `W158_real;
        W_imag <= `W158_imag;
        end
        9'd160 : begin
        W_real <= `W159_real;
        W_imag <= `W159_imag;
        end
        9'd177 : begin
        W_real <= `W160_real;
        W_imag <= `W160_imag;
        end
        9'd178 : begin
        W_real <= `W161_real;
        W_imag <= `W161_imag;
        end
        9'd179 : begin
        W_real <= `W162_real;
        W_imag <= `W162_imag;
        end
        9'd180 : begin
        W_real <= `W163_real;
        W_imag <= `W163_imag;
        end
        9'd181 : begin
        W_real <= `W164_real;
        W_imag <= `W164_imag;
        end
        9'd182 : begin
        W_real <= `W165_real;
        W_imag <= `W165_imag;
        end
        9'd183 : begin
        W_real <= `W166_real;
        W_imag <= `W166_imag;
        end
        9'd184 : begin
        W_real <= `W167_real;
        W_imag <= `W167_imag;
        end
        9'd185 : begin
        W_real <= `W168_real;
        W_imag <= `W168_imag;
        end
        9'd186 : begin
        W_real <= `W169_real;
        W_imag <= `W169_imag;
        end
        9'd187 : begin
        W_real <= `W170_real;
        W_imag <= `W170_imag;
        end
        9'd188 : begin
        W_real <= `W171_real;
        W_imag <= `W171_imag;
        end
        9'd189 : begin
        W_real <= `W172_real;
        W_imag <= `W172_imag;
        end
        9'd190 : begin
        W_real <= `W173_real;
        W_imag <= `W173_imag;
        end
        9'd191 : begin
        W_real <= `W174_real;
        W_imag <= `W174_imag;
        end
        9'd192 : begin
        W_real <= `W175_real;
        W_imag <= `W175_imag;
        end
        9'd209 : begin
        W_real <= `W176_real;
        W_imag <= `W176_imag;
        end
        9'd210 : begin
        W_real <= `W177_real;
        W_imag <= `W177_imag;
        end
        9'd211 : begin
        W_real <= `W178_real;
        W_imag <= `W178_imag;
        end
        9'd212 : begin
        W_real <= `W179_real;
        W_imag <= `W179_imag;
        end
        9'd213 : begin
        W_real <= `W180_real;
        W_imag <= `W180_imag;
        end
        9'd214 : begin
        W_real <= `W181_real;
        W_imag <= `W181_imag;
        end
        9'd215 : begin
        W_real <= `W182_real;
        W_imag <= `W182_imag;
        end
        9'd216 : begin
        W_real <= `W183_real;
        W_imag <= `W183_imag;
        end
        9'd217 : begin
        W_real <= `W184_real;
        W_imag <= `W184_imag;
        end
        9'd218 : begin
        W_real <= `W185_real;
        W_imag <= `W185_imag;
        end
        9'd219 : begin
        W_real <= `W186_real;
        W_imag <= `W186_imag;
        end
        9'd220 : begin
        W_real <= `W187_real;
        W_imag <= `W187_imag;
        end
        9'd221 : begin
        W_real <= `W188_real;
        W_imag <= `W188_imag;
        end
        9'd222 : begin
        W_real <= `W189_real;
        W_imag <= `W189_imag;
        end
        9'd223 : begin
        W_real <= `W190_real;
        W_imag <= `W190_imag;
        end
        9'd224 : begin
        W_real <= `W191_real;
        W_imag <= `W191_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
