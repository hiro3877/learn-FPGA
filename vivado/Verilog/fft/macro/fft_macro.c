#include <stdio.h>
#include <math.h>

#define NUM 8
#define DNumBus 4
#define CalcTempBus 16
#define MuxCountBus 5

int main()
{
	int i,j,k,l,m,n;

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
		printf("%d'd%d	: out <= temp%d\n",DNumBus,i,i);
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
	
	int mux1 = NUM/2;
	int mux2 = NUM/2;
	for(i=0; i<rnum1; i++){
		mux2 += 1;
		for(j=0; j<mux1; j++){
			printf("%d'd%d : sel <= 2'd0;\n",MuxCountBus,mux2);
		
	
	return 0;
}























