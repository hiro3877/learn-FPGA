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

module W_control5(
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
            
        9'd125 : begin
        W_real <= `W256_real;
        W_imag <= `W256_imag;
        end
        9'd126 : begin
        W_real <= `W257_real;
        W_imag <= `W257_imag;
        end
        9'd127 : begin
        W_real <= `W258_real;
        W_imag <= `W258_imag;
        end
        9'd128 : begin
        W_real <= `W259_real;
        W_imag <= `W259_imag;
        end
        9'd133 : begin
        W_real <= `W260_real;
        W_imag <= `W260_imag;
        end
        9'd134 : begin
        W_real <= `W261_real;
        W_imag <= `W261_imag;
        end
        9'd135 : begin
        W_real <= `W262_real;
        W_imag <= `W262_imag;
        end
        9'd136 : begin
        W_real <= `W263_real;
        W_imag <= `W263_imag;
        end
        9'd141 : begin
        W_real <= `W264_real;
        W_imag <= `W264_imag;
        end
        9'd142 : begin
        W_real <= `W265_real;
        W_imag <= `W265_imag;
        end
        9'd143 : begin
        W_real <= `W266_real;
        W_imag <= `W266_imag;
        end
        9'd144 : begin
        W_real <= `W267_real;
        W_imag <= `W267_imag;
        end
        9'd149 : begin
        W_real <= `W268_real;
        W_imag <= `W268_imag;
        end
        9'd150 : begin
        W_real <= `W269_real;
        W_imag <= `W269_imag;
        end
        9'd151 : begin
        W_real <= `W270_real;
        W_imag <= `W270_imag;
        end
        9'd152 : begin
        W_real <= `W271_real;
        W_imag <= `W271_imag;
        end
        9'd157 : begin
        W_real <= `W272_real;
        W_imag <= `W272_imag;
        end
        9'd158 : begin
        W_real <= `W273_real;
        W_imag <= `W273_imag;
        end
        9'd159 : begin
        W_real <= `W274_real;
        W_imag <= `W274_imag;
        end
        9'd160 : begin
        W_real <= `W275_real;
        W_imag <= `W275_imag;
        end
        9'd165 : begin
        W_real <= `W276_real;
        W_imag <= `W276_imag;
        end
        9'd166 : begin
        W_real <= `W277_real;
        W_imag <= `W277_imag;
        end
        9'd167 : begin
        W_real <= `W278_real;
        W_imag <= `W278_imag;
        end
        9'd168 : begin
        W_real <= `W279_real;
        W_imag <= `W279_imag;
        end
        9'd173 : begin
        W_real <= `W280_real;
        W_imag <= `W280_imag;
        end
        9'd174 : begin
        W_real <= `W281_real;
        W_imag <= `W281_imag;
        end
        9'd175 : begin
        W_real <= `W282_real;
        W_imag <= `W282_imag;
        end
        9'd176 : begin
        W_real <= `W283_real;
        W_imag <= `W283_imag;
        end
        9'd181 : begin
        W_real <= `W284_real;
        W_imag <= `W284_imag;
        end
        9'd182 : begin
        W_real <= `W285_real;
        W_imag <= `W285_imag;
        end
        9'd183 : begin
        W_real <= `W286_real;
        W_imag <= `W286_imag;
        end
        9'd184 : begin
        W_real <= `W287_real;
        W_imag <= `W287_imag;
        end
        9'd189 : begin
        W_real <= `W288_real;
        W_imag <= `W288_imag;
        end
        9'd190 : begin
        W_real <= `W289_real;
        W_imag <= `W289_imag;
        end
        9'd191 : begin
        W_real <= `W290_real;
        W_imag <= `W290_imag;
        end
        9'd192 : begin
        W_real <= `W291_real;
        W_imag <= `W291_imag;
        end
        9'd197 : begin
        W_real <= `W292_real;
        W_imag <= `W292_imag;
        end
        9'd198 : begin
        W_real <= `W293_real;
        W_imag <= `W293_imag;
        end
        9'd199 : begin
        W_real <= `W294_real;
        W_imag <= `W294_imag;
        end
        9'd200 : begin
        W_real <= `W295_real;
        W_imag <= `W295_imag;
        end
        9'd205 : begin
        W_real <= `W296_real;
        W_imag <= `W296_imag;
        end
        9'd206 : begin
        W_real <= `W297_real;
        W_imag <= `W297_imag;
        end
        9'd207 : begin
        W_real <= `W298_real;
        W_imag <= `W298_imag;
        end
        9'd208 : begin
        W_real <= `W299_real;
        W_imag <= `W299_imag;
        end
        9'd213 : begin
        W_real <= `W300_real;
        W_imag <= `W300_imag;
        end
        9'd214 : begin
        W_real <= `W301_real;
        W_imag <= `W301_imag;
        end
        9'd215 : begin
        W_real <= `W302_real;
        W_imag <= `W302_imag;
        end
        9'd216 : begin
        W_real <= `W303_real;
        W_imag <= `W303_imag;
        end
        9'd221 : begin
        W_real <= `W304_real;
        W_imag <= `W304_imag;
        end
        9'd222 : begin
        W_real <= `W305_real;
        W_imag <= `W305_imag;
        end
        9'd223 : begin
        W_real <= `W306_real;
        W_imag <= `W306_imag;
        end
        9'd224 : begin
        W_real <= `W307_real;
        W_imag <= `W307_imag;
        end
        9'd229 : begin
        W_real <= `W308_real;
        W_imag <= `W308_imag;
        end
        9'd230 : begin
        W_real <= `W309_real;
        W_imag <= `W309_imag;
        end
        9'd231 : begin
        W_real <= `W310_real;
        W_imag <= `W310_imag;
        end
        9'd232 : begin
        W_real <= `W311_real;
        W_imag <= `W311_imag;
        end
        9'd237 : begin
        W_real <= `W312_real;
        W_imag <= `W312_imag;
        end
        9'd238 : begin
        W_real <= `W313_real;
        W_imag <= `W313_imag;
        end
        9'd239 : begin
        W_real <= `W314_real;
        W_imag <= `W314_imag;
        end
        9'd240 : begin
        W_real <= `W315_real;
        W_imag <= `W315_imag;
        end
        9'd245 : begin
        W_real <= `W316_real;
        W_imag <= `W316_imag;
        end
        9'd246 : begin
        W_real <= `W317_real;
        W_imag <= `W317_imag;
        end
        9'd247 : begin
        W_real <= `W318_real;
        W_imag <= `W318_imag;
        end
        9'd248 : begin
        W_real <= `W319_real;
        W_imag <= `W319_imag;
        end
        
            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
