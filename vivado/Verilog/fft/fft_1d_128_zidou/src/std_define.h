
`ifndef __STDDEF_HEADER__
    `define __STDDEF_HEADER__

    /**************define Bus Width***************/
    `define InBus               15:0
    `define OutBus              15:0
    
    `define WBus                15:0
    
    `define CalcTempBus         15:0
    `define MultBus             31:0
    
    `define MuxControlBus       1:0
    
    `define DNumBus             6:0
    
    `define WCountBus           8:0
    `define MuxCountBus         8:0
    
    /**********define rotation factor*************/
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W0_real        16'sb0000000100000000
    `define W0_imag        16'sb0000000000000000
    //wcalc_r = 0.998795 , wcalc_i = -0.049068
    `define W1_real        16'sb0000000011111111
    `define W1_imag        16'sb1111111111110100
    //wcalc_r = 0.995185 , wcalc_i = -0.098017
    `define W2_real        16'sb0000000011111110
    `define W2_imag        16'sb1111111111100111
    //wcalc_r = 0.989177 , wcalc_i = -0.146730
    `define W3_real        16'sb0000000011111101
    `define W3_imag        16'sb1111111111011011
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W4_real        16'sb0000000011111011
    `define W4_imag        16'sb1111111111001111
    //wcalc_r = 0.970031 , wcalc_i = -0.242980
    `define W5_real        16'sb0000000011111000
    `define W5_imag        16'sb1111111111000010
    //wcalc_r = 0.956940 , wcalc_i = -0.290285
    `define W6_real        16'sb0000000011110100
    `define W6_imag        16'sb1111111110110110
    //wcalc_r = 0.941544 , wcalc_i = -0.336890
    `define W7_real        16'sb0000000011110001
    `define W7_imag        16'sb1111111110101010
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W8_real        16'sb0000000011101100
    `define W8_imag        16'sb1111111110011111
    //wcalc_r = 0.903989 , wcalc_i = -0.427555
    `define W9_real        16'sb0000000011100111
    `define W9_imag        16'sb1111111110010011
    //wcalc_r = 0.881921 , wcalc_i = -0.471397
    `define W10_real        16'sb0000000011100001
    `define W10_imag        16'sb1111111110001000
    //wcalc_r = 0.857729 , wcalc_i = -0.514103
    `define W11_real        16'sb0000000011011011
    `define W11_imag        16'sb1111111101111101
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W12_real        16'sb0000000011010100
    `define W12_imag        16'sb1111111101110010
    //wcalc_r = 0.803208 , wcalc_i = -0.595699
    `define W13_real        16'sb0000000011001101
    `define W13_imag        16'sb1111111101101000
    //wcalc_r = 0.773010 , wcalc_i = -0.634393
    `define W14_real        16'sb0000000011000101
    `define W14_imag        16'sb1111111101011110
    //wcalc_r = 0.740951 , wcalc_i = -0.671559
    `define W15_real        16'sb0000000010111101
    `define W15_imag        16'sb1111111101010101
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W16_real        16'sb0000000010110101
    `define W16_imag        16'sb1111111101001011
    //wcalc_r = 0.671559 , wcalc_i = -0.740951
    `define W17_real        16'sb0000000010101011
    `define W17_imag        16'sb1111111101000011
    //wcalc_r = 0.634393 , wcalc_i = -0.773010
    `define W18_real        16'sb0000000010100010
    `define W18_imag        16'sb1111111100111011
    //wcalc_r = 0.595699 , wcalc_i = -0.803208
    `define W19_real        16'sb0000000010011000
    `define W19_imag        16'sb1111111100110011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W20_real        16'sb0000000010001110
    `define W20_imag        16'sb1111111100101100
    //wcalc_r = 0.514103 , wcalc_i = -0.857729
    `define W21_real        16'sb0000000010000011
    `define W21_imag        16'sb1111111100100101
    //wcalc_r = 0.471397 , wcalc_i = -0.881921
    `define W22_real        16'sb0000000001111000
    `define W22_imag        16'sb1111111100011111
    //wcalc_r = 0.427555 , wcalc_i = -0.903989
    `define W23_real        16'sb0000000001101101
    `define W23_imag        16'sb1111111100011001
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W24_real        16'sb0000000001100001
    `define W24_imag        16'sb1111111100010100
    //wcalc_r = 0.336890 , wcalc_i = -0.941544
    `define W25_real        16'sb0000000001010110
    `define W25_imag        16'sb1111111100001111
    //wcalc_r = 0.290285 , wcalc_i = -0.956940
    `define W26_real        16'sb0000000001001010
    `define W26_imag        16'sb1111111100001100
    //wcalc_r = 0.242980 , wcalc_i = -0.970031
    `define W27_real        16'sb0000000000111110
    `define W27_imag        16'sb1111111100001000
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W28_real        16'sb0000000000110001
    `define W28_imag        16'sb1111111100000101
    //wcalc_r = 0.146730 , wcalc_i = -0.989177
    `define W29_real        16'sb0000000000100101
    `define W29_imag        16'sb1111111100000011
    //wcalc_r = 0.098017 , wcalc_i = -0.995185
    `define W30_real        16'sb0000000000011001
    `define W30_imag        16'sb1111111100000010
    //wcalc_r = 0.049068 , wcalc_i = -0.998795
    `define W31_real        16'sb0000000000001100
    `define W31_imag        16'sb1111111100000001
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W32_real        16'sb0000000000000000
    `define W32_imag        16'sb1111111100000000
    //wcalc_r = -0.049068 , wcalc_i = -0.998795
    `define W33_real        16'sb1111111111110100
    `define W33_imag        16'sb1111111100000001
    //wcalc_r = -0.098017 , wcalc_i = -0.995185
    `define W34_real        16'sb1111111111100111
    `define W34_imag        16'sb1111111100000010
    //wcalc_r = -0.146730 , wcalc_i = -0.989177
    `define W35_real        16'sb1111111111011011
    `define W35_imag        16'sb1111111100000011
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W36_real        16'sb1111111111001111
    `define W36_imag        16'sb1111111100000101
    //wcalc_r = -0.242980 , wcalc_i = -0.970031
    `define W37_real        16'sb1111111111000010
    `define W37_imag        16'sb1111111100001000
    //wcalc_r = -0.290285 , wcalc_i = -0.956940
    `define W38_real        16'sb1111111110110110
    `define W38_imag        16'sb1111111100001100
    //wcalc_r = -0.336890 , wcalc_i = -0.941544
    `define W39_real        16'sb1111111110101010
    `define W39_imag        16'sb1111111100001111
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W40_real        16'sb1111111110011111
    `define W40_imag        16'sb1111111100010100
    //wcalc_r = -0.427555 , wcalc_i = -0.903989
    `define W41_real        16'sb1111111110010011
    `define W41_imag        16'sb1111111100011001
    //wcalc_r = -0.471397 , wcalc_i = -0.881921
    `define W42_real        16'sb1111111110001000
    `define W42_imag        16'sb1111111100011111
    //wcalc_r = -0.514103 , wcalc_i = -0.857729
    `define W43_real        16'sb1111111101111101
    `define W43_imag        16'sb1111111100100101
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W44_real        16'sb1111111101110010
    `define W44_imag        16'sb1111111100101100
    //wcalc_r = -0.595699 , wcalc_i = -0.803208
    `define W45_real        16'sb1111111101101000
    `define W45_imag        16'sb1111111100110011
    //wcalc_r = -0.634393 , wcalc_i = -0.773010
    `define W46_real        16'sb1111111101011110
    `define W46_imag        16'sb1111111100111011
    //wcalc_r = -0.671559 , wcalc_i = -0.740951
    `define W47_real        16'sb1111111101010101
    `define W47_imag        16'sb1111111101000011
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W48_real        16'sb1111111101001011
    `define W48_imag        16'sb1111111101001011
    //wcalc_r = -0.740951 , wcalc_i = -0.671559
    `define W49_real        16'sb1111111101000011
    `define W49_imag        16'sb1111111101010101
    //wcalc_r = -0.773010 , wcalc_i = -0.634393
    `define W50_real        16'sb1111111100111011
    `define W50_imag        16'sb1111111101011110
    //wcalc_r = -0.803208 , wcalc_i = -0.595699
    `define W51_real        16'sb1111111100110011
    `define W51_imag        16'sb1111111101101000
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W52_real        16'sb1111111100101100
    `define W52_imag        16'sb1111111101110010
    //wcalc_r = -0.857729 , wcalc_i = -0.514103
    `define W53_real        16'sb1111111100100101
    `define W53_imag        16'sb1111111101111101
    //wcalc_r = -0.881921 , wcalc_i = -0.471397
    `define W54_real        16'sb1111111100011111
    `define W54_imag        16'sb1111111110001000
    //wcalc_r = -0.903989 , wcalc_i = -0.427555
    `define W55_real        16'sb1111111100011001
    `define W55_imag        16'sb1111111110010011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W56_real        16'sb1111111100010100
    `define W56_imag        16'sb1111111110011111
    //wcalc_r = -0.941544 , wcalc_i = -0.336890
    `define W57_real        16'sb1111111100001111
    `define W57_imag        16'sb1111111110101010
    //wcalc_r = -0.956940 , wcalc_i = -0.290285
    `define W58_real        16'sb1111111100001100
    `define W58_imag        16'sb1111111110110110
    //wcalc_r = -0.970031 , wcalc_i = -0.242980
    `define W59_real        16'sb1111111100001000
    `define W59_imag        16'sb1111111111000010
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W60_real        16'sb1111111100000101
    `define W60_imag        16'sb1111111111001111
    //wcalc_r = -0.989177 , wcalc_i = -0.146730
    `define W61_real        16'sb1111111100000011
    `define W61_imag        16'sb1111111111011011
    //wcalc_r = -0.995185 , wcalc_i = -0.098017
    `define W62_real        16'sb1111111100000010
    `define W62_imag        16'sb1111111111100111
    //wcalc_r = -0.998795 , wcalc_i = -0.049068
    `define W63_real        16'sb1111111100000001
    `define W63_imag        16'sb1111111111110100
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W64_real        16'sb0000000100000000
    `define W64_imag        16'sb0000000000000000
    //wcalc_r = 0.995185 , wcalc_i = -0.098017
    `define W65_real        16'sb0000000011111110
    `define W65_imag        16'sb1111111111100111
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W66_real        16'sb0000000011111011
    `define W66_imag        16'sb1111111111001111
    //wcalc_r = 0.956940 , wcalc_i = -0.290285
    `define W67_real        16'sb0000000011110100
    `define W67_imag        16'sb1111111110110110
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W68_real        16'sb0000000011101100
    `define W68_imag        16'sb1111111110011111
    //wcalc_r = 0.881921 , wcalc_i = -0.471397
    `define W69_real        16'sb0000000011100001
    `define W69_imag        16'sb1111111110001000
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W70_real        16'sb0000000011010100
    `define W70_imag        16'sb1111111101110010
    //wcalc_r = 0.773010 , wcalc_i = -0.634393
    `define W71_real        16'sb0000000011000101
    `define W71_imag        16'sb1111111101011110
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W72_real        16'sb0000000010110101
    `define W72_imag        16'sb1111111101001011
    //wcalc_r = 0.634393 , wcalc_i = -0.773010
    `define W73_real        16'sb0000000010100010
    `define W73_imag        16'sb1111111100111011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W74_real        16'sb0000000010001110
    `define W74_imag        16'sb1111111100101100
    //wcalc_r = 0.471397 , wcalc_i = -0.881921
    `define W75_real        16'sb0000000001111000
    `define W75_imag        16'sb1111111100011111
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W76_real        16'sb0000000001100001
    `define W76_imag        16'sb1111111100010100
    //wcalc_r = 0.290285 , wcalc_i = -0.956940
    `define W77_real        16'sb0000000001001010
    `define W77_imag        16'sb1111111100001100
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W78_real        16'sb0000000000110001
    `define W78_imag        16'sb1111111100000101
    //wcalc_r = 0.098017 , wcalc_i = -0.995185
    `define W79_real        16'sb0000000000011001
    `define W79_imag        16'sb1111111100000010
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W80_real        16'sb0000000000000000
    `define W80_imag        16'sb1111111100000000
    //wcalc_r = -0.098017 , wcalc_i = -0.995185
    `define W81_real        16'sb1111111111100111
    `define W81_imag        16'sb1111111100000010
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W82_real        16'sb1111111111001111
    `define W82_imag        16'sb1111111100000101
    //wcalc_r = -0.290285 , wcalc_i = -0.956940
    `define W83_real        16'sb1111111110110110
    `define W83_imag        16'sb1111111100001100
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W84_real        16'sb1111111110011111
    `define W84_imag        16'sb1111111100010100
    //wcalc_r = -0.471397 , wcalc_i = -0.881921
    `define W85_real        16'sb1111111110001000
    `define W85_imag        16'sb1111111100011111
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W86_real        16'sb1111111101110010
    `define W86_imag        16'sb1111111100101100
    //wcalc_r = -0.634393 , wcalc_i = -0.773010
    `define W87_real        16'sb1111111101011110
    `define W87_imag        16'sb1111111100111011
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W88_real        16'sb1111111101001011
    `define W88_imag        16'sb1111111101001011
    //wcalc_r = -0.773010 , wcalc_i = -0.634393
    `define W89_real        16'sb1111111100111011
    `define W89_imag        16'sb1111111101011110
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W90_real        16'sb1111111100101100
    `define W90_imag        16'sb1111111101110010
    //wcalc_r = -0.881921 , wcalc_i = -0.471397
    `define W91_real        16'sb1111111100011111
    `define W91_imag        16'sb1111111110001000
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W92_real        16'sb1111111100010100
    `define W92_imag        16'sb1111111110011111
    //wcalc_r = -0.956940 , wcalc_i = -0.290285
    `define W93_real        16'sb1111111100001100
    `define W93_imag        16'sb1111111110110110
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W94_real        16'sb1111111100000101
    `define W94_imag        16'sb1111111111001111
    //wcalc_r = -0.995185 , wcalc_i = -0.098017
    `define W95_real        16'sb1111111100000010
    `define W95_imag        16'sb1111111111100111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W96_real        16'sb0000000100000000
    `define W96_imag        16'sb0000000000000000
    //wcalc_r = 0.995185 , wcalc_i = -0.098017
    `define W97_real        16'sb0000000011111110
    `define W97_imag        16'sb1111111111100111
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W98_real        16'sb0000000011111011
    `define W98_imag        16'sb1111111111001111
    //wcalc_r = 0.956940 , wcalc_i = -0.290285
    `define W99_real        16'sb0000000011110100
    `define W99_imag        16'sb1111111110110110
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W100_real        16'sb0000000011101100
    `define W100_imag        16'sb1111111110011111
    //wcalc_r = 0.881921 , wcalc_i = -0.471397
    `define W101_real        16'sb0000000011100001
    `define W101_imag        16'sb1111111110001000
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W102_real        16'sb0000000011010100
    `define W102_imag        16'sb1111111101110010
    //wcalc_r = 0.773010 , wcalc_i = -0.634393
    `define W103_real        16'sb0000000011000101
    `define W103_imag        16'sb1111111101011110
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W104_real        16'sb0000000010110101
    `define W104_imag        16'sb1111111101001011
    //wcalc_r = 0.634393 , wcalc_i = -0.773010
    `define W105_real        16'sb0000000010100010
    `define W105_imag        16'sb1111111100111011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W106_real        16'sb0000000010001110
    `define W106_imag        16'sb1111111100101100
    //wcalc_r = 0.471397 , wcalc_i = -0.881921
    `define W107_real        16'sb0000000001111000
    `define W107_imag        16'sb1111111100011111
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W108_real        16'sb0000000001100001
    `define W108_imag        16'sb1111111100010100
    //wcalc_r = 0.290285 , wcalc_i = -0.956940
    `define W109_real        16'sb0000000001001010
    `define W109_imag        16'sb1111111100001100
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W110_real        16'sb0000000000110001
    `define W110_imag        16'sb1111111100000101
    //wcalc_r = 0.098017 , wcalc_i = -0.995185
    `define W111_real        16'sb0000000000011001
    `define W111_imag        16'sb1111111100000010
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W112_real        16'sb0000000000000000
    `define W112_imag        16'sb1111111100000000
    //wcalc_r = -0.098017 , wcalc_i = -0.995185
    `define W113_real        16'sb1111111111100111
    `define W113_imag        16'sb1111111100000010
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W114_real        16'sb1111111111001111
    `define W114_imag        16'sb1111111100000101
    //wcalc_r = -0.290285 , wcalc_i = -0.956940
    `define W115_real        16'sb1111111110110110
    `define W115_imag        16'sb1111111100001100
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W116_real        16'sb1111111110011111
    `define W116_imag        16'sb1111111100010100
    //wcalc_r = -0.471397 , wcalc_i = -0.881921
    `define W117_real        16'sb1111111110001000
    `define W117_imag        16'sb1111111100011111
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W118_real        16'sb1111111101110010
    `define W118_imag        16'sb1111111100101100
    //wcalc_r = -0.634393 , wcalc_i = -0.773010
    `define W119_real        16'sb1111111101011110
    `define W119_imag        16'sb1111111100111011
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W120_real        16'sb1111111101001011
    `define W120_imag        16'sb1111111101001011
    //wcalc_r = -0.773010 , wcalc_i = -0.634393
    `define W121_real        16'sb1111111100111011
    `define W121_imag        16'sb1111111101011110
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W122_real        16'sb1111111100101100
    `define W122_imag        16'sb1111111101110010
    //wcalc_r = -0.881921 , wcalc_i = -0.471397
    `define W123_real        16'sb1111111100011111
    `define W123_imag        16'sb1111111110001000
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W124_real        16'sb1111111100010100
    `define W124_imag        16'sb1111111110011111
    //wcalc_r = -0.956940 , wcalc_i = -0.290285
    `define W125_real        16'sb1111111100001100
    `define W125_imag        16'sb1111111110110110
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W126_real        16'sb1111111100000101
    `define W126_imag        16'sb1111111111001111
    //wcalc_r = -0.995185 , wcalc_i = -0.098017
    `define W127_real        16'sb1111111100000010
    `define W127_imag        16'sb1111111111100111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W128_real        16'sb0000000100000000
    `define W128_imag        16'sb0000000000000000
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W129_real        16'sb0000000011111011
    `define W129_imag        16'sb1111111111001111
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W130_real        16'sb0000000011101100
    `define W130_imag        16'sb1111111110011111
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W131_real        16'sb0000000011010100
    `define W131_imag        16'sb1111111101110010
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W132_real        16'sb0000000010110101
    `define W132_imag        16'sb1111111101001011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W133_real        16'sb0000000010001110
    `define W133_imag        16'sb1111111100101100
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W134_real        16'sb0000000001100001
    `define W134_imag        16'sb1111111100010100
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W135_real        16'sb0000000000110001
    `define W135_imag        16'sb1111111100000101
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W136_real        16'sb0000000000000000
    `define W136_imag        16'sb1111111100000000
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W137_real        16'sb1111111111001111
    `define W137_imag        16'sb1111111100000101
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W138_real        16'sb1111111110011111
    `define W138_imag        16'sb1111111100010100
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W139_real        16'sb1111111101110010
    `define W139_imag        16'sb1111111100101100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W140_real        16'sb1111111101001011
    `define W140_imag        16'sb1111111101001011
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W141_real        16'sb1111111100101100
    `define W141_imag        16'sb1111111101110010
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W142_real        16'sb1111111100010100
    `define W142_imag        16'sb1111111110011111
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W143_real        16'sb1111111100000101
    `define W143_imag        16'sb1111111111001111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W144_real        16'sb0000000100000000
    `define W144_imag        16'sb0000000000000000
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W145_real        16'sb0000000011111011
    `define W145_imag        16'sb1111111111001111
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W146_real        16'sb0000000011101100
    `define W146_imag        16'sb1111111110011111
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W147_real        16'sb0000000011010100
    `define W147_imag        16'sb1111111101110010
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W148_real        16'sb0000000010110101
    `define W148_imag        16'sb1111111101001011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W149_real        16'sb0000000010001110
    `define W149_imag        16'sb1111111100101100
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W150_real        16'sb0000000001100001
    `define W150_imag        16'sb1111111100010100
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W151_real        16'sb0000000000110001
    `define W151_imag        16'sb1111111100000101
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W152_real        16'sb0000000000000000
    `define W152_imag        16'sb1111111100000000
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W153_real        16'sb1111111111001111
    `define W153_imag        16'sb1111111100000101
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W154_real        16'sb1111111110011111
    `define W154_imag        16'sb1111111100010100
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W155_real        16'sb1111111101110010
    `define W155_imag        16'sb1111111100101100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W156_real        16'sb1111111101001011
    `define W156_imag        16'sb1111111101001011
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W157_real        16'sb1111111100101100
    `define W157_imag        16'sb1111111101110010
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W158_real        16'sb1111111100010100
    `define W158_imag        16'sb1111111110011111
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W159_real        16'sb1111111100000101
    `define W159_imag        16'sb1111111111001111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W160_real        16'sb0000000100000000
    `define W160_imag        16'sb0000000000000000
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W161_real        16'sb0000000011111011
    `define W161_imag        16'sb1111111111001111
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W162_real        16'sb0000000011101100
    `define W162_imag        16'sb1111111110011111
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W163_real        16'sb0000000011010100
    `define W163_imag        16'sb1111111101110010
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W164_real        16'sb0000000010110101
    `define W164_imag        16'sb1111111101001011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W165_real        16'sb0000000010001110
    `define W165_imag        16'sb1111111100101100
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W166_real        16'sb0000000001100001
    `define W166_imag        16'sb1111111100010100
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W167_real        16'sb0000000000110001
    `define W167_imag        16'sb1111111100000101
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W168_real        16'sb0000000000000000
    `define W168_imag        16'sb1111111100000000
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W169_real        16'sb1111111111001111
    `define W169_imag        16'sb1111111100000101
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W170_real        16'sb1111111110011111
    `define W170_imag        16'sb1111111100010100
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W171_real        16'sb1111111101110010
    `define W171_imag        16'sb1111111100101100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W172_real        16'sb1111111101001011
    `define W172_imag        16'sb1111111101001011
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W173_real        16'sb1111111100101100
    `define W173_imag        16'sb1111111101110010
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W174_real        16'sb1111111100010100
    `define W174_imag        16'sb1111111110011111
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W175_real        16'sb1111111100000101
    `define W175_imag        16'sb1111111111001111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W176_real        16'sb0000000100000000
    `define W176_imag        16'sb0000000000000000
    //wcalc_r = 0.980785 , wcalc_i = -0.195090
    `define W177_real        16'sb0000000011111011
    `define W177_imag        16'sb1111111111001111
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W178_real        16'sb0000000011101100
    `define W178_imag        16'sb1111111110011111
    //wcalc_r = 0.831470 , wcalc_i = -0.555570
    `define W179_real        16'sb0000000011010100
    `define W179_imag        16'sb1111111101110010
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W180_real        16'sb0000000010110101
    `define W180_imag        16'sb1111111101001011
    //wcalc_r = 0.555570 , wcalc_i = -0.831470
    `define W181_real        16'sb0000000010001110
    `define W181_imag        16'sb1111111100101100
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W182_real        16'sb0000000001100001
    `define W182_imag        16'sb1111111100010100
    //wcalc_r = 0.195090 , wcalc_i = -0.980785
    `define W183_real        16'sb0000000000110001
    `define W183_imag        16'sb1111111100000101
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W184_real        16'sb0000000000000000
    `define W184_imag        16'sb1111111100000000
    //wcalc_r = -0.195090 , wcalc_i = -0.980785
    `define W185_real        16'sb1111111111001111
    `define W185_imag        16'sb1111111100000101
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W186_real        16'sb1111111110011111
    `define W186_imag        16'sb1111111100010100
    //wcalc_r = -0.555570 , wcalc_i = -0.831470
    `define W187_real        16'sb1111111101110010
    `define W187_imag        16'sb1111111100101100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W188_real        16'sb1111111101001011
    `define W188_imag        16'sb1111111101001011
    //wcalc_r = -0.831470 , wcalc_i = -0.555570
    `define W189_real        16'sb1111111100101100
    `define W189_imag        16'sb1111111101110010
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W190_real        16'sb1111111100010100
    `define W190_imag        16'sb1111111110011111
    //wcalc_r = -0.980785 , wcalc_i = -0.195090
    `define W191_real        16'sb1111111100000101
    `define W191_imag        16'sb1111111111001111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W192_real        16'sb0000000100000000
    `define W192_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W193_real        16'sb0000000011101100
    `define W193_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W194_real        16'sb0000000010110101
    `define W194_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W195_real        16'sb0000000001100001
    `define W195_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W196_real        16'sb0000000000000000
    `define W196_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W197_real        16'sb1111111110011111
    `define W197_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W198_real        16'sb1111111101001011
    `define W198_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W199_real        16'sb1111111100010100
    `define W199_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W200_real        16'sb0000000100000000
    `define W200_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W201_real        16'sb0000000011101100
    `define W201_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W202_real        16'sb0000000010110101
    `define W202_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W203_real        16'sb0000000001100001
    `define W203_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W204_real        16'sb0000000000000000
    `define W204_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W205_real        16'sb1111111110011111
    `define W205_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W206_real        16'sb1111111101001011
    `define W206_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W207_real        16'sb1111111100010100
    `define W207_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W208_real        16'sb0000000100000000
    `define W208_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W209_real        16'sb0000000011101100
    `define W209_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W210_real        16'sb0000000010110101
    `define W210_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W211_real        16'sb0000000001100001
    `define W211_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W212_real        16'sb0000000000000000
    `define W212_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W213_real        16'sb1111111110011111
    `define W213_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W214_real        16'sb1111111101001011
    `define W214_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W215_real        16'sb1111111100010100
    `define W215_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W216_real        16'sb0000000100000000
    `define W216_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W217_real        16'sb0000000011101100
    `define W217_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W218_real        16'sb0000000010110101
    `define W218_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W219_real        16'sb0000000001100001
    `define W219_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W220_real        16'sb0000000000000000
    `define W220_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W221_real        16'sb1111111110011111
    `define W221_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W222_real        16'sb1111111101001011
    `define W222_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W223_real        16'sb1111111100010100
    `define W223_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W224_real        16'sb0000000100000000
    `define W224_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W225_real        16'sb0000000011101100
    `define W225_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W226_real        16'sb0000000010110101
    `define W226_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W227_real        16'sb0000000001100001
    `define W227_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W228_real        16'sb0000000000000000
    `define W228_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W229_real        16'sb1111111110011111
    `define W229_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W230_real        16'sb1111111101001011
    `define W230_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W231_real        16'sb1111111100010100
    `define W231_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W232_real        16'sb0000000100000000
    `define W232_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W233_real        16'sb0000000011101100
    `define W233_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W234_real        16'sb0000000010110101
    `define W234_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W235_real        16'sb0000000001100001
    `define W235_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W236_real        16'sb0000000000000000
    `define W236_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W237_real        16'sb1111111110011111
    `define W237_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W238_real        16'sb1111111101001011
    `define W238_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W239_real        16'sb1111111100010100
    `define W239_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W240_real        16'sb0000000100000000
    `define W240_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W241_real        16'sb0000000011101100
    `define W241_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W242_real        16'sb0000000010110101
    `define W242_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W243_real        16'sb0000000001100001
    `define W243_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W244_real        16'sb0000000000000000
    `define W244_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W245_real        16'sb1111111110011111
    `define W245_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W246_real        16'sb1111111101001011
    `define W246_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W247_real        16'sb1111111100010100
    `define W247_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W248_real        16'sb0000000100000000
    `define W248_imag        16'sb0000000000000000
    //wcalc_r = 0.923880 , wcalc_i = -0.382683
    `define W249_real        16'sb0000000011101100
    `define W249_imag        16'sb1111111110011111
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W250_real        16'sb0000000010110101
    `define W250_imag        16'sb1111111101001011
    //wcalc_r = 0.382683 , wcalc_i = -0.923880
    `define W251_real        16'sb0000000001100001
    `define W251_imag        16'sb1111111100010100
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W252_real        16'sb0000000000000000
    `define W252_imag        16'sb1111111100000000
    //wcalc_r = -0.382683 , wcalc_i = -0.923880
    `define W253_real        16'sb1111111110011111
    `define W253_imag        16'sb1111111100010100
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W254_real        16'sb1111111101001011
    `define W254_imag        16'sb1111111101001011
    //wcalc_r = -0.923880 , wcalc_i = -0.382683
    `define W255_real        16'sb1111111100010100
    `define W255_imag        16'sb1111111110011111
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W256_real        16'sb0000000100000000
    `define W256_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W257_real        16'sb0000000010110101
    `define W257_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W258_real        16'sb0000000000000000
    `define W258_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W259_real        16'sb1111111101001011
    `define W259_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W260_real        16'sb0000000100000000
    `define W260_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W261_real        16'sb0000000010110101
    `define W261_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W262_real        16'sb0000000000000000
    `define W262_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W263_real        16'sb1111111101001011
    `define W263_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W264_real        16'sb0000000100000000
    `define W264_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W265_real        16'sb0000000010110101
    `define W265_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W266_real        16'sb0000000000000000
    `define W266_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W267_real        16'sb1111111101001011
    `define W267_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W268_real        16'sb0000000100000000
    `define W268_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W269_real        16'sb0000000010110101
    `define W269_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W270_real        16'sb0000000000000000
    `define W270_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W271_real        16'sb1111111101001011
    `define W271_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W272_real        16'sb0000000100000000
    `define W272_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W273_real        16'sb0000000010110101
    `define W273_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W274_real        16'sb0000000000000000
    `define W274_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W275_real        16'sb1111111101001011
    `define W275_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W276_real        16'sb0000000100000000
    `define W276_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W277_real        16'sb0000000010110101
    `define W277_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W278_real        16'sb0000000000000000
    `define W278_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W279_real        16'sb1111111101001011
    `define W279_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W280_real        16'sb0000000100000000
    `define W280_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W281_real        16'sb0000000010110101
    `define W281_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W282_real        16'sb0000000000000000
    `define W282_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W283_real        16'sb1111111101001011
    `define W283_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W284_real        16'sb0000000100000000
    `define W284_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W285_real        16'sb0000000010110101
    `define W285_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W286_real        16'sb0000000000000000
    `define W286_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W287_real        16'sb1111111101001011
    `define W287_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W288_real        16'sb0000000100000000
    `define W288_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W289_real        16'sb0000000010110101
    `define W289_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W290_real        16'sb0000000000000000
    `define W290_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W291_real        16'sb1111111101001011
    `define W291_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W292_real        16'sb0000000100000000
    `define W292_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W293_real        16'sb0000000010110101
    `define W293_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W294_real        16'sb0000000000000000
    `define W294_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W295_real        16'sb1111111101001011
    `define W295_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W296_real        16'sb0000000100000000
    `define W296_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W297_real        16'sb0000000010110101
    `define W297_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W298_real        16'sb0000000000000000
    `define W298_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W299_real        16'sb1111111101001011
    `define W299_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W300_real        16'sb0000000100000000
    `define W300_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W301_real        16'sb0000000010110101
    `define W301_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W302_real        16'sb0000000000000000
    `define W302_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W303_real        16'sb1111111101001011
    `define W303_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W304_real        16'sb0000000100000000
    `define W304_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W305_real        16'sb0000000010110101
    `define W305_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W306_real        16'sb0000000000000000
    `define W306_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W307_real        16'sb1111111101001011
    `define W307_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W308_real        16'sb0000000100000000
    `define W308_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W309_real        16'sb0000000010110101
    `define W309_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W310_real        16'sb0000000000000000
    `define W310_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W311_real        16'sb1111111101001011
    `define W311_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W312_real        16'sb0000000100000000
    `define W312_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W313_real        16'sb0000000010110101
    `define W313_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W314_real        16'sb0000000000000000
    `define W314_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W315_real        16'sb1111111101001011
    `define W315_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W316_real        16'sb0000000100000000
    `define W316_imag        16'sb0000000000000000
    //wcalc_r = 0.707107 , wcalc_i = -0.707107
    `define W317_real        16'sb0000000010110101
    `define W317_imag        16'sb1111111101001011
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W318_real        16'sb0000000000000000
    `define W318_imag        16'sb1111111100000000
    //wcalc_r = -0.707107 , wcalc_i = -0.707107
    `define W319_real        16'sb1111111101001011
    `define W319_imag        16'sb1111111101001011
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W320_real        16'sb0000000100000000
    `define W320_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W321_real        16'sb0000000000000000
    `define W321_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W322_real        16'sb0000000100000000
    `define W322_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W323_real        16'sb0000000000000000
    `define W323_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W324_real        16'sb0000000100000000
    `define W324_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W325_real        16'sb0000000000000000
    `define W325_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W326_real        16'sb0000000100000000
    `define W326_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W327_real        16'sb0000000000000000
    `define W327_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W328_real        16'sb0000000100000000
    `define W328_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W329_real        16'sb0000000000000000
    `define W329_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W330_real        16'sb0000000100000000
    `define W330_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W331_real        16'sb0000000000000000
    `define W331_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W332_real        16'sb0000000100000000
    `define W332_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W333_real        16'sb0000000000000000
    `define W333_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W334_real        16'sb0000000100000000
    `define W334_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W335_real        16'sb0000000000000000
    `define W335_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W336_real        16'sb0000000100000000
    `define W336_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W337_real        16'sb0000000000000000
    `define W337_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W338_real        16'sb0000000100000000
    `define W338_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W339_real        16'sb0000000000000000
    `define W339_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W340_real        16'sb0000000100000000
    `define W340_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W341_real        16'sb0000000000000000
    `define W341_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W342_real        16'sb0000000100000000
    `define W342_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W343_real        16'sb0000000000000000
    `define W343_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W344_real        16'sb0000000100000000
    `define W344_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W345_real        16'sb0000000000000000
    `define W345_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W346_real        16'sb0000000100000000
    `define W346_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W347_real        16'sb0000000000000000
    `define W347_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W348_real        16'sb0000000100000000
    `define W348_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W349_real        16'sb0000000000000000
    `define W349_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W350_real        16'sb0000000100000000
    `define W350_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W351_real        16'sb0000000000000000
    `define W351_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W352_real        16'sb0000000100000000
    `define W352_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W353_real        16'sb0000000000000000
    `define W353_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W354_real        16'sb0000000100000000
    `define W354_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W355_real        16'sb0000000000000000
    `define W355_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W356_real        16'sb0000000100000000
    `define W356_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W357_real        16'sb0000000000000000
    `define W357_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W358_real        16'sb0000000100000000
    `define W358_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W359_real        16'sb0000000000000000
    `define W359_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W360_real        16'sb0000000100000000
    `define W360_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W361_real        16'sb0000000000000000
    `define W361_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W362_real        16'sb0000000100000000
    `define W362_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W363_real        16'sb0000000000000000
    `define W363_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W364_real        16'sb0000000100000000
    `define W364_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W365_real        16'sb0000000000000000
    `define W365_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W366_real        16'sb0000000100000000
    `define W366_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W367_real        16'sb0000000000000000
    `define W367_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W368_real        16'sb0000000100000000
    `define W368_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W369_real        16'sb0000000000000000
    `define W369_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W370_real        16'sb0000000100000000
    `define W370_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W371_real        16'sb0000000000000000
    `define W371_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W372_real        16'sb0000000100000000
    `define W372_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W373_real        16'sb0000000000000000
    `define W373_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W374_real        16'sb0000000100000000
    `define W374_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W375_real        16'sb0000000000000000
    `define W375_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W376_real        16'sb0000000100000000
    `define W376_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W377_real        16'sb0000000000000000
    `define W377_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W378_real        16'sb0000000100000000
    `define W378_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W379_real        16'sb0000000000000000
    `define W379_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W380_real        16'sb0000000100000000
    `define W380_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W381_real        16'sb0000000000000000
    `define W381_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W382_real        16'sb0000000100000000
    `define W382_imag        16'sb0000000000000000
    //wcalc_r = 0.000000 , wcalc_i = -1.000000
    `define W383_real        16'sb0000000000000000
    `define W383_imag        16'sb1111111100000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W384_real        16'sb0000000100000000
    `define W384_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W385_real        16'sb0000000100000000
    `define W385_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W386_real        16'sb0000000100000000
    `define W386_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W387_real        16'sb0000000100000000
    `define W387_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W388_real        16'sb0000000100000000
    `define W388_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W389_real        16'sb0000000100000000
    `define W389_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W390_real        16'sb0000000100000000
    `define W390_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W391_real        16'sb0000000100000000
    `define W391_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W392_real        16'sb0000000100000000
    `define W392_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W393_real        16'sb0000000100000000
    `define W393_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W394_real        16'sb0000000100000000
    `define W394_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W395_real        16'sb0000000100000000
    `define W395_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W396_real        16'sb0000000100000000
    `define W396_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W397_real        16'sb0000000100000000
    `define W397_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W398_real        16'sb0000000100000000
    `define W398_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W399_real        16'sb0000000100000000
    `define W399_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W400_real        16'sb0000000100000000
    `define W400_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W401_real        16'sb0000000100000000
    `define W401_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W402_real        16'sb0000000100000000
    `define W402_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W403_real        16'sb0000000100000000
    `define W403_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W404_real        16'sb0000000100000000
    `define W404_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W405_real        16'sb0000000100000000
    `define W405_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W406_real        16'sb0000000100000000
    `define W406_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W407_real        16'sb0000000100000000
    `define W407_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W408_real        16'sb0000000100000000
    `define W408_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W409_real        16'sb0000000100000000
    `define W409_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W410_real        16'sb0000000100000000
    `define W410_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W411_real        16'sb0000000100000000
    `define W411_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W412_real        16'sb0000000100000000
    `define W412_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W413_real        16'sb0000000100000000
    `define W413_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W414_real        16'sb0000000100000000
    `define W414_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W415_real        16'sb0000000100000000
    `define W415_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W416_real        16'sb0000000100000000
    `define W416_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W417_real        16'sb0000000100000000
    `define W417_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W418_real        16'sb0000000100000000
    `define W418_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W419_real        16'sb0000000100000000
    `define W419_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W420_real        16'sb0000000100000000
    `define W420_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W421_real        16'sb0000000100000000
    `define W421_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W422_real        16'sb0000000100000000
    `define W422_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W423_real        16'sb0000000100000000
    `define W423_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W424_real        16'sb0000000100000000
    `define W424_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W425_real        16'sb0000000100000000
    `define W425_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W426_real        16'sb0000000100000000
    `define W426_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W427_real        16'sb0000000100000000
    `define W427_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W428_real        16'sb0000000100000000
    `define W428_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W429_real        16'sb0000000100000000
    `define W429_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W430_real        16'sb0000000100000000
    `define W430_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W431_real        16'sb0000000100000000
    `define W431_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W432_real        16'sb0000000100000000
    `define W432_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W433_real        16'sb0000000100000000
    `define W433_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W434_real        16'sb0000000100000000
    `define W434_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W435_real        16'sb0000000100000000
    `define W435_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W436_real        16'sb0000000100000000
    `define W436_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W437_real        16'sb0000000100000000
    `define W437_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W438_real        16'sb0000000100000000
    `define W438_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W439_real        16'sb0000000100000000
    `define W439_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W440_real        16'sb0000000100000000
    `define W440_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W441_real        16'sb0000000100000000
    `define W441_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W442_real        16'sb0000000100000000
    `define W442_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W443_real        16'sb0000000100000000
    `define W443_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W444_real        16'sb0000000100000000
    `define W444_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W445_real        16'sb0000000100000000
    `define W445_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W446_real        16'sb0000000100000000
    `define W446_imag        16'sb0000000000000000
    //wcalc_r = 1.000000 , wcalc_i = -0.000000
    `define W447_real        16'sb0000000100000000
    `define W447_imag        16'sb0000000000000000
`endif