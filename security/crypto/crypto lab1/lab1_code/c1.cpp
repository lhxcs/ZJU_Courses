#include <bits/stdc++.h>
using namespace std;
typedef long double LD;
typedef long long LL;
LL n, c, p, q, t, x, y, w = (1 << 30) + 3;
void exgcd(LL a, LL b, LL &x, LL &y){
	if(!b){
		x=1;y=0;
	}else{
		exgcd(b,a%b,y,x);
		y -= a/b*x;
	}
}
LL mul(LL a,LL b,LL p){
	LD x;
	x=LD(a)/p*b;
	return ((a*b-LL(x)*p)%p+p)%p;
}
LL ksm(LL a,LL b,LL p){
	LL s = 1;
	while(b){
		if(b%2){
			s = mul(s,a,p);
		}
		a = mul(a,a,p);
		b /= 2;
	}
	return s;
}
int main(){
	int i,j,m,T,tt;
	scanf("%d",&T);
	for (tt=1;tt<=T;tt++){
		scanf("%lld%lld",&n,&c);
		for (i=sqrt(n); i;i--){
			if(n%i==0){
				p=i;
				q=n/i;
				break;
			}
		}
		t=(p-1)*(q-1);
		exgcd(w,t,x,y);
		x = (x%t+t)%t;
		printf("Case %d: ",tt);
		printf("%lld\n",ksm(c,x,n));
	}
}

