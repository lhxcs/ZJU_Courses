p=pow(2,255)-19
a=39420360
 
k=0
import gmpy2
import sympy
 
P=(p-1)
if p%4==3:
    print(gmpy2.powmod(a,int((p+1)//4),p))
    print(-gmpy2.powmod(a,int((p+1)//4),p))
else:
    while P%2==0:
        P=P//2
        k=k+1
    q=2
    while q: 
        l=gmpy2.powmod(q,int((p-1)//2),p)
        if l==p-1:
            break
        q=sympy.nextprime(q)
    b=gmpy2.powmod(q,P,p)
    x=[0 for i in range(k)]
    re_a=gmpy2.invert(a,p)
    x[k-1]=gmpy2.powmod(a,int((P+1)//2),p)
    for i in range(1,k):
        m=re_a*pow(x[k-i],2)
        n=pow(2,(k-i-1))
        if gmpy2.powmod(m,n,p)==p-1:
            j0=1
            x[k-i-1]=x[k-i]*pow(b,j0*(2**(i-1)))%p
        else:
            j1=0
            x[k-i-1]=x[k-i]%p
    print(x[0])