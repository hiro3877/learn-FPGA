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

//Xr[1] = 0.707107 , Xi[1] = -0.707107
`define W1_real        16'sb0000000010110101
`define W1_imag        16'sb1111111101001011

//Xr[2] = 0.000000 , Xi[2] = -1.000000
`define W2_real        16'sb0000000000000000
`define W2_imag        16'sb1111111100000000

//Xr[3] = -0.707107 , Xi[3] = -0.707107
`define W3_real        16'sb1111111101001011
`define W3_imag        16'sb1111111101001011

//Xr[4] = -1.000000 , Xi[4] = -0.000000
`define W4_real        16'sb1111111100000000
`define W4_imag        16'sb0000000000000000

//Xr[5] = -0.707107 , Xi[5] = 0.707107
`define W5_real        16'sb1111111101001011
`define W5_imag        16'sb0000000010110101

//Xr[6] = -0.000000 , Xi[6] = 1.000000
`define W6_real        16'sb0000000000000000
`define W6_imag        16'sb0000000100000000

    
`endif