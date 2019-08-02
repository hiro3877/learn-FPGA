`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/09 16:31:14
// Design Name: 
// Module Name: top_sim
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


module top_sim();

    reg clk;
    reg signed [`InBus] in_r;
    reg signed [`InBus] in_i;
    
    wire signed [`OutBus] out_r;
    wire signed [`OutBus] out_i;
    
    
    fft_1d_8_kai_top top_sim (clk,in_r,in_i,out_r,out_i);       //8 => 128
    
    
    /********************define integer*******************/
    
    
    initial begin
        clk <= 1'b0;
        
        
        
        #5//0
        in_r <= 16'sb0000000000000000;
        in_i <= 16'sb0000000000000000;
        
        #10//1
        in_r <= 16'sb0000000100000000;
        in_i <= 16'sb0000000100000000;
        
        #10//2
        in_r <= 16'sb0000001000000000;
        in_i <= 16'sb0000001000000000;
        
        #10//3
        in_r <= 16'sb0000001100000000;
        in_i <= 16'sb0000001100000000;
        
        #10//4
        in_r <= 16'sb0000010000000000;
        in_i <= 16'sb0000010000000000;
        
        #10//5
        in_r <= 16'sb0000010100000000;
        in_i <= 16'sb0000010100000000;
        
        #10//6
        in_r <= 16'sb0000011000000000;
        in_i <= 16'sb0000011000000000;
        
        #10//7
        in_r <= 16'sb0000011100000000;
        in_i <= 16'sb0000011100000000;
        
        #10//8
        in_r <= 16'sb0000100000000000;
        in_i <= 16'sb0000100000000000;
        
        #10//9
        in_r <= 16'sb0000100100000000;
        in_i <= 16'sb0000100100000000;
        
        #10//10
        in_r <= 16'sb0000101000000000;
        in_i <= 16'sb0000101000000000;
        
        #10//11
        in_r <= 16'sb0000101100000000;
        in_i <= 16'sb0000101100000000;
        
        #10//12
        in_r <= 16'sb0000110000000000;
        in_i <= 16'sb0000110000000000;
        
        #10//13
        in_r <= 16'sb0000110100000000;
        in_i <= 16'sb0000110100000000;
        
        #10//14
        in_r <= 16'sb0000111000000000;
        in_i <= 16'sb0000111000000000;
        
        #10//15
        in_r <= 16'sb0000111100000000;
        in_i <= 16'sb0000111100000000;
        
        #10//16
        in_r <= 16'sb0001000000000000;
        in_i <= 16'sb0001000000000000;
        
        #10//17
        in_r <= 16'sb0001000100000000;
        in_i <= 16'sb0001000100000000;
        
        #10//18
        in_r <= 16'sb0001001000000000;
        in_i <= 16'sb0001001000000000;
        
        #10//19
        in_r <= 16'sb0001001100000000;
        in_i <= 16'sb0001001100000000;
        
        #10//20
        in_r <= 16'sb0001010000000000;
        in_i <= 16'sb0001010000000000;
        
        #10//21
        in_r <= 16'sb0001010100000000;
        in_i <= 16'sb0001010100000000;
        
        #10//22
        in_r <= 16'sb0001011000000000;
        in_i <= 16'sb0001011000000000;
        
        #10//23
        in_r <= 16'sb0001011100000000;
        in_i <= 16'sb0001011100000000;
        
        #10//24
        in_r <= 16'sb0001100000000000;
        in_i <= 16'sb0001100000000000;
        
        #10//25
        in_r <= 16'sb0001100100000000;
        in_i <= 16'sb0001100100000000;
        
        #10//26
        in_r <= 16'sb0001101000000000;
        in_i <= 16'sb0001101000000000;
        
        #10//27
        in_r <= 16'sb0001101100000000;
        in_i <= 16'sb0001101100000000;
        
        #10//28
        in_r <= 16'sb0001110000000000;
        in_i <= 16'sb0001110000000000;
        
        #10//29
        in_r <= 16'sb0001110100000000;
        in_i <= 16'sb0001110100000000;
        
        #10//30
        in_r <= 16'sb0001111000000000;
        in_i <= 16'sb0001111000000000;
        
        #10//31
        in_r <= 16'sb0001111100000000;
        in_i <= 16'sb0001111100000000;
        
        #10//32
        in_r <= 16'sb0010000000000000;
        in_i <= 16'sb0010000000000000;
        
        #10//33
        in_r <= 16'sb0010000100000000;
        in_i <= 16'sb0010000100000000;
        
        #10//34
        in_r <= 16'sb0010001000000000;
        in_i <= 16'sb0010001000000000;
        
        #10//35
        in_r <= 16'sb0010001100000000;
        in_i <= 16'sb0010001100000000;
        
        #10//36
        in_r <= 16'sb0010010000000000;
        in_i <= 16'sb0010010000000000;
        
        #10//37
        in_r <= 16'sb0010010100000000;
        in_i <= 16'sb0010010100000000;
        
        #10//38
        in_r <= 16'sb0010011000000000;
        in_i <= 16'sb0010011000000000;
        
        #10//39
        in_r <= 16'sb0010011100000000;
        in_i <= 16'sb0010011100000000;
        
        #10//40
        in_r <= 16'sb0010100000000000;
        in_i <= 16'sb0010100000000000;
        
        #10//41
        in_r <= 16'sb0010100100000000;
        in_i <= 16'sb0010100100000000;
        
        #10//42
        in_r <= 16'sb0010101000000000;
        in_i <= 16'sb0010101000000000;
        
        #10//43
        in_r <= 16'sb0010101100000000;
        in_i <= 16'sb0010101100000000;
        
        #10//44
        in_r <= 16'sb0010110000000000;
        in_i <= 16'sb0010110000000000;
        
        #10//45
        in_r <= 16'sb0010110100000000;
        in_i <= 16'sb0010110100000000;
        
        #10//46
        in_r <= 16'sb0010111000000000;
        in_i <= 16'sb0010111000000000;
        
        #10//47
        in_r <= 16'sb0010111100000000;
        in_i <= 16'sb0010111100000000;
        
        #10//48
        in_r <= 16'sb0011000000000000;
        in_i <= 16'sb0011000000000000;
        
        #10//49
        in_r <= 16'sb0011000100000000;
        in_i <= 16'sb0011000100000000;
        
        #10//50
        in_r <= 16'sb0011001000000000;
        in_i <= 16'sb0011001000000000;
        
        #10//51
        in_r <= 16'sb0011001100000000;
        in_i <= 16'sb0011001100000000;
        
        #10//52
        in_r <= 16'sb0011010000000000;
        in_i <= 16'sb0011010000000000;
        
        #10//53
        in_r <= 16'sb0011010100000000;
        in_i <= 16'sb0011010100000000;
        
        #10//54
        in_r <= 16'sb0011011000000000;
        in_i <= 16'sb0011011000000000;
        
        #10//55
        in_r <= 16'sb0011011100000000;
        in_i <= 16'sb0011011100000000;
        
        #10//56
        in_r <= 16'sb0011100000000000;
        in_i <= 16'sb0011100000000000;
        
        #10//57
        in_r <= 16'sb0011100100000000;
        in_i <= 16'sb0011100100000000;
        
        #10//58
        in_r <= 16'sb0011101000000000;
        in_i <= 16'sb0011101000000000;
        
        #10//59
        in_r <= 16'sb0011101100000000;
        in_i <= 16'sb0011101100000000;
        
        #10//60
        in_r <= 16'sb0011110000000000;
        in_i <= 16'sb0011110000000000;
        
        #10//61
        in_r <= 16'sb0011110100000000;
        in_i <= 16'sb0011110100000000;
        
        #10//62
        in_r <= 16'sb0011111000000000;
        in_i <= 16'sb0011111000000000;
        
        #10//63
        in_r <= 16'sb0011111100000000;
        in_i <= 16'sb0011111100000000;
        
        #10//64
        in_r <= 16'sb0100000000000000;
        in_i <= 16'sb0100000000000000;
        
        #10//65
        in_r <= 16'sb0100000100000000;
        in_i <= 16'sb0100000100000000;
        
        #10//66
        in_r <= 16'sb0100001000000000;
        in_i <= 16'sb0100001000000000;
        
        #10//67
        in_r <= 16'sb0100001100000000;
        in_i <= 16'sb0100001100000000;
        
        #10//68
        in_r <= 16'sb0100010000000000;
        in_i <= 16'sb0100010000000000;
        
        #10//69
        in_r <= 16'sb0100010100000000;
        in_i <= 16'sb0100010100000000;
        
        #10//70
        in_r <= 16'sb0100011000000000;
        in_i <= 16'sb0100011000000000;
        
        #10//71
        in_r <= 16'sb0100011100000000;
        in_i <= 16'sb0100011100000000;
        
        #10//72
        in_r <= 16'sb0100100000000000;
        in_i <= 16'sb0100100000000000;
        
        #10//73
        in_r <= 16'sb0100100100000000;
        in_i <= 16'sb0100100100000000;
        
        #10//74
        in_r <= 16'sb0100101000000000;
        in_i <= 16'sb0100101000000000;
        
        #10//75
        in_r <= 16'sb0100101100000000;
        in_i <= 16'sb0100101100000000;
        
        #10//76
        in_r <= 16'sb0100110000000000;
        in_i <= 16'sb0100110000000000;
        
        #10//77
        in_r <= 16'sb0100110100000000;
        in_i <= 16'sb0100110100000000;
        
        #10//78
        in_r <= 16'sb0100111000000000;
        in_i <= 16'sb0100111000000000;
        
        #10//79
        in_r <= 16'sb0100111100000000;
        in_i <= 16'sb0100111100000000;
        
        #10//80
        in_r <= 16'sb0101000000000000;
        in_i <= 16'sb0101000000000000;
        
        #10//81
        in_r <= 16'sb0101000100000000;
        in_i <= 16'sb0101000100000000;
        
        #10//82
        in_r <= 16'sb0101001000000000;
        in_i <= 16'sb0101001000000000;
        
        #10//83
        in_r <= 16'sb0101001100000000;
        in_i <= 16'sb0101001100000000;
        
        #10//84
        in_r <= 16'sb0101010000000000;
        in_i <= 16'sb0101010000000000;
        
        #10//85
        in_r <= 16'sb0101010100000000;
        in_i <= 16'sb0101010100000000;
        
        #10//86
        in_r <= 16'sb0101011000000000;
        in_i <= 16'sb0101011000000000;
        
        #10//87
        in_r <= 16'sb0101011100000000;
        in_i <= 16'sb0101011100000000;
        
        #10//88
        in_r <= 16'sb0101100000000000;
        in_i <= 16'sb0101100000000000;
        
        #10//89
        in_r <= 16'sb0101100100000000;
        in_i <= 16'sb0101100100000000;
        
        #10//90
        in_r <= 16'sb0101101000000000;
        in_i <= 16'sb0101101000000000;
        
        #10//91
        in_r <= 16'sb0101101100000000;
        in_i <= 16'sb0101101100000000;
        
        #10//92
        in_r <= 16'sb0101110000000000;
        in_i <= 16'sb0101110000000000;
        
        #10//93
        in_r <= 16'sb0101110100000000;
        in_i <= 16'sb0101110100000000;
        
        #10//94
        in_r <= 16'sb0101111000000000;
        in_i <= 16'sb0101111000000000;
        
        #10//95
        in_r <= 16'sb0101111100000000;
        in_i <= 16'sb0101111100000000;
        
        #10//96
        in_r <= 16'sb0110000000000000;
        in_i <= 16'sb0110000000000000;
        
        #10//97
        in_r <= 16'sb0110000100000000;
        in_i <= 16'sb0110000100000000;
        
        #10//98
        in_r <= 16'sb0110001000000000;
        in_i <= 16'sb0110001000000000;
        
        #10//99
        in_r <= 16'sb0110001100000000;
        in_i <= 16'sb0110001100000000;
        
        #10//100
        in_r <= 16'sb0110010000000000;
        in_i <= 16'sb0110010000000000;
        
        #10//101
        in_r <= 16'sb0110010100000000;
        in_i <= 16'sb0110010100000000;
        
        #10//102
        in_r <= 16'sb0110011000000000;
        in_i <= 16'sb0110011000000000;
        
        #10//103
        in_r <= 16'sb0110011100000000;
        in_i <= 16'sb0110011100000000;
        
        #10//104
        in_r <= 16'sb0110100000000000;
        in_i <= 16'sb0110100000000000;
        
        #10//105
        in_r <= 16'sb0110100100000000;
        in_i <= 16'sb0110100100000000;
        
        #10//106
        in_r <= 16'sb0110101000000000;
        in_i <= 16'sb0110101000000000;
        
        #10//107
        in_r <= 16'sb0110101100000000;
        in_i <= 16'sb0110101100000000;
        
        #10//108
        in_r <= 16'sb0110110000000000;
        in_i <= 16'sb0110110000000000;
        
        #10//109
        in_r <= 16'sb0110110100000000;
        in_i <= 16'sb0110110100000000;
        
        #10//110
        in_r <= 16'sb0110111000000000;
        in_i <= 16'sb0110111000000000;
        
        #10//111
        in_r <= 16'sb0110111100000000;
        in_i <= 16'sb0110111100000000;
        
        #10//112
        in_r <= 16'sb0111000000000000;
        in_i <= 16'sb0111000000000000;
        
        #10//113
        in_r <= 16'sb0111000100000000;
        in_i <= 16'sb0111000100000000;
        
        #10//114
        in_r <= 16'sb0111001000000000;
        in_i <= 16'sb0111001000000000;
        
        #10//115
        in_r <= 16'sb0111001100000000;
        in_i <= 16'sb0111001100000000;
        
        #10//116
        in_r <= 16'sb0111010000000000;
        in_i <= 16'sb0111010000000000;
        
        #10//117
        in_r <= 16'sb0111010100000000;
        in_i <= 16'sb0111010100000000;
        
        #10//118
        in_r <= 16'sb0111011000000000;
        in_i <= 16'sb0111011000000000;
        
        #10//119
        in_r <= 16'sb0111011100000000;
        in_i <= 16'sb0111011100000000;
        
        #10//120
        in_r <= 16'sb0111100000000000;
        in_i <= 16'sb0111100000000000;
        
        #10//121
        in_r <= 16'sb0111100100000000;
        in_i <= 16'sb0111100100000000;
        
        #10//122
        in_r <= 16'sb0111101000000000;
        in_i <= 16'sb0111101000000000;
        
        #10//123
        in_r <= 16'sb0111101100000000;
        in_i <= 16'sb0111101100000000;
        
        #10//124
        in_r <= 16'sb0111110000000000;
        in_i <= 16'sb0111110000000000;
        
        #10//125
        in_r <= 16'sb0111110100000000;
        in_i <= 16'sb0111110100000000;
        
        #10//126
        in_r <= 16'sb0111111000000000;
        in_i <= 16'sb0111111000000000;
        
        #10//127
        in_r <= 16'sb0111111100000000;
        in_i <= 16'sb0111111100000000;
            
        #3200
            $finish;
                        
    end
        
        always #5 begin
            clk <= ~clk;
        end
            


endmodule
