`ifndef __STDDEF_HEADER__      //�C���N���[�h�K�[�h
    `define __STDDEF_HEADER__
    
    `define  HIGH                  1'b1        //HIGH
    `define  LOW                   1'b0        //LOW
    
    `define  DISABLE               1'b0        //�����i���_���j
    `define  ENABLE                1'b1        //�L���i���_���j
    `define  DISABLE_              1'b1        //�����i���_���j
    `define  ENABLE_               1'b0        //�L���i���_���j
    
    `define  READ                  1'b1        //�ǂݏo��
    `define  WRITE                 1'b0        //��������
    
    `define  LSB                   0           //�ŉ��ʃr�b�g
    `define  BYTE_DATA_W           8           //�f�[�^���i�o�C�g�j
    `define  BYTE_MSB              7           //�ŏ�ʃr�b�g�i�o�C�g�j
    `define  ByteDataBus           7:0         //�f�[�^�o�X�i�o�C�g�j
    
    `define  WORD_DATA_W           32          //�f�[�^���i���[�h�j
    `define  WORD_MSB              31          //�ŏ�ʃr�b�g�i���[�h�j
    `define  WordDataBus           32:0        //�f�[�^�o�X�i���[�h�j
    `define  WORD_ADDR_W           30          //�A�h���X��
    `define  WARD_ADDR_MSB         29          //�ŏ�ʃr�b�g
    `define  WardAssrBus           29:0        //�A�h���X�o�X
    
    `define  BYTE_OFFSET_W         2           //�I�t�Z�b�g��
    `define  ByteOffsetBus         1:0         //�I�t�Z�b�g�o�X
    `define  WardAddrLoc           31:2        //���[�h�A�h���X�̈ʒu
    `define  ByteOffsetLoc         1:0         //�o�C�g�I�t�Z�b�g�̈ʒu
    `define  BYTE_OFFSET_WORD      2'b00       //���[�h���E

`endif
        
        
        
            
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        