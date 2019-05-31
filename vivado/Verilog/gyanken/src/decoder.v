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
    output reg  [`L_DataBus]          led_

    );
    
    always @(*) begin
        case (decoder_in)
            `D      : led_ <= {`D_7seg_4,`D_7seg_3,`D_7seg_2,`D_7seg_1};         //�h���[
            
            `LLW    : led_ <= {8'hFF,`W_7seg,`L_7seg,`L_7seg};                    //���������Ƃ��A
            `LWL    : led_ <= {8'hFF,`L_7seg,`W_7seg,`L_7seg};                    //���Ə��ԋt�ɂ��Ă�A�t�ɂ����ق������o�I�ɂ킩��₷����������
            `LWW    : led_ <= {8'hFF,`W_7seg,`W_7seg,`L_7seg};                    //8'hFF �� 8bit��1�Ŗ��߂Ă邾��
            `WLL    : led_ <= {8'hFF,`L_7seg,`L_7seg,`W_7seg};
            `WLW    : led_ <= {8'hFF,`W_7seg,`L_7seg,`W_7seg};
            `WWL    : led_ <= {8'hFF,`L_7seg,`W_7seg,`W_7seg};
            
            `G_4    : led_ <= {8'hFF,`G_7seg_3,`G_7seg_2,`G_7seg_1};              //1�l�p����񂯂�
            `T_4    : led_ <= {8'hFF,`T_7seg_3,`T_7seg_2,`T_7seg_1};
            `P_4    : led_ <= {8'hFF,`P_7seg_3,`P_7seg_2,`P_7seg_1};
            
            default : led_ <= 32'hFFFFFFFF;                                       //32'hFFFFFFFF �� 32bit��1�Ŗ��߂Ă邾��
            
        endcase
    end
    
    
endmodule
