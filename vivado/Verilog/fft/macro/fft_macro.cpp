#include <stdio.h>
#include <math.h>
#include <string.h>

#include <iostream>
#include <bitset>

#define NUM 128
#define DNumBus 7
#define WBus 16
#define CalcTempBus 16
#define MuxCountBus 9
#define WCountBus 9

int mult2(int x, int y){
	return x*y;
}

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

int main()
{
	int i,j,k,l,m,n;
	int num2 = NUM/2;

	int dnum = (NUM/2) + 1;		//delay number
	int rnum1 = log2(NUM);		//radix number
	int rnum2 = 2;
	int dtmpnum = log2(NUM) * 4;		//temp_d number
	int muxnum = log2(NUM) * 2;			//temp_mux number
	int dpnum = (NUM /2) +1;			//port map delay number



	printf("*********************delay.v_macro*******************\n\n");
	
	for (i=1; i<=dnum; i++)
	{
		printf("wire signed [`CalcTempBus] temp%d;\n",i);
	}

	printf ("\n");

	for (i=1; i<=dnum; i++)
	{
		if (i==1){
			printf("delay_base delay1 (clk,in,temp1);\n");
		}
		else
			printf("delay_base delay%d (clk,temp%d,temp%d);\n",i,i-1,i);
	}

	printf ("\n");

	for (i=1; i<=dnum; i++)
	{
		printf("%d'd%d	: out <= temp%d;\n",DNumBus,i,i);
	}

	printf ("\n");

	
	printf("*********************top.v_macro*******************\n\n");

	
	for (i=0; i<rnum1; i++)
	{
		for (j=1; j<=rnum2 ; j++)
		{
			printf("wire signed [`CalcTempBus]          temp_r%d_%d_r;\n",i,j);
			printf("wire signed [`CalcTempBus]          temp_r%d_%d_i;\n",i,j);
		}
	}

	printf ("\n");
	
	for (i=0; i<rnum1; i++)
	{
		printf("wire signed [`CalcTempBus]          temp_m%d_r;\n",i);
		printf("wire signed [`CalcTempBus]          temp_m%d_i;\n",i);
	}
	
	printf ("\n");

	for (i=0; i<dtmpnum; i++)
	{
		printf("wire signed [`CalcTempBus]          temp_d%d;\n",i);
	}
	
	printf ("\n");

	for (i=1; i<=muxnum; i++)
	{
		printf("wire signed [`CalcTempBus]          temp_mux%d; \n",i);
	}
	
	printf ("\n");

	for (i=1; i<=rnum1; i++)
	{
		printf("wire [`MuxControlBus]               temp_muxc%d;\n",i);
	}
	
	printf ("\n");

	for (i=1; i<=rnum1; i++)
	{
		printf("wire signed [`WBus]                 temp_w%d_r;\n",i);
		printf("wire signed [`WBus]                 temp_w%d_i;\n",i);
	}
	
	printf ("\n");
	
	printf("*********************port map*******************\n\n");
	
	for (i=1; i<=rnum1; i++)
	{
		printf("MUX_control%d MUX_control%d (clk,temp_muxc%d);\n",i,i,i);
	}
	
	printf ("\n");
	
	for (i=1; i<=rnum1; i++)
	{
		printf("W_control%d W_control%d (clk,temp_w%d_r,temp_w%d_i);\n",i,i,i,i);
	}
	
	printf ("\n");
	
	for (i=0; i<dtmpnum; i=i+2){
		if (i<2){
			printf("delay delay%d (clk,%d'd%d,in_r,temp_d%d);\n",i,DNumBus,dpnum,i);
			printf("delay delay%d (clk,%d'd%d,in_i,temp_d%d);\n",i+1,DNumBus,dpnum,i+1);
		}
	}

			
	printf ("\n");
	
	int mctl = 0;		//control m number
	int muxctl = 1;		//control mux number
	int dpnum1 =dpnum - 1;
	for (i=2; i<dtmpnum; i++){
		printf("delay delay%d (clk,%d'd%d,temp_m%d_r,temp_d%d);\n",i,DNumBus,dpnum1,mctl,i);
		i++;
		printf("delay delay%d (clk,%d'd%d,temp_m%d_i,temp_d%d);\n",i,DNumBus,dpnum1,mctl,i);
		i++;
		
		dpnum1 = dpnum1 /2;
		if(i<dtmpnum){
			printf("delay delay%d (clk,%d'd%d,temp_mux%d,temp_d%d);\n",i,DNumBus,dpnum1,muxctl,i);
			i++;
			printf("delay delay%d (clk,%d'd%d,temp_mux%d,temp_d%d);\n",i,DNumBus,dpnum1,muxctl+1,i);
			mctl +=1;
			muxctl +=2;
		}
	}
	
	printf ("\n");
	
	int dctl=2;		//control temp_d number
	muxctl=1;	//control temp_mux number
	for(i=0; i<rnum1; i++){
		printf("mux mux%d (temp_muxc%d,temp_r%d_1_r,temp_d%d,%d'b0,temp_mux%d);\n",muxctl,i+1,i,dctl,CalcTempBus,muxctl);
		printf("mux mux%d (temp_muxc%d,temp_r%d_1_i,temp_d%d,%d'b0,temp_mux%d);\n",muxctl+1,i+1,i,dctl+1,CalcTempBus,muxctl+1);
		dctl +=4;
		muxctl +=2;
	}
	
	printf ("\n");
	
	dctl=4;	//control temp_d number
	muxctl=1;	//control temp_mux number
	for(i=0; i<rnum1; i++){
		if (i==0){
			printf("radix2 radix2_0 (temp_d0,temp_d1,in_r,in_i,temp_r0_1_r,temp_r0_1_i,temp_r0_2_r,temp_r0_2_i);\n");
		}else{
			printf("radix2 radix2_%d (temp_d%d,temp_d%d,temp_mux%d,temp_mux%d,temp_r%d_1_r,temp_r%d_1_i,temp_r%d_2_r,temp_r%d_2_i);\n",i,dctl,dctl+1,muxctl,muxctl+1,i,i,i,i);
			dctl += 4;
			muxctl += 2;
		}
	}
	
	printf ("\n");
	
	for(i=0; i<rnum1; i++){
		printf("MULT MULT%d (temp_r%d_2_r,temp_r%d_2_i,temp_m%d_r,temp_m%d_i,temp_w%d_r,temp_w%d_i);\n",i,i,i,i,i,i+1,i+1);
	}
	
	printf ("\n");
	
	printf("*********************MUX_control*******************\n\n");
	
	printf ("\n");
	
	int mux1 = 2;				//roop count
	int mux2 = NUM/2;			//roop nai count
	int mux3 = NUM/2 +1;		//start point
	int mux4 = 1;				// 0 or 1
	int mux5 = 0;				//delay input 5 7 8 (0 2 1)
	for(i=0; i<rnum1; i++){
		printf("\n");
		for(j=0; j<mux1; j++){
			if(mux4 == 1){
				mux4 = 0;
			}else if(mux4 == 0){
				mux4 = 1;
			}
			for(k=0; k<mux2; k++){
				printf("%d'd%d : sel <= 2'd%d;\n",MuxCountBus,mux3,mux4);
				mux3++;
			}
		}
		mux1 *= 2;
		mux2 /= 2; 
		mux5 += mux2;
		mux3 = NUM/2 + 1 + mux5;
	}
	
	printf ("\n");
	
	printf("*********************W_control*******************\n\n");
	
	printf ("\n");
	
	int w1 = 1;
	int w2 = NUM/2;			//roop nai count
	int w3 = NUM/2 +1;		//start point
	int w4 = 1;				// 0 or 1
	int w5 = 0;				//delay input 5 7 8 (0 2 1)
	int w6 = log2(NUM);		//w_count
	int w7 = 0;
	for(i=0; i<rnum1; i++){
		//w7 = i;
		printf("\n");
		for(j=0; j<w1; j++){
			for(k=0; k<w2; k++){
				printf("%d'd%d : begin\n",WCountBus,w3);
				printf("W_real <= `W%d_real;\n",w7);
				printf("W_imag <= `W%d_imag;\n",w7);
				printf("end\n");
				w3++;
				//w7 += w6;
				w7++;
			}
			w3 += w2;
		}
		printf("\n**************************************************\n");
		w1 *= 2;
		w2 /= 2; 
		w5 += w2;
		w3 = NUM/2 + 1 + w5;
	}
	
	printf ("\n");
	
	printf("*********************top_sim*******************\n\n");
	
	printf ("\n");
	
	int decimal;
	int binary;
	int base;
	int sim1 = 0;
	for(i=0; i<NUM; i++){
		
		
		//decimal => binary
		decimal = i;
		binary = 0;
		base = 1;
		while(decimal>0){
			binary = binary + ( decimal % 2 ) * base;
			decimal = decimal / 2;
			base = base * 10;
		}
		//end decimal => binary
		
		printf("#10//%d\n",i);
		printf("in_r <= 16'sb%08d%08d;\n",binary,sim1);
		printf("in_i <= 16'sb%08d%08d;\n\n",binary,sim1);
		
		
		
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
		
	}
	
	printf ("\n");
	
	printf("*********************std_define.h*******************\n\n");
	
	printf ("\n");
	
	int out[WBus];

	int wnum1[rnum1][num2];		//rotation factor address
	int wnum2 = 0;		
	int wnum3 = 1;
	double wcalc_r = 0.0;
	double wcalc_i = 0.0;
	double PI = 3.1415926535;
	l=0;
	for(i=0; i<rnum1; i++){
		for(j=0; j<num2; j++){
			if(wnum2 >= num2){
				wnum2 -= num2;
				wnum1[i][j] = wnum2;
				wnum2 += wnum3;
			}	
			else{
				wnum1[i][j] = wnum2;
				wnum2 += wnum3;
			}
			//printf("wnum = %d\n",wnum1[i][j]);
			
			wcalc_r = cos((2 * PI * wnum1[i][j]) / NUM);
			wcalc_i = -sin((2 * PI * wnum1[i][j]) / NUM);
			
			
			printf("//wcalc_r = %lf , wcalc_i = %lf\n",wcalc_r,wcalc_i);
			
			
			binary1(wcalc_r ,out);
			
			//printf("int out = ");
			printf("`define W%d_real        16'sb",j+l);
			for(k=0; k<WBus; k++){
				printf("%d",out[k]);
			}
			printf("\n");
			
			binary1(wcalc_i ,out);
			
			//printf("int out = ");
			printf("`define W%d_imag        16'sb",j+l);
			for(k=0; k<WBus; k++){
				printf("%d",out[k]);
			}
			printf("\n");
			
			
		}
		wnum2 = 0;
		wnum3 *= 2;
		l += num2;
	}
	
	printf("\n");
	
	int test1 = 0x10;
	int test2 = 0b1010;
	int buf1;
	
	printf("test1_2 = %b , test1_16 = %x\n",test1,test1);
	printf("test2_2 = %b , test2_16 = %x\n",test2,test2);
	
	std::cout << std::hex << test1 << std::endl;
	std::cout << std::bitset<8>(test1) << std::endl;
	
	std::cout << std::hex << test2 << std::endl;
	std::cout << std::bitset<8>(test2) << std::endl;
	
	buf1 = mult2(test1,test2);
	
	std::cout << std::hex << buf1 << std::endl;
	std::cout << std::bitset<8>(buf1) << std::endl;
	
		
	
	
	/*
	long long int outr[rnum1][num2];
	long long int outi[rnum1][num2];
	k=0;
	w8(wnum1,outr,outi);
	
	for(i=0; i<rnum1; i++){
		for(j=0; j<num2; j++){
			printf("`define W%d_real        16'sb%016lld\n",j+k,outr[i][j]);
			printf("`define W%d_imag        16'sb%016lld\n",j+k,outi[i][j]);
		}
		k += num2;
	}
	*/
	
			
			
	
	
	
	
	return 0;
}























