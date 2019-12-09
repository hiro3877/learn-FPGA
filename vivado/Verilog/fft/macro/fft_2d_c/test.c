#include <stdio.h>

int main()
{
	int i,j,k;
	
	for(i=1;i<=4;i++){
		for(j=1;j<=4;j++){
			printf("in_%d_%d_r,in_%d_%d_i,",i,j,i,j);
		}
	}
	
	for(i=1;i<=4;i++){
		for(j=1;j<=4;j++){
			printf("O1_out_%d_%d_r,O1_out_%d_%d_i,",i,j,i,j);
		}
	}
	
	for(i=1;i<=4;i++){
		for(j=1;j<=4;j++){
			printf("O2_out_%d_%d_r,O2_out_%d_%d_i,",i,j,i,j);
		}
	}
		
	printf("\n");
	printf("\n");
	
	for(i=1;i<=4;i++){
		for(j=1;j<=4;j++){
			printf("temp_m1_%d_%d_r,temp_m1_%d_%d_i,",i,j,i,j);
		}
	}
	
	for(i=1;i<=4;i++){
		for(j=1;j<=4;j++){
			printf("temp_b1_%d_%d_r,temp_b1_%d_%d_i,",i,j,i,j);
		}
	}
	
	printf("\n");
	printf("\n");
	
	return 0;
}