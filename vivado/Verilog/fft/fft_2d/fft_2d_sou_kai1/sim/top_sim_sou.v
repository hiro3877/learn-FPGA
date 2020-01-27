`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 18:51:44
// Design Name: 
// Module Name: top_sim_io
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


module top_sim_sou();

reg		clk;

reg signed [`InBus]		in_r;
reg signed [`InBus]		in_i;
wire signed [`OutBus]		out_r;
wire signed [`OutBus]		out_i;

top_sou_1_1 sim_sou (clk,in_r,in_i,out_r,out_i);


/********************sim start*********************/

    initial begin
        clk <= 1'b0;
        
        
        
        #5//4_4
        in_r <= 16'sb0000100000000000;
        in_i <= 16'sb0000100000000000;
        
        #10//4_3
        in_r <= 16'sb0000011100000000;
        in_i <= 16'sb0000011100000000;
        
        #10//4_2
        in_r <= 16'sb0000011000000000;
        in_i <= 16'sb0000011000000000;
        
        #10//4_1
        in_r <= 16'sb0000010100000000;
        in_i <= 16'sb0000010100000000;
        
        #10//3_4
        in_r <= 16'sb0000011100000000;
        in_i <= 16'sb0000011100000000;
        
        #10//3_3
        in_r <= 16'sb0000011000000000;
        in_i <= 16'sb0000011000000000;
        
        #10//3_2
        in_r <= 16'sb0000010100000000;
        in_i <= 16'sb0000010100000000;
        
        #10//3_1
        in_r <= 16'sb0000010000000000;
        in_i <= 16'sb0000010000000000;
        
        #10//2_4
        in_r <= 16'sb0000011000000000;
        in_i <= 16'sb0000011000000000;

        #10//2_3
        in_r <= 16'sb0000010100000000;
        in_i <= 16'sb0000010100000000;
        
        #10//2_2
        in_r <= 16'sb0000010000000000;
        in_i <= 16'sb0000010000000000;

        #10//2_1
        in_r <= 16'sb0000001100000000;
        in_i <= 16'sb0000001100000000;
        
        #10//1_4
        in_r <= 16'sb0000010100000000;
        in_i <= 16'sb0000010100000000;

        #10//1_3
        in_r <= 16'sb0000010000000000;
        in_i <= 16'sb0000010000000000;
            
        #10//1_2
        in_r <= 16'sb0000001100000000;
        in_i <= 16'sb0000001100000000;

        #10//1_1
        in_r <= 16'sb0000001000000000;
        in_i <= 16'sb0000001000000000;
            
        #3000
            $finish;
                        
    end
        
        always #5 begin
            clk <= ~clk;
        end

endmodule