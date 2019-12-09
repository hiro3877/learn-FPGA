#include <stdio.h>
#include <math.h>
#include <string.h>

#include <iostream>
#include <bitset>

#define NUM 8

#define BNUM 2

#define DNumBus 7
#define WBus 16
#define CalcTempBus 16
#define MuxCountBus 9
#define WCountBus 9

	////////////////////floating point => fixed point///////////////////
	int binary1(double in ,int out[WBus]){
		
		int i;
		int x[WBus] = {0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0};
		double inbuf;
		int flag = 0;
		
		if(in < 0){
			inbuf = (-1)*in;
			if(inbuf == 1){
				//out = x;
				memcpy(out,x,sizeof(x));
			}else{
				
				for(i=0; i<(WBus/2); i++){
					out[i] = 0;
				}
				
				for(i=0; i<(WBus/2); i++){
					inbuf *= 2;
					if (inbuf >= 1){
						out[i+(WBus/2)] = 1;
						inbuf -= 1;
					}else{
						out[i+(WBus/2)] = 0;
					}
				}
			}
			
			//2 no hosuu
			for(i=0; i<WBus; i++){
				if(out[i] == 0){
					out[i] = 1;
				}else{
					out[i] = 0;
				}
			}
			
			i = (WBus - 1);
			while(flag == 0){
				if(out[i] == 0){
					out[i] = 1;
					flag = 1;
				}else{
					out[i] = 0;
				}
				i--;
			}
				
			
		}else{
			if(in == 1){
				//out = x;
				memcpy(out,x,sizeof(x));
			}else{
				
				for(i=0; i<(WBus/2); i++){
					out[i] = 0;
				}
				
				for(i=0; i<(WBus/2); i++){
					in *= 2;
					if (in >= 1){
						out[i+(WBus/2)] = 1;
						in -= 1;
					}else{
						out[i+(WBus/2)] = 0;
					}
				}
			}
		}
	}
	////////////////////////////////end////////////////////////////////////

