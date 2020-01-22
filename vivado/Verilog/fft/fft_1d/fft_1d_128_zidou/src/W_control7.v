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

module W_control7(
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
            
        9'd128 : begin
        W_real <= `W384_real;
        W_imag <= `W384_imag;
        end
        9'd130 : begin
        W_real <= `W385_real;
        W_imag <= `W385_imag;
        end
        9'd132 : begin
        W_real <= `W386_real;
        W_imag <= `W386_imag;
        end
        9'd134 : begin
        W_real <= `W387_real;
        W_imag <= `W387_imag;
        end
        9'd136 : begin
        W_real <= `W388_real;
        W_imag <= `W388_imag;
        end
        9'd138 : begin
        W_real <= `W389_real;
        W_imag <= `W389_imag;
        end
        9'd140 : begin
        W_real <= `W390_real;
        W_imag <= `W390_imag;
        end
        9'd142 : begin
        W_real <= `W391_real;
        W_imag <= `W391_imag;
        end
        9'd144 : begin
        W_real <= `W392_real;
        W_imag <= `W392_imag;
        end
        9'd146 : begin
        W_real <= `W393_real;
        W_imag <= `W393_imag;
        end
        9'd148 : begin
        W_real <= `W394_real;
        W_imag <= `W394_imag;
        end
        9'd150 : begin
        W_real <= `W395_real;
        W_imag <= `W395_imag;
        end
        9'd152 : begin
        W_real <= `W396_real;
        W_imag <= `W396_imag;
        end
        9'd154 : begin
        W_real <= `W397_real;
        W_imag <= `W397_imag;
        end
        9'd156 : begin
        W_real <= `W398_real;
        W_imag <= `W398_imag;
        end
        9'd158 : begin
        W_real <= `W399_real;
        W_imag <= `W399_imag;
        end
        9'd160 : begin
        W_real <= `W400_real;
        W_imag <= `W400_imag;
        end
        9'd162 : begin
        W_real <= `W401_real;
        W_imag <= `W401_imag;
        end
        9'd164 : begin
        W_real <= `W402_real;
        W_imag <= `W402_imag;
        end
        9'd166 : begin
        W_real <= `W403_real;
        W_imag <= `W403_imag;
        end
        9'd168 : begin
        W_real <= `W404_real;
        W_imag <= `W404_imag;
        end
        9'd170 : begin
        W_real <= `W405_real;
        W_imag <= `W405_imag;
        end
        9'd172 : begin
        W_real <= `W406_real;
        W_imag <= `W406_imag;
        end
        9'd174 : begin
        W_real <= `W407_real;
        W_imag <= `W407_imag;
        end
        9'd176 : begin
        W_real <= `W408_real;
        W_imag <= `W408_imag;
        end
        9'd178 : begin
        W_real <= `W409_real;
        W_imag <= `W409_imag;
        end
        9'd180 : begin
        W_real <= `W410_real;
        W_imag <= `W410_imag;
        end
        9'd182 : begin
        W_real <= `W411_real;
        W_imag <= `W411_imag;
        end
        9'd184 : begin
        W_real <= `W412_real;
        W_imag <= `W412_imag;
        end
        9'd186 : begin
        W_real <= `W413_real;
        W_imag <= `W413_imag;
        end
        9'd188 : begin
        W_real <= `W414_real;
        W_imag <= `W414_imag;
        end
        9'd190 : begin
        W_real <= `W415_real;
        W_imag <= `W415_imag;
        end
        9'd192 : begin
        W_real <= `W416_real;
        W_imag <= `W416_imag;
        end
        9'd194 : begin
        W_real <= `W417_real;
        W_imag <= `W417_imag;
        end
        9'd196 : begin
        W_real <= `W418_real;
        W_imag <= `W418_imag;
        end
        9'd198 : begin
        W_real <= `W419_real;
        W_imag <= `W419_imag;
        end
        9'd200 : begin
        W_real <= `W420_real;
        W_imag <= `W420_imag;
        end
        9'd202 : begin
        W_real <= `W421_real;
        W_imag <= `W421_imag;
        end
        9'd204 : begin
        W_real <= `W422_real;
        W_imag <= `W422_imag;
        end
        9'd206 : begin
        W_real <= `W423_real;
        W_imag <= `W423_imag;
        end
        9'd208 : begin
        W_real <= `W424_real;
        W_imag <= `W424_imag;
        end
        9'd210 : begin
        W_real <= `W425_real;
        W_imag <= `W425_imag;
        end
        9'd212 : begin
        W_real <= `W426_real;
        W_imag <= `W426_imag;
        end
        9'd214 : begin
        W_real <= `W427_real;
        W_imag <= `W427_imag;
        end
        9'd216 : begin
        W_real <= `W428_real;
        W_imag <= `W428_imag;
        end
        9'd218 : begin
        W_real <= `W429_real;
        W_imag <= `W429_imag;
        end
        9'd220 : begin
        W_real <= `W430_real;
        W_imag <= `W430_imag;
        end
        9'd222 : begin
        W_real <= `W431_real;
        W_imag <= `W431_imag;
        end
        9'd224 : begin
        W_real <= `W432_real;
        W_imag <= `W432_imag;
        end
        9'd226 : begin
        W_real <= `W433_real;
        W_imag <= `W433_imag;
        end
        9'd228 : begin
        W_real <= `W434_real;
        W_imag <= `W434_imag;
        end
        9'd230 : begin
        W_real <= `W435_real;
        W_imag <= `W435_imag;
        end
        9'd232 : begin
        W_real <= `W436_real;
        W_imag <= `W436_imag;
        end
        9'd234 : begin
        W_real <= `W437_real;
        W_imag <= `W437_imag;
        end
        9'd236 : begin
        W_real <= `W438_real;
        W_imag <= `W438_imag;
        end
        9'd238 : begin
        W_real <= `W439_real;
        W_imag <= `W439_imag;
        end
        9'd240 : begin
        W_real <= `W440_real;
        W_imag <= `W440_imag;
        end
        9'd242 : begin
        W_real <= `W441_real;
        W_imag <= `W441_imag;
        end
        9'd244 : begin
        W_real <= `W442_real;
        W_imag <= `W442_imag;
        end
        9'd246 : begin
        W_real <= `W443_real;
        W_imag <= `W443_imag;
        end
        9'd248 : begin
        W_real <= `W444_real;
        W_imag <= `W444_imag;
        end
        9'd250 : begin
        W_real <= `W445_real;
        W_imag <= `W445_imag;
        end
        9'd252 : begin
        W_real <= `W446_real;
        W_imag <= `W446_imag;
        end
        9'd254 : begin
        W_real <= `W447_real;
        W_imag <= `W447_imag;
        end

        
            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
