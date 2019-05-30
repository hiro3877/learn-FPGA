`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 22:43:28
// Design Name: 
// Module Name: decoder
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

module decoder(

    input  wire [`S_DataBus]          decoder_in,
    output reg  [`D_DataBus]          led

    );
    
    always @(*) begin
        case (decoder_in)
            `D      : led <= {`D_7seg_4,`D_7seg_3,`D_7seg_2,`D_7seg_1};         //ドロー
            
            `LLW    : led <= {8'b0,`L_7seg,`L_7seg,`W_7seg};                    //決着ついた
            `LWL    : led <= {8'b0,`L_7seg,`W_7seg,`L_7seg};
            `LWW    : led <= {8'b0,`L_7seg,`W_7seg,`W_7seg};
            `WLL    : led <= {8'b0,`W_7seg,`L_7seg,`L_7seg};
            `WLW    : led <= {8'b0,`W_7seg,`L_7seg,`W_7seg};
            `WWL    : led <= {8'b0,`W_7seg,`W_7seg,`L_7seg};
            
            `G_4    : led <= {8'b0,`G_7seg_3,`G_7seg_2,`G_7seg_1};              //1人用じゃんけん
            `T_4    : led <= {8'b0,`T_7seg_3,`T_7seg_2,`T_7seg_1};
            `P_4    : led <= {8'b0,`P_7seg_3,`P_7seg_2,`P_7seg_1};
            
        endcase
    end
    
    
endmodule
