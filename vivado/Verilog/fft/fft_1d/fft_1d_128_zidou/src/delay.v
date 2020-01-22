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

module delay(
    input  wire                      clk,
    input  wire [`DNumBus]           dnum,           //delay number     
    input  wire signed [`CalcTempBus]       in,
    output reg  signed [`CalcTempBus]       out
    );
    
    
    /************define delay temp*************/
    
    wire signed [`CalcTempBus] temp1;
    wire signed [`CalcTempBus] temp2;
    wire signed [`CalcTempBus] temp3;
    wire signed [`CalcTempBus] temp4;
    wire signed [`CalcTempBus] temp5;
    wire signed [`CalcTempBus] temp6;
    wire signed [`CalcTempBus] temp7;
    wire signed [`CalcTempBus] temp8;
    wire signed [`CalcTempBus] temp9;
    wire signed [`CalcTempBus] temp10;
    wire signed [`CalcTempBus] temp11;
    wire signed [`CalcTempBus] temp12;
    wire signed [`CalcTempBus] temp13;
    wire signed [`CalcTempBus] temp14;
    wire signed [`CalcTempBus] temp15;
    wire signed [`CalcTempBus] temp16;
    wire signed [`CalcTempBus] temp17;
    wire signed [`CalcTempBus] temp18;
    wire signed [`CalcTempBus] temp19;
    wire signed [`CalcTempBus] temp20;
    wire signed [`CalcTempBus] temp21;
    wire signed [`CalcTempBus] temp22;
    wire signed [`CalcTempBus] temp23;
    wire signed [`CalcTempBus] temp24;
    wire signed [`CalcTempBus] temp25;
    wire signed [`CalcTempBus] temp26;
    wire signed [`CalcTempBus] temp27;
    wire signed [`CalcTempBus] temp28;
    wire signed [`CalcTempBus] temp29;
    wire signed [`CalcTempBus] temp30;
    wire signed [`CalcTempBus] temp31;
    wire signed [`CalcTempBus] temp32;
    wire signed [`CalcTempBus] temp33;
    wire signed [`CalcTempBus] temp34;
    wire signed [`CalcTempBus] temp35;
    wire signed [`CalcTempBus] temp36;
    wire signed [`CalcTempBus] temp37;
    wire signed [`CalcTempBus] temp38;
    wire signed [`CalcTempBus] temp39;
    wire signed [`CalcTempBus] temp40;
    wire signed [`CalcTempBus] temp41;
    wire signed [`CalcTempBus] temp42;
    wire signed [`CalcTempBus] temp43;
    wire signed [`CalcTempBus] temp44;
    wire signed [`CalcTempBus] temp45;
    wire signed [`CalcTempBus] temp46;
    wire signed [`CalcTempBus] temp47;
    wire signed [`CalcTempBus] temp48;
    wire signed [`CalcTempBus] temp49;
    wire signed [`CalcTempBus] temp50;
    wire signed [`CalcTempBus] temp51;
    wire signed [`CalcTempBus] temp52;
    wire signed [`CalcTempBus] temp53;
    wire signed [`CalcTempBus] temp54;
    wire signed [`CalcTempBus] temp55;
    wire signed [`CalcTempBus] temp56;
    wire signed [`CalcTempBus] temp57;
    wire signed [`CalcTempBus] temp58;
    wire signed [`CalcTempBus] temp59;
    wire signed [`CalcTempBus] temp60;
    wire signed [`CalcTempBus] temp61;
    wire signed [`CalcTempBus] temp62;
    wire signed [`CalcTempBus] temp63;
    wire signed [`CalcTempBus] temp64;
    wire signed [`CalcTempBus] temp65;
    
    delay_base delay1 (clk,in,temp1);
    delay_base delay2 (clk,temp1,temp2);
    delay_base delay3 (clk,temp2,temp3);
    delay_base delay4 (clk,temp3,temp4);
    delay_base delay5 (clk,temp4,temp5);
    delay_base delay6 (clk,temp5,temp6);
    delay_base delay7 (clk,temp6,temp7);
    delay_base delay8 (clk,temp7,temp8);
    delay_base delay9 (clk,temp8,temp9);
    delay_base delay10 (clk,temp9,temp10);
    delay_base delay11 (clk,temp10,temp11);
    delay_base delay12 (clk,temp11,temp12);
    delay_base delay13 (clk,temp12,temp13);
    delay_base delay14 (clk,temp13,temp14);
    delay_base delay15 (clk,temp14,temp15);
    delay_base delay16 (clk,temp15,temp16);
    delay_base delay17 (clk,temp16,temp17);
    delay_base delay18 (clk,temp17,temp18);
    delay_base delay19 (clk,temp18,temp19);
    delay_base delay20 (clk,temp19,temp20);
    delay_base delay21 (clk,temp20,temp21);
    delay_base delay22 (clk,temp21,temp22);
    delay_base delay23 (clk,temp22,temp23);
    delay_base delay24 (clk,temp23,temp24);
    delay_base delay25 (clk,temp24,temp25);
    delay_base delay26 (clk,temp25,temp26);
    delay_base delay27 (clk,temp26,temp27);
    delay_base delay28 (clk,temp27,temp28);
    delay_base delay29 (clk,temp28,temp29);
    delay_base delay30 (clk,temp29,temp30);
    delay_base delay31 (clk,temp30,temp31);
    delay_base delay32 (clk,temp31,temp32);
    delay_base delay33 (clk,temp32,temp33);
    delay_base delay34 (clk,temp33,temp34);
    delay_base delay35 (clk,temp34,temp35);
    delay_base delay36 (clk,temp35,temp36);
    delay_base delay37 (clk,temp36,temp37);
    delay_base delay38 (clk,temp37,temp38);
    delay_base delay39 (clk,temp38,temp39);
    delay_base delay40 (clk,temp39,temp40);
    delay_base delay41 (clk,temp40,temp41);
    delay_base delay42 (clk,temp41,temp42);
    delay_base delay43 (clk,temp42,temp43);
    delay_base delay44 (clk,temp43,temp44);
    delay_base delay45 (clk,temp44,temp45);
    delay_base delay46 (clk,temp45,temp46);
    delay_base delay47 (clk,temp46,temp47);
    delay_base delay48 (clk,temp47,temp48);
    delay_base delay49 (clk,temp48,temp49);
    delay_base delay50 (clk,temp49,temp50);
    delay_base delay51 (clk,temp50,temp51);
    delay_base delay52 (clk,temp51,temp52);
    delay_base delay53 (clk,temp52,temp53);
    delay_base delay54 (clk,temp53,temp54);
    delay_base delay55 (clk,temp54,temp55);
    delay_base delay56 (clk,temp55,temp56);
    delay_base delay57 (clk,temp56,temp57);
    delay_base delay58 (clk,temp57,temp58);
    delay_base delay59 (clk,temp58,temp59);
    delay_base delay60 (clk,temp59,temp60);
    delay_base delay61 (clk,temp60,temp61);
    delay_base delay62 (clk,temp61,temp62);
    delay_base delay63 (clk,temp62,temp63);
    delay_base delay64 (clk,temp63,temp64);
    delay_base delay65 (clk,temp64,temp65);
    
    /***************control delay*********************/
    
    always @(*) begin
        case (dnum)
        7'd1	: out <= temp1;
        7'd2    : out <= temp2;
        7'd3    : out <= temp3;
        7'd4    : out <= temp4;
        7'd5    : out <= temp5;
        7'd6    : out <= temp6;
        7'd7    : out <= temp7;
        7'd8    : out <= temp8;
        7'd9    : out <= temp9;
        7'd10    : out <= temp10;
        7'd11    : out <= temp11;
        7'd12    : out <= temp12;
        7'd13    : out <= temp13;
        7'd14    : out <= temp14;
        7'd15    : out <= temp15;
        7'd16    : out <= temp16;
        7'd17    : out <= temp17;
        7'd18    : out <= temp18;
        7'd19    : out <= temp19;
        7'd20    : out <= temp20;
        7'd21    : out <= temp21;
        7'd22    : out <= temp22;
        7'd23    : out <= temp23;
        7'd24    : out <= temp24;
        7'd25    : out <= temp25;
        7'd26    : out <= temp26;
        7'd27    : out <= temp27;
        7'd28    : out <= temp28;
        7'd29    : out <= temp29;
        7'd30    : out <= temp30;
        7'd31    : out <= temp31;
        7'd32    : out <= temp32;
        7'd33    : out <= temp33;
        7'd34    : out <= temp34;
        7'd35    : out <= temp35;
        7'd36    : out <= temp36;
        7'd37    : out <= temp37;
        7'd38    : out <= temp38;
        7'd39    : out <= temp39;
        7'd40    : out <= temp40;
        7'd41    : out <= temp41;
        7'd42    : out <= temp42;
        7'd43    : out <= temp43;
        7'd44    : out <= temp44;
        7'd45    : out <= temp45;
        7'd46    : out <= temp46;
        7'd47    : out <= temp47;
        7'd48    : out <= temp48;
        7'd49    : out <= temp49;
        7'd50    : out <= temp50;
        7'd51    : out <= temp51;
        7'd52    : out <= temp52;
        7'd53    : out <= temp53;
        7'd54    : out <= temp54;
        7'd55    : out <= temp55;
        7'd56    : out <= temp56;
        7'd57    : out <= temp57;
        7'd58    : out <= temp58;
        7'd59    : out <= temp59;
        7'd60    : out <= temp60;
        7'd61    : out <= temp61;
        7'd62    : out <= temp62;
        7'd63    : out <= temp63;
        7'd64    : out <= temp64;
        7'd65    : out <= temp65;
         default : out <= 16'b0;
        endcase
    end
             
/***************define wire and reg********************/
    //reg [`DNumBus] count = 4'b0;
    
    
    /***********counter**************/
    /*
    always @(posedge clk) begin
        if (count == dnum) begin
            count <= 4'b0;
            out <= in;
            
        end else begin
            count <= count + 4'b001;
        end
    end
    */
                                
endmodule
