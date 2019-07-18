
int w16(int wnum1[][8],long long int outr[][8],long long int outi[][8]){
	
	int i,j;
	
	for(i=0; i<4; i++){
		for(j=0; j<8; j++){
			switch(wnum1[i][j]){
				case 0:// 1 0
					outr[i][j] = 100000000LL;
					outi[i][j] = 0LL;
					break;
				case 1:// 0.9239 -0.3827
					outr[i][j] = 11001100LL;
					outi[i][j] = 1111111110011110LL;
					break;
				case 2://0.7071 -0.7071
					outr[i][j] = 10110101LL;
					outi[i][j] = 1111111101001011LL;
					break;
				case 3://0.3827 -0.9239
					outr[i][j] = 1100001LL;
					outi[i][j] = 1111111100010011LL;
					break;
				case 4://0 -1
					outr[i][j] = 0LL;
					outi[i][j] = 1111111100000000LL;
					break;
				case 5://-0.3827 -0.9239
					outr[i][j] = 1111111110011110LL;
					outi[i][j] = 1111111100010011LL;
					break;
				case 6://-0.7071 -0.7071
					outr[i][j] = 1111111101001011LL;
					outi[i][j] = 1111111101001011LL;
					break;
				case 7://-0.9239 -0.3827
					outr[i][j] = 1111111100010011LL;
					outi[i][j] = 1111111110011110LL;
					break;
			}
		}
	}
	
	return 0;
}