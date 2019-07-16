
int w8(int wnum1[][4]){
	
	int i,j;
	
	for(i=0; i<3; i++){
		for(j=0; j<4; j++){
			switch(wnum1[i][j]){
				case 0:
					wnum1[i][j] = 10;
					break;
				case 1:
					wnum1[i][j] = 11;
					break;
				case 2:
					wnum1[i][j] = 12;
					break;
				case 3:
					wnum1[i][j] = 13;
					break;
				case 4:
					wnum1[i][j] = 14;
					break;
				case 5:
					wnum1[i][j] = 15;
					break;
				case 6:
					wnum1[i][j] = 16;
					break;
				case 7:
					wnum1[i][j] = 17;
					break;
			}
		}
	}
	
	return 0;
}