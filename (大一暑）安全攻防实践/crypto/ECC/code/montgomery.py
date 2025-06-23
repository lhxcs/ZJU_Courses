from Crypto.Util.number import inverse
from sympy.ntheory import sqrt_mod

b = 1
a = 486662
p = pow(2,255) - 19

def addition(P,Q):
    x1,y1 = P
    x2,y2 = Q
    s1 = (y2-y1)%p
    s2 = (x2-x1)%p
    s = s1*inverse(s2,p)
    x3 = (b*s*s-a-x1-x2)%p
    y3 = (s*(x1-x3)-y1)%p
    return (x3,y3)

def doubling(P):
    x1,y1 = P
    s1 = (3*x1**2+2*a*x1+1)%p
    s2 = (2*b*y1)%p
    s = s1*inverse(s2,p)
    x3 = (b*s*s-a-2*x1)%p
    y3 = (s*(x1-x3)-y1)%p
    return (x3,y3)

def mon_bin(P,list):
    R0,R1 = P,doubling(P)
    for i in list[1:]:
        if i == 0:
            R0,R1 = doubling(R0),addition(R0,R1)
        else:
            R0,R1 = addition(R0,R1),doubling(R1)
    return R0

Gx = 9
y2 = (Gx**3 + a*Gx**2 + Gx)%p
y = sqrt_mod(y2,p)
G = (Gx,y)

hex_number = "1337c0decafe"
binary = bin(int(hex_number, 16))
bin_string = binary[2:]
bin_list = [int(bit) for bit in bin_string]
ans = mon_bin(G,bin_list)[0]%p
print(ans)
