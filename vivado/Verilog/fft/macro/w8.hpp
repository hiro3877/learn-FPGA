#ifndef	W8_HPP
#define W8_HPP


int w8(int wnum1[][4],long long int outr[][4],long long int outi[][4]){
	
	int i,j;
	
	for(i=0; i<3; i++){
		for(j=0; j<4; j++){
			switch(wnum1[i][j]){
				case 0:
					outr[i][j] = 100000000LL;
					outi[i][j] = 0LL;
					break;
				case 1:
					outr[i][j] = 10110101LL;
					outi[i][j] = 1111111101001011LL;
					break;
				case 2:
					outr[i][j] = 0LL;
					outi[i][j] = 1111111100000000LL;
					break;
				case 3:
					outr[i][j] = 1111111101001011LL;
					outi[i][j] = 1111111101001011LL;
					break;
			}
		}
	}
	
	return 0;
}

#endif 