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