int main(){
	int n2 = NUM/2;	
	int n3 = log2(NUM);		//number of layer
	int n1 = n2*n2*n3;		//number of calclation unit
	
	double S1r,S1i,S3r,S3i,S5r,S5i,S7r,S7i,Tr,Ti,Q;
	int i,j,k,K,L,I,J,L1,L2;
	int IR,I1,I2,I3,I4,JR,J1,J2;
	int KF,K1,K2,K3,K4,IP,JP,IM,KI,JM,KJ,KK;
	
	
	printf("\n/*******************rotation factor********************/\n\n");
	
	char SIG;
	double P=6.283185307179584/NUM;	
	double Xr[NUM],Xi[NUM];
	double Cr,Ci;
	
	int out[WBus];
	
	SIG=-1;
	Cr=cos(P);
    Ci=SIG*sin(P);
    Xr[0]=1;
    Xi[0]=0;
	
	for(I=0;I<NUM-1;I++){
		Xr[I+1]=Xr[I]*Cr-Xi[I]*Ci;
		Xi[I+1]=Xr[I]*Ci+Xi[I]*Cr;
		
		printf("//Xr[%d] = %lf , Xi[%d] = %lf\n",I,Xr[I],I,Xi[I]);
		
		
		binary1(Xr[I],out);
		printf("`define W%d_real        16'sb",I);
		for(k=0; k<WBus; k++){
			printf("%d",out[k]);
		}
		printf("\n");
		
		binary1(Xi[I],out);
		printf("`define W%d_imag        16'sb",I);
		for(k=0; k<WBus; k++){
			printf("%d",out[k]);
		}
		printf("\n\n");
	}
	/********************end**********************/
	
	printf("/********************top in out*************************/\n");
	
	/******************in out*******************/
	/*
	printf("input wire		clk,\n\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("input wire signed [`InBus]		in_%d_%d_r,\n",i,j);
			printf("input wire signed [`InBus]		in_%d_%d_i,\n",i,j);
		}
	}
	
	printf("\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("output wire signed [`OutBus]		out_%d_%d_r,\n",i,j);
			printf("output wire signed [`OutBus]		out_%d_%d_i,\n",i,j);
		}
	}
	
	printf("\n");
	*/
	
	
	/****************************************temp*****************************************/
	
	printf("/************************temp in out***********************/\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`InBus]		in_%d_%d_r;\n",i,j);
			printf("wire signed [`InBus]		in_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`OutBus]		out_%d_%d_r;\n",i,j);
			printf("wire signed [`OutBus]		out_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	
	printf("/************************temp MUX butterfly***********************/\n");
	
	for(i=1;i<=n3;i++){
		for(j=1;j<=NUM;j++){
			for(k=1;k<=NUM;k++){
				printf("wire signed [`CalcTempBus]          temp_m%d_%d_%d_r;\n",i,j,k);
				printf("wire signed [`CalcTempBus]          temp_m%d_%d_%d_i;\n",i,j,k);
			}
		}
	}
	
	printf("\n");
	
	for(i=1;i<=n3;i++){
		for(j=1;j<=NUM;j++){
			for(k=1;k<=NUM;k++){
				printf("wire signed [`CalcTempBus]          temp_b%d_%d_%d_r;\n",i,j,k);
				printf("wire signed [`CalcTempBus]          temp_b%d_%d_%d_i;\n",i,j,k);
			}
		}
	}
	
	printf("\n");
			
	/*
	for(i=1;i<=n1;i++){
		for(j=1;j<=BNUM;j++){
			for(k=1;k<=BNUM;k++){
				printf("wire signed [`CalcTempBus]          temp_m%d_%d_%d_r;\n",i,j,k);
				printf("wire signed [`CalcTempBus]          temp_m%d_%d_%d_i;\n",i,j,k);
			}
		}
	}
	
	printf("\n");
	
	for(i=1;i<=n1;i++){
		for(j=1;j<=BNUM;j++){
			for(k=1;k<=BNUM;k++){
				printf("wire signed [`CalcTempBus]          temp_b%d_%d_%d_r;\n",i,j,k);
				printf("wire signed [`CalcTempBus]          temp_b%d_%d_%d_i;\n",i,j,k);
			}
		}
	}
	
	printf("\n");
	*/
	
	printf("/******************port map******************/\n");
	
	int add1 = 1;
	int add2 = 0;		//layer number
	int add3 = 1;
	
	
	for(L=0;L<n3;L++){
	  add3 = 1;
	  
	  K1=1<<(n3-L);
	  K2=K1/2;
	  K3=NUM/K1;
	  K4=K3*2;
	  for(IP=0;IP<K2;IP++){
		  I1=IP*K4;
		  for(JP=0;JP<K2;JP++){
			  J1=JP*K4;
			  for(I=0;I<K3;I++){
				  IR=I+I1;
				  IM=IR+K3;
				  KI=I*K2;
				  for(J=0;J<K3;J++){
					  JR=J+J1;
					  JM=JR+K3;
					  KJ=J*K2;
					  KK=KI+KJ;
					  
					  //printf("(%d,%d) , (%d,%d) , (%d,%d) , (%d,%d) , (%d,%d,%d)\n",IR,JR,IR,JM,IM,JR,IM,JM,KJ,KI,KK);
					  
					  
					  /*
					  if((add1%(n2*n2)) == 1){
						  add2++;
					  }
					  
					  if((add3%((n2*n2)+1)) == 0){
						  add3 = 1;
					  }
					  */
					  
					  
					  if(add1<=(n2*n2)){
					  
						printf("MULT MULT%d (clk,in_%d_%d_r,in_%d_%d_i,in_%d_%d_r,in_%d_%d_i,in_%d_%d_r,in_%d_%d_i,in_%d_%d_r,in_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,`W%d_real,`W%d_imag,`W%d_real,`W%d_imag,`W%d_real,`W%d_imag);\n",add1,IR+1,JR+1,IR+1,JR+1,IR+1,JM+1,IR+1,JM+1,IM+1,JR+1,IM+1,JR+1,IM+1,JM+1,IM+1,JM+1,L+1,IR+1,JR+1,L+1,IR+1,JR+1,L+1,IR+1,JM+1,L+1,IR+1,JM+1,L+1,IM+1,JR+1,L+1,IM+1,JR+1,L+1,IM+1,JM+1,L+1,IM+1,JM+1,KJ,KJ,KI,KI,KK,KK);
						
					  }else{
						  
						printf("MULT MULT%d (clk,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,`W%d_real,`W%d_imag,`W%d_real,`W%d_imag,`W%d_real,`W%d_imag);\n",add1,L+1-1,IR+1,JR+1,L+1-1,IR+1,JR+1,L+1-1,IR+1,JM+1,L+1-1,IR+1,JM+1,L+1-1,IM+1,JR+1,L+1-1,IM+1,JR+1,L+1-1,IM+1,JM+1,L+1-1,IM+1,JM+1,L+1,IR+1,JR+1,L+1,IR+1,JR+1,L+1,IR+1,JM+1,L+1,IR+1,JM+1,L+1,IM+1,JR+1,L+1,IM+1,JR+1,L+1,IM+1,JM+1,L+1,IM+1,JM+1,KJ,KJ,KI,KI,KK,KK);
						
					  }
					  
					  printf("butterfly butterfly%d (clk,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i);\n",add1,L+1,IR+1,JR+1,L+1,IR+1,JR+1,L+1,IR+1,JM+1,L+1,IR+1,JM+1,L+1,IM+1,JR+1,L+1,IM+1,JR+1,L+1,IM+1,JM+1,L+1,IM+1,JM+1,L+1,IR+1,JR+1,L+1,IR+1,JR+1,L+1,IR+1,JM+1,L+1,IR+1,JM+1,L+1,IM+1,JR+1,L+1,IM+1,JR+1,L+1,IM+1,JM+1,L+1,IM+1,JM+1);
					  
						add1++;
					  
						if((((4*add2)+4) % NUM) == 0){
							add2 = 0;
							add3++;
						}else{
							add2++;
						}
				  }
			  }
		  }
	  }
  }
  
  printf("\n");
  
  /*
  
  printf("\n");
  
  add1=1;
  add2=0;
  add3=1;
  
	for(i=1;i<=n3;i++){
		add3 = 1;
		for(j=1;j<=n2;j++){
			for(k=1;k<=n2;k++){
				printf("butterfly butterfly%d (clk,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_m%d_%d_%d_r,temp_m%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i,temp_b%d_%d_%d_r,temp_b%d_%d_%d_i);\n",add1,i,add3,(4*add2)+1,i,add3,(4*add2)+1,i,add3,(4*add2)+2,i,add3,(4*add2)+2,i,add3,(4*add2)+3,i,add3,(4*add2)+3,i,add3,(4*add2)+4,i,add3,(4*add2)+4,i,add3,(4*add2)+1,i,add3,(4*add2)+1,i,add3,(4*add2)+2,i,add3,(4*add2)+2,i,add3,(4*add2)+3,i,add3,(4*add2)+3,i,add3,(4*add2)+4,i,add3,(4*add2)+4);
				add1++;
				if((((4*add2)+4) % NUM) == 0){
					add2 = 0;
					add3++;
				}else{
					add2++;
				}
			}
		}
	}
  
  printf("\n");
  
  
  
  	/******************in out assgin*******************/
	printf("/******************in out assgin*******************/\n\n");
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("assign in_%d_%d_r = in_r;\n",i,j);
			printf("assign in_%d_%d_i = in_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("assign out_%d_%d_r = temp_b%d_%d_%d_r;\n",i,j,n3,i,j);
			printf("assign out_%d_%d_i = temp_b%d_%d_%d_i;\n",i,j,n3,i,j);
		}
	}
	
	printf("\n");
	
	
	printf("/*********************sim*************************/\n");
	
	/*
	
	printf ("\n");
	
	printf("reg		clk;\n\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("reg signed [`InBus]		in_%d_%d_r;\n",i,j);
			printf("reg signed [`InBus]		in_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`OutBus]		out_%d_%d_r;\n",i,j);
			printf("wire signed [`OutBus]		out_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	printf("top sim (clk,");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("in_%d_%d_r,in_%d_%d_i,",i,j,i,j);
		}
	}
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("out_%d_%d_r,out_%d_%d_i,",i,j,i,j);
		}
	}
	
	printf(");");
	
	printf("\n\n");
	
	int decimal;
	int binary;
	int base;
	int sim1 = 0;
	for(i=1; i<=NUM; i++){
		for(j=1; j<=NUM; j++){
		
		
		//decimal => binary
		decimal = i+j;
		binary = 0;
		base = 1;
		while(decimal>0){
			binary = binary + ( decimal % 2 ) * base;
			decimal = decimal / 2;
			base = base * 10;
		}
		//end decimal => binary
		
		printf("in_%d_%d_r <= 16'sb%08d%08d;\n",i,j,binary,sim1);
		printf("in_%d_%d_i <= 16'sb%08d%08d;\n\n",i,j,binary,sim1);
		
		
		
		/*
		if(i < 20){
			printf("#10//%d\n",i);
			printf("in_r <= 16'sb00000010%08d;\n",sim1);
			printf("in_i <= 16'sb00000001%08d;\n\n",sim1);
		}else{
			printf("#10//%d\n",i);
			printf("in_r <= 16'sb00000000%08d;\n",sim1);
			printf("in_i <= 16'sb00000000%08d;\n\n",sim1);
		}
		*/
		
	
	


	return 0;
}