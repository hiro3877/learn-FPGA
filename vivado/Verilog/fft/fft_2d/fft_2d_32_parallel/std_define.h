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
    
    `define WCountBus           4:0
    `define MuxCountBus         4:0
    
    /**********define rotation factor*************/

//Xr[0] = 1.000000 , Xi[0] = 0.000000
    `define W0_real        16'sb0000000100000000
    `define W0_imag        16'sb0000000000000000
    
    //Xr[1] = 0.980785 , Xi[1] = -0.195090
    `define W1_real        16'sb0000000011111011
    `define W1_imag        16'sb1111111111001111
    
    //Xr[2] = 0.923880 , Xi[2] = -0.382683
    `define W2_real        16'sb0000000011101100
    `define W2_imag        16'sb1111111110011111
    
    //Xr[3] = 0.831470 , Xi[3] = -0.555570
    `define W3_real        16'sb0000000011010100
    `define W3_imag        16'sb1111111101110010
    
    //Xr[4] = 0.707107 , Xi[4] = -0.707107
    `define W4_real        16'sb0000000010110101
    `define W4_imag        16'sb1111111101001011
    
    //Xr[5] = 0.555570 , Xi[5] = -0.831470
    `define W5_real        16'sb0000000010001110
    `define W5_imag        16'sb1111111100101100
    
    //Xr[6] = 0.382683 , Xi[6] = -0.923880
    `define W6_real        16'sb0000000001100001
    `define W6_imag        16'sb1111111100010100
    
    //Xr[7] = 0.195090 , Xi[7] = -0.980785
    `define W7_real        16'sb0000000000110001
    `define W7_imag        16'sb1111111100000101
    
    //Xr[8] = 0.000000 , Xi[8] = -1.000000
    `define W8_real        16'sb0000000000000000
    `define W8_imag        16'sb1111111100000001
    
    //Xr[9] = -0.195090 , Xi[9] = -0.980785
    `define W9_real        16'sb1111111111001111
    `define W9_imag        16'sb1111111100000101
    
    //Xr[10] = -0.382683 , Xi[10] = -0.923880
    `define W10_real        16'sb1111111110011111
    `define W10_imag        16'sb1111111100010100
    
    //Xr[11] = -0.555570 , Xi[11] = -0.831470
    `define W11_real        16'sb1111111101110010
    `define W11_imag        16'sb1111111100101100
    
    //Xr[12] = -0.707107 , Xi[12] = -0.707107
    `define W12_real        16'sb1111111101001011
    `define W12_imag        16'sb1111111101001011
    
    //Xr[13] = -0.831470 , Xi[13] = -0.555570
    `define W13_real        16'sb1111111100101100
    `define W13_imag        16'sb1111111101110010
    
    //Xr[14] = -0.923880 , Xi[14] = -0.382683
    `define W14_real        16'sb1111111100010100
    `define W14_imag        16'sb1111111110011111
    
    //Xr[15] = -0.980785 , Xi[15] = -0.195090
    `define W15_real        16'sb1111111100000101
    `define W15_imag        16'sb1111111111001111
    
    //Xr[16] = -1.000000 , Xi[16] = -0.000000
    `define W16_real        16'sb1111111100000001
    `define W16_imag        16'sb0000000000000000
    
    //Xr[17] = -0.980785 , Xi[17] = 0.195090
    `define W17_real        16'sb1111111100000101
    `define W17_imag        16'sb0000000000110001
    
    //Xr[18] = -0.923880 , Xi[18] = 0.382683
    `define W18_real        16'sb1111111100010100
    `define W18_imag        16'sb0000000001100001
    
    //Xr[19] = -0.831470 , Xi[19] = 0.555570
    `define W19_real        16'sb1111111100101100
    `define W19_imag        16'sb0000000010001110
    
    //Xr[20] = -0.707107 , Xi[20] = 0.707107
    `define W20_real        16'sb1111111101001011
    `define W20_imag        16'sb0000000010110101
    
    //Xr[21] = -0.555570 , Xi[21] = 0.831470
    `define W21_real        16'sb1111111101110010
    `define W21_imag        16'sb0000000011010100
    
    //Xr[22] = -0.382683 , Xi[22] = 0.923880
    `define W22_real        16'sb1111111110011111
    `define W22_imag        16'sb0000000011101100
    
    //Xr[23] = -0.195090 , Xi[23] = 0.980785
    `define W23_real        16'sb1111111111001111
    `define W23_imag        16'sb0000000011111011
    
    //Xr[24] = -0.000000 , Xi[24] = 1.000000
    `define W24_real        16'sb0000000000000000
    `define W24_imag        16'sb0000000011111111
    
    //Xr[25] = 0.195090 , Xi[25] = 0.980785
    `define W25_real        16'sb0000000000110001
    `define W25_imag        16'sb0000000011111011
    
    //Xr[26] = 0.382683 , Xi[26] = 0.923880
    `define W26_real        16'sb0000000001100001
    `define W26_imag        16'sb0000000011101100
    
    //Xr[27] = 0.555570 , Xi[27] = 0.831470
    `define W27_real        16'sb0000000010001110
    `define W27_imag        16'sb0000000011010100
    
    //Xr[28] = 0.707107 , Xi[28] = 0.707107
    `define W28_real        16'sb0000000010110101
    `define W28_imag        16'sb0000000010110101
    
    //Xr[29] = 0.831470 , Xi[29] = 0.555570
    `define W29_real        16'sb0000000011010100
    `define W29_imag        16'sb0000000010001110
    
    //Xr[30] = 0.923880 , Xi[30] = 0.382683
    `define W30_real        16'sb0000000011101100
    `define W30_imag        16'sb0000000001100001
    
`endif