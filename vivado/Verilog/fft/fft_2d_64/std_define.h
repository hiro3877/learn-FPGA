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
    
    //Xr[1] = 0.995185 , Xi[1] = -0.098017
    `define W1_real        16'sb0000000011111110
    `define W1_imag        16'sb1111111111100111
    
    //Xr[2] = 0.980785 , Xi[2] = -0.195090
    `define W2_real        16'sb0000000011111011
    `define W2_imag        16'sb1111111111001111
    
    //Xr[3] = 0.956940 , Xi[3] = -0.290285
    `define W3_real        16'sb0000000011110100
    `define W3_imag        16'sb1111111110110110
    
    //Xr[4] = 0.923880 , Xi[4] = -0.382683
    `define W4_real        16'sb0000000011101100
    `define W4_imag        16'sb1111111110011111
    
    //Xr[5] = 0.881921 , Xi[5] = -0.471397
    `define W5_real        16'sb0000000011100001
    `define W5_imag        16'sb1111111110001000
    
    //Xr[6] = 0.831470 , Xi[6] = -0.555570
    `define W6_real        16'sb0000000011010100
    `define W6_imag        16'sb1111111101110010
    
    //Xr[7] = 0.773010 , Xi[7] = -0.634393
    `define W7_real        16'sb0000000011000101
    `define W7_imag        16'sb1111111101011110
    
    //Xr[8] = 0.707107 , Xi[8] = -0.707107
    `define W8_real        16'sb0000000010110101
    `define W8_imag        16'sb1111111101001011
    
    //Xr[9] = 0.634393 , Xi[9] = -0.773010
    `define W9_real        16'sb0000000010100010
    `define W9_imag        16'sb1111111100111011
    
    //Xr[10] = 0.555570 , Xi[10] = -0.831470
    `define W10_real        16'sb0000000010001110
    `define W10_imag        16'sb1111111100101100
    
    //Xr[11] = 0.471397 , Xi[11] = -0.881921
    `define W11_real        16'sb0000000001111000
    `define W11_imag        16'sb1111111100011111
    
    //Xr[12] = 0.382683 , Xi[12] = -0.923880
    `define W12_real        16'sb0000000001100001
    `define W12_imag        16'sb1111111100010100
    
    //Xr[13] = 0.290285 , Xi[13] = -0.956940
    `define W13_real        16'sb0000000001001010
    `define W13_imag        16'sb1111111100001100
    
    //Xr[14] = 0.195090 , Xi[14] = -0.980785
    `define W14_real        16'sb0000000000110001
    `define W14_imag        16'sb1111111100000101
    
    //Xr[15] = 0.098017 , Xi[15] = -0.995185
    `define W15_real        16'sb0000000000011001
    `define W15_imag        16'sb1111111100000010
    
    //Xr[16] = 0.000000 , Xi[16] = -1.000000
    `define W16_real        16'sb0000000000000000
    `define W16_imag        16'sb1111111100000001
    
    //Xr[17] = -0.098017 , Xi[17] = -0.995185
    `define W17_real        16'sb1111111111100111
    `define W17_imag        16'sb1111111100000010
    
    //Xr[18] = -0.195090 , Xi[18] = -0.980785
    `define W18_real        16'sb1111111111001111
    `define W18_imag        16'sb1111111100000101
    
    //Xr[19] = -0.290285 , Xi[19] = -0.956940
    `define W19_real        16'sb1111111110110110
    `define W19_imag        16'sb1111111100001100
    
    //Xr[20] = -0.382683 , Xi[20] = -0.923880
    `define W20_real        16'sb1111111110011111
    `define W20_imag        16'sb1111111100010100
    
    //Xr[21] = -0.471397 , Xi[21] = -0.881921
    `define W21_real        16'sb1111111110001000
    `define W21_imag        16'sb1111111100011111
    
    //Xr[22] = -0.555570 , Xi[22] = -0.831470
    `define W22_real        16'sb1111111101110010
    `define W22_imag        16'sb1111111100101100
    
    //Xr[23] = -0.634393 , Xi[23] = -0.773010
    `define W23_real        16'sb1111111101011110
    `define W23_imag        16'sb1111111100111011
    
    //Xr[24] = -0.707107 , Xi[24] = -0.707107
    `define W24_real        16'sb1111111101001011
    `define W24_imag        16'sb1111111101001011
    
    //Xr[25] = -0.773010 , Xi[25] = -0.634393
    `define W25_real        16'sb1111111100111011
    `define W25_imag        16'sb1111111101011110
    
    //Xr[26] = -0.831470 , Xi[26] = -0.555570
    `define W26_real        16'sb1111111100101100
    `define W26_imag        16'sb1111111101110010
    
    //Xr[27] = -0.881921 , Xi[27] = -0.471397
    `define W27_real        16'sb1111111100011111
    `define W27_imag        16'sb1111111110001000
    
    //Xr[28] = -0.923880 , Xi[28] = -0.382683
    `define W28_real        16'sb1111111100010100
    `define W28_imag        16'sb1111111110011111
    
    //Xr[29] = -0.956940 , Xi[29] = -0.290285
    `define W29_real        16'sb1111111100001100
    `define W29_imag        16'sb1111111110110110
    
    //Xr[30] = -0.980785 , Xi[30] = -0.195090
    `define W30_real        16'sb1111111100000101
    `define W30_imag        16'sb1111111111001111
    
    //Xr[31] = -0.995185 , Xi[31] = -0.098017
    `define W31_real        16'sb1111111100000010
    `define W31_imag        16'sb1111111111100111
    
    //Xr[32] = -1.000000 , Xi[32] = -0.000000
    `define W32_real        16'sb1111111100000001
    `define W32_imag        16'sb0000000000000000
    
    //Xr[33] = -0.995185 , Xi[33] = 0.098017
    `define W33_real        16'sb1111111100000010
    `define W33_imag        16'sb0000000000011001
    
    //Xr[34] = -0.980785 , Xi[34] = 0.195090
    `define W34_real        16'sb1111111100000101
    `define W34_imag        16'sb0000000000110001
    
    //Xr[35] = -0.956940 , Xi[35] = 0.290285
    `define W35_real        16'sb1111111100001100
    `define W35_imag        16'sb0000000001001010
    
    //Xr[36] = -0.923880 , Xi[36] = 0.382683
    `define W36_real        16'sb1111111100010100
    `define W36_imag        16'sb0000000001100001
    
    //Xr[37] = -0.881921 , Xi[37] = 0.471397
    `define W37_real        16'sb1111111100011111
    `define W37_imag        16'sb0000000001111000
    
    //Xr[38] = -0.831470 , Xi[38] = 0.555570
    `define W38_real        16'sb1111111100101100
    `define W38_imag        16'sb0000000010001110
    
    //Xr[39] = -0.773010 , Xi[39] = 0.634393
    `define W39_real        16'sb1111111100111011
    `define W39_imag        16'sb0000000010100010
    
    //Xr[40] = -0.707107 , Xi[40] = 0.707107
    `define W40_real        16'sb1111111101001011
    `define W40_imag        16'sb0000000010110101
    
    //Xr[41] = -0.634393 , Xi[41] = 0.773010
    `define W41_real        16'sb1111111101011110
    `define W41_imag        16'sb0000000011000101
    
    //Xr[42] = -0.555570 , Xi[42] = 0.831470
    `define W42_real        16'sb1111111101110010
    `define W42_imag        16'sb0000000011010100
    
    //Xr[43] = -0.471397 , Xi[43] = 0.881921
    `define W43_real        16'sb1111111110001000
    `define W43_imag        16'sb0000000011100001
    
    //Xr[44] = -0.382683 , Xi[44] = 0.923880
    `define W44_real        16'sb1111111110011111
    `define W44_imag        16'sb0000000011101100
    
    //Xr[45] = -0.290285 , Xi[45] = 0.956940
    `define W45_real        16'sb1111111110110110
    `define W45_imag        16'sb0000000011110100
    
    //Xr[46] = -0.195090 , Xi[46] = 0.980785
    `define W46_real        16'sb1111111111001111
    `define W46_imag        16'sb0000000011111011
    
    //Xr[47] = -0.098017 , Xi[47] = 0.995185
    `define W47_real        16'sb1111111111100111
    `define W47_imag        16'sb0000000011111110
    
    //Xr[48] = -0.000000 , Xi[48] = 1.000000
    `define W48_real        16'sb0000000000000000
    `define W48_imag        16'sb0000000011111111
    
    //Xr[49] = 0.098017 , Xi[49] = 0.995185
    `define W49_real        16'sb0000000000011001
    `define W49_imag        16'sb0000000011111110
    
    //Xr[50] = 0.195090 , Xi[50] = 0.980785
    `define W50_real        16'sb0000000000110001
    `define W50_imag        16'sb0000000011111011
    
    //Xr[51] = 0.290285 , Xi[51] = 0.956940
    `define W51_real        16'sb0000000001001010
    `define W51_imag        16'sb0000000011110100
    
    //Xr[52] = 0.382683 , Xi[52] = 0.923880
    `define W52_real        16'sb0000000001100001
    `define W52_imag        16'sb0000000011101100
    
    //Xr[53] = 0.471397 , Xi[53] = 0.881921
    `define W53_real        16'sb0000000001111000
    `define W53_imag        16'sb0000000011100001
    
    //Xr[54] = 0.555570 , Xi[54] = 0.831470
    `define W54_real        16'sb0000000010001110
    `define W54_imag        16'sb0000000011010100
    
    //Xr[55] = 0.634393 , Xi[55] = 0.773010
    `define W55_real        16'sb0000000010100010
    `define W55_imag        16'sb0000000011000101
    
    //Xr[56] = 0.707107 , Xi[56] = 0.707107
    `define W56_real        16'sb0000000010110101
    `define W56_imag        16'sb0000000010110101
    
    //Xr[57] = 0.773010 , Xi[57] = 0.634393
    `define W57_real        16'sb0000000011000101
    `define W57_imag        16'sb0000000010100010
    
    //Xr[58] = 0.831470 , Xi[58] = 0.555570
    `define W58_real        16'sb0000000011010100
    `define W58_imag        16'sb0000000010001110
    
    //Xr[59] = 0.881921 , Xi[59] = 0.471397
    `define W59_real        16'sb0000000011100001
    `define W59_imag        16'sb0000000001111000
    
    //Xr[60] = 0.923880 , Xi[60] = 0.382683
    `define W60_real        16'sb0000000011101100
    `define W60_imag        16'sb0000000001100001
    
    //Xr[61] = 0.956940 , Xi[61] = 0.290285
    `define W61_real        16'sb0000000011110100
    `define W61_imag        16'sb0000000001001010
    
    //Xr[62] = 0.980785 , Xi[62] = 0.195090
    `define W62_real        16'sb0000000011111011
    `define W62_imag        16'sb0000000000110001

    
`endif