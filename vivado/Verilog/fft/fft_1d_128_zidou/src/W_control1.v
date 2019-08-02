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

module W_control1(
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
            
        9'd65 : begin
        W_real <= `W0_real;
        W_imag <= `W0_imag;
        end
        9'd66 : begin
        W_real <= `W1_real;
        W_imag <= `W1_imag;
        end
        9'd67 : begin
        W_real <= `W2_real;
        W_imag <= `W2_imag;
        end
        9'd68 : begin
        W_real <= `W3_real;
        W_imag <= `W3_imag;
        end
        9'd69 : begin
        W_real <= `W4_real;
        W_imag <= `W4_imag;
        end
        9'd70 : begin
        W_real <= `W5_real;
        W_imag <= `W5_imag;
        end
        9'd71 : begin
        W_real <= `W6_real;
        W_imag <= `W6_imag;
        end
        9'd72 : begin
        W_real <= `W7_real;
        W_imag <= `W7_imag;
        end
        9'd73 : begin
        W_real <= `W8_real;
        W_imag <= `W8_imag;
        end
        9'd74 : begin
        W_real <= `W9_real;
        W_imag <= `W9_imag;
        end
        9'd75 : begin
        W_real <= `W10_real;
        W_imag <= `W10_imag;
        end
        9'd76 : begin
        W_real <= `W11_real;
        W_imag <= `W11_imag;
        end
        9'd77 : begin
        W_real <= `W12_real;
        W_imag <= `W12_imag;
        end
        9'd78 : begin
        W_real <= `W13_real;
        W_imag <= `W13_imag;
        end
        9'd79 : begin
        W_real <= `W14_real;
        W_imag <= `W14_imag;
        end
        9'd80 : begin
        W_real <= `W15_real;
        W_imag <= `W15_imag;
        end
        9'd81 : begin
        W_real <= `W16_real;
        W_imag <= `W16_imag;
        end
        9'd82 : begin
        W_real <= `W17_real;
        W_imag <= `W17_imag;
        end
        9'd83 : begin
        W_real <= `W18_real;
        W_imag <= `W18_imag;
        end
        9'd84 : begin
        W_real <= `W19_real;
        W_imag <= `W19_imag;
        end
        9'd85 : begin
        W_real <= `W20_real;
        W_imag <= `W20_imag;
        end
        9'd86 : begin
        W_real <= `W21_real;
        W_imag <= `W21_imag;
        end
        9'd87 : begin
        W_real <= `W22_real;
        W_imag <= `W22_imag;
        end
        9'd88 : begin
        W_real <= `W23_real;
        W_imag <= `W23_imag;
        end
        9'd89 : begin
        W_real <= `W24_real;
        W_imag <= `W24_imag;
        end
        9'd90 : begin
        W_real <= `W25_real;
        W_imag <= `W25_imag;
        end
        9'd91 : begin
        W_real <= `W26_real;
        W_imag <= `W26_imag;
        end
        9'd92 : begin
        W_real <= `W27_real;
        W_imag <= `W27_imag;
        end
        9'd93 : begin
        W_real <= `W28_real;
        W_imag <= `W28_imag;
        end
        9'd94 : begin
        W_real <= `W29_real;
        W_imag <= `W29_imag;
        end
        9'd95 : begin
        W_real <= `W30_real;
        W_imag <= `W30_imag;
        end
        9'd96 : begin
        W_real <= `W31_real;
        W_imag <= `W31_imag;
        end
        9'd97 : begin
        W_real <= `W32_real;
        W_imag <= `W32_imag;
        end
        9'd98 : begin
        W_real <= `W33_real;
        W_imag <= `W33_imag;
        end
        9'd99 : begin
        W_real <= `W34_real;
        W_imag <= `W34_imag;
        end
        9'd100 : begin
        W_real <= `W35_real;
        W_imag <= `W35_imag;
        end
        9'd101 : begin
        W_real <= `W36_real;
        W_imag <= `W36_imag;
        end
        9'd102 : begin
        W_real <= `W37_real;
        W_imag <= `W37_imag;
        end
        9'd103 : begin
        W_real <= `W38_real;
        W_imag <= `W38_imag;
        end
        9'd104 : begin
        W_real <= `W39_real;
        W_imag <= `W39_imag;
        end
        9'd105 : begin
        W_real <= `W40_real;
        W_imag <= `W40_imag;
        end
        9'd106 : begin
        W_real <= `W41_real;
        W_imag <= `W41_imag;
        end
        9'd107 : begin
        W_real <= `W42_real;
        W_imag <= `W42_imag;
        end
        9'd108 : begin
        W_real <= `W43_real;
        W_imag <= `W43_imag;
        end
        9'd109 : begin
        W_real <= `W44_real;
        W_imag <= `W44_imag;
        end
        9'd110 : begin
        W_real <= `W45_real;
        W_imag <= `W45_imag;
        end
        9'd111 : begin
        W_real <= `W46_real;
        W_imag <= `W46_imag;
        end
        9'd112 : begin
        W_real <= `W47_real;
        W_imag <= `W47_imag;
        end
        9'd113 : begin
        W_real <= `W48_real;
        W_imag <= `W48_imag;
        end
        9'd114 : begin
        W_real <= `W49_real;
        W_imag <= `W49_imag;
        end
        9'd115 : begin
        W_real <= `W50_real;
        W_imag <= `W50_imag;
        end
        9'd116 : begin
        W_real <= `W51_real;
        W_imag <= `W51_imag;
        end
        9'd117 : begin
        W_real <= `W52_real;
        W_imag <= `W52_imag;
        end
        9'd118 : begin
        W_real <= `W53_real;
        W_imag <= `W53_imag;
        end
        9'd119 : begin
        W_real <= `W54_real;
        W_imag <= `W54_imag;
        end
        9'd120 : begin
        W_real <= `W55_real;
        W_imag <= `W55_imag;
        end
        9'd121 : begin
        W_real <= `W56_real;
        W_imag <= `W56_imag;
        end
        9'd122 : begin
        W_real <= `W57_real;
        W_imag <= `W57_imag;
        end
        9'd123 : begin
        W_real <= `W58_real;
        W_imag <= `W58_imag;
        end
        9'd124 : begin
        W_real <= `W59_real;
        W_imag <= `W59_imag;
        end
        9'd125 : begin
        W_real <= `W60_real;
        W_imag <= `W60_imag;
        end
        9'd126 : begin
        W_real <= `W61_real;
        W_imag <= `W61_imag;
        end
        9'd127 : begin
        W_real <= `W62_real;
        W_imag <= `W62_imag;
        end
        9'd128 : begin
        W_real <= `W63_real;
        W_imag <= `W63_imag;
        end

            default : begin
                W_real <= 16'sb0;
                W_imag <= 16'sb0;
            end
            
        endcase
    end
                                
endmodule
