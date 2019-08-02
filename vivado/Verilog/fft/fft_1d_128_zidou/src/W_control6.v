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

module W_control6(
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
            
        9'd127 : begin
        W_real <= `W320_real;
        W_imag <= `W320_imag;
        end
        9'd128 : begin
        W_real <= `W321_real;
        W_imag <= `W321_imag;
        end
        9'd131 : begin
        W_real <= `W322_real;
        W_imag <= `W322_imag;
        end
        9'd132 : begin
        W_real <= `W323_real;
        W_imag <= `W323_imag;
        end
        9'd135 : begin
        W_real <= `W324_real;
        W_imag <= `W324_imag;
        end
        9'd136 : begin
        W_real <= `W325_real;
        W_imag <= `W325_imag;
        end
        9'd139 : begin
        W_real <= `W326_real;
        W_imag <= `W326_imag;
        end
        9'd140 : begin
        W_real <= `W327_real;
        W_imag <= `W327_imag;
        end
        9'd143 : begin
        W_real <= `W328_real;
        W_imag <= `W328_imag;
        end
        9'd144 : begin
        W_real <= `W329_real;
        W_imag <= `W329_imag;
        end
        9'd147 : begin
        W_real <= `W330_real;
        W_imag <= `W330_imag;
        end
        9'd148 : begin
        W_real <= `W331_real;
        W_imag <= `W331_imag;
        end
        9'd151 : begin
        W_real <= `W332_real;
        W_imag <= `W332_imag;
        end
        9'd152 : begin
        W_real <= `W333_real;
        W_imag <= `W333_imag;
        end
        9'd155 : begin
        W_real <= `W334_real;
        W_imag <= `W334_imag;
        end
        9'd156 : begin
        W_real <= `W335_real;
        W_imag <= `W335_imag;
        end
        9'd159 : begin
        W_real <= `W336_real;
        W_imag <= `W336_imag;
        end
        9'd160 : begin
        W_real <= `W337_real;
        W_imag <= `W337_imag;
        end
        9'd163 : begin
        W_real <= `W338_real;
        W_imag <= `W338_imag;
        end
        9'd164 : begin
        W_real <= `W339_real;
        W_imag <= `W339_imag;
        end
        9'd167 : begin
        W_real <= `W340_real;
        W_imag <= `W340_imag;
        end
        9'd168 : begin
        W_real <= `W341_real;
        W_imag <= `W341_imag;
        end
        9'd171 : begin
        W_real <= `W342_real;
        W_imag <= `W342_imag;
        end
        9'd172 : begin
        W_real <= `W343_real;
        W_imag <= `W343_imag;
        end
        9'd175 : begin
        W_real <= `W344_real;
        W_imag <= `W344_imag;
        end
        9'd176 : begin
        W_real <= `W345_real;
        W_imag <= `W345_imag;
        end
        9'd179 : begin
        W_real <= `W346_real;
        W_imag <= `W346_imag;
        end
        9'd180 : begin
        W_real <= `W347_real;
        W_imag <= `W347_imag;
        end
        9'd183 : begin
        W_real <= `W348_real;
        W_imag <= `W348_imag;
        end
        9'd184 : begin
        W_real <= `W349_real;
        W_imag <= `W349_imag;
        end
        9'd187 : begin
        W_real <= `W350_real;
        W_imag <= `W350_imag;
        end
        9'd188 : begin
        W_real <= `W351_real;
        W_imag <= `W351_imag;
        end
        9'd191 : begin
        W_real <= `W352_real;
        W_imag <= `W352_imag;
        end
        9'd192 : begin
        W_real <= `W353_real;
        W_imag <= `W353_imag;
        end
        9'd195 : begin
        W_real <= `W354_real;
        W_imag <= `W354_imag;
        end
        9'd196 : begin
        W_real <= `W355_real;
        W_imag <= `W355_imag;
        end
        9'd199 : begin
        W_real <= `W356_real;
        W_imag <= `W356_imag;
        end
        9'd200 : begin
        W_real <= `W357_real;
        W_imag <= `W357_imag;
        end
        9'd203 : begin
        W_real <= `W358_real;
        W_imag <= `W358_imag;
        end
        9'd204 : begin
        W_real <= `W359_real;
        W_imag <= `W359_imag;
        end
        9'd207 : begin
        W_real <= `W360_real;
        W_imag <= `W360_imag;
        end
        9'd208 : begin
        W_real <= `W361_real;
        W_imag <= `W361_imag;
        end
        9'd211 : begin
        W_real <= `W362_real;
        W_imag <= `W362_imag;
        end
        9'd212 : begin
        W_real <= `W363_real;
        W_imag <= `W363_imag;
        end
        9'd215 : begin
        W_real <= `W364_real;
        W_imag <= `W364_imag;
        end
        9'd216 : begin
        W_real <= `W365_real;
        W_imag <= `W365_imag;
        end
        9'd219 : begin
        W_real <= `W366_real;
        W_imag <= `W366_imag;
        end
        9'd220 : begin
        W_real <= `W367_real;
        W_imag <= `W367_imag;
        end
        9'd223 : begin
        W_real <= `W368_real;
        W_imag <= `W368_imag;
        end
        9'd224 : begin
        W_real <= `W369_real;
        W_imag <= `W369_imag;
        end
        9'd227 : begin
        W_real <= `W370_real;
        W_imag <= `W370_imag;
        end
        9'd228 : begin
        W_real <= `W371_real;
        W_imag <= `W371_imag;
        end
        9'd231 : begin
        W_real <= `W372_real;
        W_imag <= `W372_imag;
        end
        9'd232 : begin
        W_real <= `W373_real;
        W_imag <= `W373_imag;
        end
        9'd235 : begin
        W_real <= `W374_real;
        W_imag <= `W374_imag;
        end
        9'd236 : begin
        W_real <= `W375_real;
        W_imag <= `W375_imag;
        end
        9'd239 : begin
        W_real <= `W376_real;
        W_imag <= `W376_imag;
        end
        9'd240 : begin
        W_real <= `W377_real;
        W_imag <= `W377_imag;
        end
        9'd243 : begin
        W_real <= `W378_real;
        W_imag <= `W378_imag;
        end
        9'd244 : begin
        W_real <= `W379_real;
        W_imag <= `W379_imag;
        end
        9'd247 : begin
        W_real <= `W380_real;
        W_imag <= `W380_imag;
        end
        9'd248 : begin
        W_real <= `W381_real;
        W_imag <= `W381_imag;
        end
        9'd251 : begin
        W_real <= `W382_real;
        W_imag <= `W382_imag;
        end
        9'd252 : begin
        W_real <= `W383_real;
        W_imag <= `W383_imag;
        end
        
            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
