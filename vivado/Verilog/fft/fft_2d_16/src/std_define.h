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
    
    //Xr[1] = 0.923880 , Xi[1] = -0.382683
    `define W1_real        16'sb0000000011101100
    `define W1_imag        16'sb1111111110011111
    
    //Xr[2] = 0.707107 , Xi[2] = -0.707107
    `define W2_real        16'sb0000000010110101
    `define W2_imag        16'sb1111111101001011
    
    //Xr[3] = 0.382683 , Xi[3] = -0.923880
    `define W3_real        16'sb0000000001100001
    `define W3_imag        16'sb1111111100010100
    
    //Xr[4] = 0.000000 , Xi[4] = -1.000000
    `define W4_real        16'sb0000000000000000
    `define W4_imag        16'sb1111111100000000
    
    //Xr[5] = -0.382683 , Xi[5] = -0.923880
    `define W5_real        16'sb1111111110011111
    `define W5_imag        16'sb1111111100010100
    
    //Xr[6] = -0.707107 , Xi[6] = -0.707107
    `define W6_real        16'sb1111111101001011
    `define W6_imag        16'sb1111111101001011
    
    //Xr[7] = -0.923880 , Xi[7] = -0.382683
    `define W7_real        16'sb1111111100010100
    `define W7_imag        16'sb1111111110011111
    
    //Xr[8] = -1.000000 , Xi[8] = -0.000000
    `define W8_real        16'sb1111111100000000
    `define W8_imag        16'sb0000000000000000
    
    //Xr[9] = -0.923880 , Xi[9] = 0.382683
    `define W9_real        16'sb1111111100010100
    `define W9_imag        16'sb0000000001100001
    
    //Xr[10] = -0.707107 , Xi[10] = 0.707107
    `define W10_real        16'sb1111111101001011
    `define W10_imag        16'sb0000000010110101
    
    //Xr[11] = -0.382683 , Xi[11] = 0.923880
    `define W11_real        16'sb1111111110011111
    `define W11_imag        16'sb0000000011101100
    
    //Xr[12] = -0.000000 , Xi[12] = 1.000000
    `define W12_real        16'sb0000000000000000
    `define W12_imag        16'sb0000000100000000
    
    //Xr[13] = 0.382683 , Xi[13] = 0.923880
    `define W13_real        16'sb0000000001100001
    `define W13_imag        16'sb0000000011101100
    
    //Xr[14] = 0.707107 , Xi[14] = 0.707107
    `define W14_real        16'sb0000000010110101
    `define W14_imag        16'sb0000000010110101

    
`endif