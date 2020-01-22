`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/25 17:56:21
// Design Name: 
// Module Name: MULT0
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


/**********define rotation factor*************/
 `define W_real	    16'b0000000100000000        //1.0 (00000001.00000000)
 `define W_imag		16'b0000000000000000        //0.0 (00000000.00000000)


module MULT0(
    input  wire [15:0]       in2_r,
    input  wire [15:0]       in2_i,
    
    output wire [15:0]       out1,
    output wire [15:0]       out2
    );
endmodule


    reg [15:0] out1_temp;
    reg [15:0] out2_temp;
    
    reg [
        