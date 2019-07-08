`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/08 17:07:42
// Design Name: 
// Module Name: W_control1_sim
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


module W_control1_sim();

reg clk;
wire signed [`WBus] W_real;
wire signed [`WBus] W_imag;

W_control1 W_control1_sim (clk,W_real,W_imag);

    initial begin
        clk <= 0;
        
        #200
        $finish;
    end
    
    always #10 begin
        clk <= ~clk;
    end

endmodule
