
`ifndef __STDDEF_HEADER__
    `define __STDDEF_HEADER__

    /**************define Bus Width***************/
    `define InBus               15:0
    `define OutBus              15:0
    
    `define WBus                15:0
    
    `define CalcTempBus         15:0
    `define MultBus             15:0
    
    /**********define rotation factor*************/
     `define W0_real        16'b0000000100000000        //1.0 (00000001.00000000)
     `define W0_imag        16'b0000000000000000        //0.0 (00000000.00000000)
     
     `define W1_real        16'b0000000000000000        //0.0 (00000000.00000000)
     `define W1_imag        16'b1111111100000000        //-1.0 (11111111.00000000)
     
     `define W2_real        16'b0000000100000000        //1.0 (00000001.00000000)
     `define W2_imag        16'b0000000000000000        //0.0 (00000000.00000000)
     
     `define W3_real        16'b0000000100000000        //1.0 (00000001.00000000)
     `define W3_imag        16'b0000000000000000        //0.0 (00000000.00000000)
                       
`endif