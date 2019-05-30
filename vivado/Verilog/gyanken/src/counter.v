`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 20:53:09
// Design Name: 
// Module Name: counter
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
`include "./stddef.h"


module counter(

    input  wire clk,
    input  wire rst_,
    input  wire counter_in_,
    output wire [`G_CounterBus] counter_out

    );
    
    reg [`G_CounterBus] counter_out_reg;
    assign counter_out = counter_out_reg;
    
    /*******1加算されていく度にグーチョキパーが変わっていく*******/
    
    always @(posedge clk or negedge rst_) begin
        if(rst_==`ENABLE_) begin         //非同期リセット
            counter_out_reg <= 2'b0;
        end else begin
            if(!counter_in_) begin
                counter_out_reg <= counter_out_reg + 1'b1;
            end
        end
    end
          
            
           
endmodule
