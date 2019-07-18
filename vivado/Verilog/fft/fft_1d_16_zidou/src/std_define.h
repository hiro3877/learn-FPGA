
`ifndef __STDDEF_HEADER__
    `define __STDDEF_HEADER__

    /**************define Bus Width***************/
    `define InBus               15:0
    `define OutBus              15:0
    
    `define WBus                15:0
    
    `define CalcTempBus         15:0
    `define MultBus             31:0
    
    `define MuxControlBus       1:0
    
    `define DNumBus             3:0
    
    `define WCountBus           5:0
    `define MuxCountBus         5:0
    
    /**********define rotation factor*************/
    `define W0_real        16'sb0000000100000000
    `define W0_imag        16'sb0000000000000000
    `define W1_real        16'sb0000000011001100
    `define W1_imag        16'sb1111111110011110
    `define W2_real        16'sb0000000010110101
    `define W2_imag        16'sb1111111101001011
    `define W3_real        16'sb0000000001100001
    `define W3_imag        16'sb1111111100010011
    `define W4_real        16'sb0000000000000000
    `define W4_imag        16'sb1111111100000000
    `define W5_real        16'sb1111111110011110
    `define W5_imag        16'sb1111111100010011
    `define W6_real        16'sb1111111101001011
    `define W6_imag        16'sb1111111101001011
    `define W7_real        16'sb1111111100010011
    `define W7_imag        16'sb1111111110011110
    `define W8_real        16'sb0000000100000000
    `define W8_imag        16'sb0000000000000000
    `define W9_real        16'sb0000000010110101
    `define W9_imag        16'sb1111111101001011
    `define W10_real        16'sb0000000000000000
    `define W10_imag        16'sb1111111100000000
    `define W11_real        16'sb1111111101001011
    `define W11_imag        16'sb1111111101001011
    `define W12_real        16'sb0000000100000000
    `define W12_imag        16'sb0000000000000000
    `define W13_real        16'sb0000000010110101
    `define W13_imag        16'sb1111111101001011
    `define W14_real        16'sb0000000000000000
    `define W14_imag        16'sb1111111100000000
    `define W15_real        16'sb1111111101001011
    `define W15_imag        16'sb1111111101001011
    `define W16_real        16'sb0000000100000000
    `define W16_imag        16'sb0000000000000000
    `define W17_real        16'sb0000000000000000
    `define W17_imag        16'sb1111111100000000
    `define W18_real        16'sb0000000100000000
    `define W18_imag        16'sb0000000000000000
    `define W19_real        16'sb0000000000000000
    `define W19_imag        16'sb1111111100000000
    `define W20_real        16'sb0000000100000000
    `define W20_imag        16'sb0000000000000000
    `define W21_real        16'sb0000000000000000
    `define W21_imag        16'sb1111111100000000
    `define W22_real        16'sb0000000100000000
    `define W22_imag        16'sb0000000000000000
    `define W23_real        16'sb0000000000000000
    `define W23_imag        16'sb1111111100000000
    `define W24_real        16'sb0000000100000000
    `define W24_imag        16'sb0000000000000000
    `define W25_real        16'sb0000000100000000
    `define W25_imag        16'sb0000000000000000
    `define W26_real        16'sb0000000100000000
    `define W26_imag        16'sb0000000000000000
    `define W27_real        16'sb0000000100000000
    `define W27_imag        16'sb0000000000000000
    `define W28_real        16'sb0000000100000000
    `define W28_imag        16'sb0000000000000000
    `define W29_real        16'sb0000000100000000
    `define W29_imag        16'sb0000000000000000
    `define W30_real        16'sb0000000100000000
    `define W30_imag        16'sb0000000000000000
    `define W31_real        16'sb0000000100000000
    `define W31_imag        16'sb0000000000000000
`endif