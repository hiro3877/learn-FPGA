#include <math.h>
#include <stdio.h>

#define N 128
#define M 7
#define N2 64

double Fr[128],Fi[128];

void FFT1JT(double Fr[],double Fi[])
{
  double PI=3.14159265358979324;
  int K,L,I,J,L1,L2,SIG;
  double Ar,Ai,Cr,Ci,Wr,Wi,Q,tmp_A;

  L=N2;
	//start bit reverse
	/*
  for(K=1;K<=N-2;K++){
    if(K<L){
      Wr=Fr[L];
      Fr[L]=Fr[K];
      Fr[K]=Wr;
      Wi=Fi[L];
      Fi[L]=Fi[K];
      Fi[K]=Wi;
    }
    I=N2;
    while(I<L+1){
      L=L-I;
      I=I/2;
    }
    L=L+I;
  }
  */
  //end bit reverse

  //start FFT
  for (L=1;L<=M;L++){
    L1=1<<L;
    L2=L1/2;
    Ar=1.0;
    Ai=0.0;
    SIG=-1;
    Q=PI/L2;
    Cr=cos(Q);
    Ci=SIG*sin(Q);
    for(I=0;I<L2;I++){
      for(J=I;J<=N-1;J+=L1){
        K=J+L2;
        Wr=Fr[K]*Ar-Fi[K]*Ai;
        Wi=Fi[K]*Ar+Fr[K]*Ai;
        Fr[K]=Fr[J]-Wr;
        Fi[K]=Fi[J]-Wi;
        Fr[J]=Fr[J]+Wr;
        Fi[J]=Fi[J]+Wi;
      }
      tmp_A=Ar;
      Ar=Ar*Cr-Ai*Ci;
      Ai=Ai*Cr+tmp_A*Ci;
    }
  }
  //end FFT
}

void main()
{
int i;

//input data
for (i=0;i<N;i++){
  if (i<20){
	  Fr[i]=2;
	  Fi[i]=1;
  }else{
	  Fr[i]=0;
	  Fi[i]=0;
  }
}

for (i=0; i<N; i++){
	printf("Fr[%d] = %lf , Fi[%d] = %lf\n",i,Fr[i],i,Fi[i]);
}

printf("\n");

  FFT1JT(Fr,Fi);
  
  printf("test\n");
  
  for (i=0; i<N; i++){
	printf("Fr[%d] = %lf , Fi[%d] = %lf\n",i,Fr[i],i,Fi[i]);
}

}
