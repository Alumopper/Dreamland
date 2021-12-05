#include <stdio.h>

int main(){
	int a=2;
	double up=0.0;
	double low=0.0;
	for(;up*up<a;up++){}
	low=up-1;
	printf("%lf   %lf\n",low,up);
	for(double k=0.1;k>=1e-3;k*=0.1){
		for(;low*low<a;low+=k){}
		up=low;
		low-=k;
		printf("%f   %lf\n",low,up);
	}
	return 0;
}
