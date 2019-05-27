`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 21:18:26
// Design Name: 
// Module Name: regfile_test
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

`ifndef __REGFILE_HEADER__
    `define __REGFILE_HEADER__
    
    /***********�M�����x��**********/
    `define HIGH            1'b1    //HIGH���x��
    `define LOW             1'b0    //LOW���x��
    
    /**********�_���l************/
    `define ENABLE_        	1'b0    //�L���i���_���j
    `define DISABLE_       1'b1    //�����i���_���j
    
    /*********�f�[�^**************/
    `define DATA_W           32     //�f�[�^�̕�
	`define DataBus          31:0   //�f�[�^�̃o�X
	`define DATA_D           32     //�f�[�^�̐[��
	
	/**********�A�h���X**************/
	`define ADDR_W			 5		//�A�h���X�̕�
	`define AddrBus			 4:0    //�A�h���X�̃o�X
	
`endif


module regfile_test;

    /***********���o�̓|�[�g�̐M��***************/
    // �N���b�N�@&�@���Z�b�g
    reg             clk;               //�N���b�N
    reg             reset_;             //���Z�b�g
    
    // �A�N�Z�X�C���^�[�t�F�[�X
    reg   [`AddrBus] addr;             //�A�h���X
	reg   [`DataBus] d_in;	           //���̓f�[�^
    reg              we_;             //�������ݗL���i���_���j
    wire  [`DataBus] d_out;           //�o�̓f�[�^

	/*************�����M��******************/
	integer			 i;        		  //�C�e���[�^
	
	/**********�V�~�����[�V�����T�C�N���̒�`************/
	parameter      STEP = 100.0000;   //10MHz
	
	/************�N���b�N�̐���*************/
	always #(STEP / 2) begin
	   clk <= ~clk;
	end
	
	/***********�e�X�g���W���[���̃C���X�^���X��**************/
	regfile regfile(
	   .clk    (clk),
	   .reset_  (reset_),
	   .addr   (addr),
	   .d_in   (d_in),
	   .we_    (we_),
	   .d_out  (d_out)
    );
    
    /************�e�X�g�V�[�P���X*************/
    initial begin 
        #0 begin
            clk <= `HIGH;
            reset_ <= `ENABLE_;
            addr <= {`ADDR_W{1'b0}};
            d_in <= {`DATA_W{1'b0}};
            we_ <= `DISABLE_;
        end
        
        #(STEP * 3 /4)
        #STEP begin
            reset_ <= `DISABLE_;
        end
        #STEP begin
            for (i=0; i<`DATA_D; i=i+1)begin
                #STEP begin
                    addr <= i;
                    d_in <= i;
                    we_ <= `ENABLE_;
                end
                #STEP begin
                    addr <= {`ADDR_W{1'b0}};
                    d_in <= {`DATA_W{1'b0}};
                    we_ <= `DISABLE_;
                    if (d_out == i)begin 
                        $display($time," ff[%d] Read/Write Check OK !",i);
                    end else begin
                        $display($time," ff[%d] Read/Write Check NG !",i);
	                end
	            end
	        end
	    end
	    
	# STEP begin
	   $finish;
	end
end
	
endmodule



















