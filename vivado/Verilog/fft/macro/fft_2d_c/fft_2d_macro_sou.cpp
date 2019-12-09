#include <stdio.h>
#include <math.h>
#include <string.h>

#include <iostream>
#include <bitset>

#define NUM 8

#define BNUM 2

#define DNumBus 5
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
	int n4 = n2 * n2;		//1 sou no number of calclation unit
	
	double S1r,S1i,S3r,S3i,S5r,S5i,S7r,S7i,Tr,Ti,Q;
	int i,j,k,K,L,I,J,L1,L2;
	int IR,I1,I2,I3,I4,JR,J1,J2;
	int KF,K1,K2,K3,K4,IP,JP,IM,KI,JM,KJ,KK;
	
	int add1,add2;
	
	
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
	
	printf("/************************top***********************/\n");
	
	printf("/************************temp in out***********************/\n");
	
	printf("/************************input => input_selecter***********************/\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`InBus]		in_%d_%d_r;\n",i,j);
			printf("wire signed [`InBus]		in_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	printf("/************************output***********************/\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`OutBus]		out_%d_%d_r;\n",i,j);
			printf("wire signed [`OutBus]		out_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	printf("/************************input_selecter => Radix2-2***********************/\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`OutBus]		I_out_%d_%d_r;\n",i,j);
			printf("wire signed [`OutBus]		I_out_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	printf("/************************W_real , W_imag***********************/\n");
	
	for(i=1;i<=n4;i++){
		for(j=2;j<=4;j++){
			printf("wire signed [`WBus]		W_real_%d_%d;\n",i,j);
			printf("wire signed [`WBus]		W_imag_%d_%d;\n",i,j);
		}
	}
	
	printf("\n");
	
	printf("/************************Radix2-2 => output_selecter***********************/\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("wire signed [`CalcTempBus]		temp_b_%d_%d_r;\n",i,j);
			printf("wire signed [`CalcTempBus]		temp_b_%d_%d_i;\n",i,j);
		}
	}
	
	printf("\n");
	
	printf("/************************port map***********************/\n");
	
	printf("/************************input delay***********************/\n");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("delay delay_in_%d_%d_r (clk,%d'd%d,in_r,in_%d_%d_r);\n",i,j,DNumBus,((i-1)*NUM)+j,i,j);
			printf("delay delay_in_%d_%d_i (clk,%d'd%d,in_i,in_%d_%d_i);\n",i,j,DNumBus,((i-1)*NUM)+j,i,j);
		}
	}
	
	printf("\n");
	
	printf("/************************input => input_selecter***********************/\n");
	
	printf("input_selecter_top input_selecter (clk,");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("in_%d_%d_r,in_%d_%d_i,",i,j,i,j);
		}
	}
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			printf("temp_b_%d_%d_r,temp_b_%d_%d_i,",i,j,i,j);
		}
	}
	
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			if(i==NUM && j==NUM){
				printf("I_out_%d_%d_r,I_out_%d_%d_i);\n",i,j,i,j);
	
			}else{
				printf("I_out_%d_%d_r,I_out_%d_%d_i,",i,j,i,j);
			}
		}
	}
	
	
	printf("\n");
	
	printf("/************************W_selecter => temp***********************/\n");
	
	printf("W_selecter_top W_selecter (clk,");
	
	for(i=1;i<=n4;i++){
		for(j=2;j<=4;j++){
			if(i==n4 && j==4){
				printf("W_real_%d_%d,W_imag_%d_%d);\n",i,j,i,j);
	
			}else{
				printf("W_real_%d_%d,W_imag_%d_%d,",i,j,i,j);
			}
		}
	}
	
	printf("\n");
	
	printf("/************************input_selecter => Radix2-2***********************/\n");
	
	add1 = 1;
	add2 = 1;
	for(i=1;i<=n4;i++){
		
		if(add2==(NUM+1)){
			add2 = 1;
			add1++;
		}
		
		printf("radix2_2 radix2_2_%d (clk,I_out_%d_%d_r,I_out_%d_%d_i,I_out_%d_%d_r,I_out_%d_%d_i,I_out_%d_%d_r,I_out_%d_%d_i,I_out_%d_%d_r,I_out_%d_%d_i,temp_b_%d_%d_r,temp_b_%d_%d_i,temp_b_%d_%d_r,temp_b_%d_%d_i,temp_b_%d_%d_r,temp_b_%d_%d_i,temp_b_%d_%d_r,temp_b_%d_%d_i,W_real_%d_2,W_imag_%d_2,W_real_%d_3,W_imag_%d_3,W_real_%d_4,W_imag_%d_4);\n\n",i,add1,add2,add1,add2,add1,add2+1,add1,add2+1,add1,add2+2,add1,add2+2,add1,add2+3,add1,add2+3,add1,add2,add1,add2,add1,add2+1,add1,add2+1,add1,add2+2,add1,add2+2,add1,add2+3,add1,add2+3,i,i,i,i,i,i);
		
		add2 += 4;
	}

	printf("\n");
	
	
	printf("/************************output delay***********************/\n");//irekae mo yatteru
	
	i=0;
	j=0;
	add1 = 1;
	add2 = 1;
	for(L=0;L<n3;L++){
	  K1=1<<(n3-L);
	  K2=K1/2;
	  K3=NUM/K1;
	  K4=K3*2;
	  for(IP=0;IP<K2;IP++){
		  I1=IP*K4;
		  j++;
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
					  
					  if(L==(n3-1)){ //saigo no sou dake
						
						if(add2==(NUM+1)){
							add2 = 1;
							add1++;
						}
					  
						printf("delay delay_out_%d_%d_r (clk,%d'd%d,temp_b_%d_%d_r,out_%d_%d_r);\n",IR+1,JR+1,DNumBus,(IR*NUM)+JR+1,add1,add2,IR+1,JR+1);
						printf("delay delay_out_%d_%d_i (clk,%d'd%d,temp_b_%d_%d_i,out_%d_%d_i);\n",IR+1,JR+1,DNumBus,(IR*NUM)+JR+1,add1,add2,IR+1,JR+1);
						add2++;
						printf("delay delay_out_%d_%d_r (clk,%d'd%d,temp_b_%d_%d_r,out_%d_%d_r);\n",IR+1,JM+1,DNumBus,(IR*NUM)+JM+1,add1,add2,IR+1,JM+1);
						printf("delay delay_out_%d_%d_i (clk,%d'd%d,temp_b_%d_%d_i,out_%d_%d_i);\n",IR+1,JM+1,DNumBus,(IR*NUM)+JM+1,add1,add2,IR+1,JM+1);
						add2++;
						printf("delay delay_out_%d_%d_r (clk,%d'd%d,temp_b_%d_%d_r,out_%d_%d_r);\n",IM+1,JR+1,DNumBus,(IM*NUM)+JR+1,add1,add2,IM+1,JR+1);
						printf("delay delay_out_%d_%d_i (clk,%d'd%d,temp_b_%d_%d_i,out_%d_%d_i);\n",IM+1,JR+1,DNumBus,(IM*NUM)+JR+1,add1,add2,IM+1,JR+1);
						add2++;
						printf("delay delay_out_%d_%d_r (clk,%d'd%d,temp_b_%d_%d_r,out_%d_%d_r);\n",IM+1,JM+1,DNumBus,(IM*NUM)+JM+1,add1,add2,IM+1,JM+1);
						printf("delay delay_out_%d_%d_i (clk,%d'd%d,temp_b_%d_%d_i,out_%d_%d_i);\n",IM+1,JM+1,DNumBus,(IM*NUM)+JM+1,add1,add2,IM+1,JM+1);
						add2++;
					  
						printf("\n");
					  }
				  }
			  }
		  }
	  }
	}

	printf("/*********************out => mux => out_r,out_i 1clock**************************/\n");
		
	printf("mux mux_r (clk,");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			if(i==NUM && j==NUM){
				printf("out_%d_%d_r,out_r);\n",i,j);
	
			}else{
				printf("out_%d_%d_r,",i,j);
			}
		}
	}

	printf("\n");
	
	printf("mux mux_i (clk,");
	
	for(i=1;i<=NUM;i++){
		for(j=1;j<=NUM;j++){
			if(i==NUM && j==NUM){
				printf("out_%d_%d_i,out_i);\n",i,j);
	
			}else{
				printf("out_%d_%d_i,",i,j);
			}
		}
	}
		
	
		return 0;
}