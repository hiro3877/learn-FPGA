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
    
    
    fft_1d_8_kai_top top_sim (clk,in_r,in_i,out_r,out_i);       //8 => 4
    
    
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
            
        #400
            $finish;
                        
    end
        
        always #5 begin
            clk <= ~clk;
        end
            


endmodule