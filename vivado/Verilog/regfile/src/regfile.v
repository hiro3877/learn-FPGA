`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 20:15:06
// Design Name: 
// Module Name: regfile
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


`include "./regfile.h"



module regfile(

	/****************�N���b�N�@&�@���Z�b�g*************/
	input wire		clk,				//�N���b�N
	input wire		reset_,				//�񓯊����Z�b�g�i���_���j
	
	/*************�A�N�Z�X�C���^�[�t�F�[�X***********/
	input wire  [`AddrBus] addr,		//�A�h���X
	input wire  [`DataBus] d_in,		//���̓f�[�^
	input wire			   we_,			//�������ݗL���i���_���j
	output wire [`DataBus] d_out		//�o�̓f�[�^
);
	
	/*************�����M��******************/
	reg [`DataBus]		ff[`DATA_D-1:0];	//���W�X�^�z��
	integer				i;   				//�C�e���[�^
	
	/*************�ǂݏo���A�N�Z�X*************/
	assign d_out = ff[addr];
	
	/*************�������݃A�N�Z�X*************/
	always @(posedge clk or negedge reset_)begin
		if(reset_ == `ENABLE_)begin
		/* �񓯊����Z�b�g */
		  for (i=0;i<`DATA_D;i=i+1)begin
			ff[i] <= #1 {`DATA_W{1'b0}};
		  end
	   end else begin
		/* �������݃A�N�Z�X */
		  if (we_ == `ENABLE_)begin
			ff[addr] <= #1 d_in;
		  end
	   end
	end

endmodule