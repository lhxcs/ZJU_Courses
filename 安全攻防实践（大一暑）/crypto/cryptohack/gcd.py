from Crypto.Util.number import *
def gcd(a,b):
    if b ==0:
        return a
    else:
        return gcd(b,a%b)
def exgcd(a,b):
    if b==0:
        return 1,0,a
    else:
        x,y,q = exgcd(b,a%b)
        x, y = y, (x - (a // b) * y)
        return x,y,q

def modular_inverse(a,p):
    for i in range(p):
        if (a*i)%p==1:
            return i
    return None

def quadratic_residue(x,p):
    for i in range(p):
        if (i**2) % p == x:
            return i
    return None
print(quadratic_residue(14,29))
print(quadratic_residue(6,29))
print(quadratic_residue(11,29))