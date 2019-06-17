`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/17 18:52:25
// Design Name: 
// Module Name: bus_arbiter
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
`include "./global_config.h"
`include "./stddef.h"
`include "./bus.h"


/*****************���W���[��************************/

module bus_arbiter(
    /****************�N���b�N���Z�b�g********************/
    input wire          clk,
    input wire          reset,
    /***************�o�X�}�X�^*******************/
    input wire          m0_req_,
    output reg          m0_grnt_,
    
    input wire          m1_req_,
    output reg          m1_grnt_,
    
    input wire          m2_req_,
    output reg          m2_grnt_,
    
    input wire          m3_req_,
    output reg          m3_grnt_
                
    );
endmodule

    /*****************�����M��*********************/
    reg [`BusOwnerBus]  owner;
    
    /****************�o�X�O�����g�����i���������j****************/
    always @(*) begin       
    
        /*�o�X�O�����g������*/
        m0_grnt_ = `DISABLE_;
        m1_grnt_ = `DISABLE_;
        m2_grnt_ = `DISABLE_;
        m3_grnt_ = `DISABLE_;
        
        /*�o�X�O�����g����*/
        case (owner)
        
            `BUS_OWNER_MASTER_0 : begin
                m0_grnt_ = `ENABLE_;
            end
            
            `BUS_OWNER_MASTER_1 : begin
                m1_grnt_ = `ENABLE_;
            end
     
            `BUS_OWNER_MASTER_2 : begin
                m2_grnt_ = `ENABLE_;
            end
                                           
            `BUS_OWNER_MASTER_3 : begin
                m3_grnt_ = `ENABLE_;
            end
        endcase
    end
    
    /************�o�X���̃A�[�r�g���[�V����***************/
    always @(posedge clk or `RESET_EDGE reset) begin
        if (reset == `RESET_ENABLE) begin 
            /*�񓯊����Z�b�g*/
            owner <= #1 `BUS_OWNER_MASTER 0;
        end else begin
            /*�A�[�r�g���[�V����*/
            case (owner)
            
            
                                

