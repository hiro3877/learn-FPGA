`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/08 19:57:22
// Design Name: 
// Module Name: delay_sim
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


module delay_sim();

    reg  clk;
    reg  [`DNumBus] dnum;
    reg  [`CalcTempBus] in;
    wire [`CalcTempBus] out;
    
    
    delay delay_sim (clk,dnum,in,out);
    
    
    initial begin
        clk  <= 0;
        dnum <= 4'b0100;
        in   <= 16'sb1111111101001011;        //-0.7071... (11111111.01001011)
        
        #200
        $finish;
    end
        
        always #10 begin
            clk <= ~clk;
        end
        
endmodule
