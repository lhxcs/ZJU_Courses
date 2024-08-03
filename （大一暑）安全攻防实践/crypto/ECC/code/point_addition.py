from Crypto.Util.number import inverse
import hashlib

a = 497
b = 1768
prime = 9739

def point_addition(p,q):
    if(p==(0,0)):
        return q
    if(q==(0,0)):
        return p
    x1,y1 = p
    x2,y2 = q
    if x1==x2 and y1+y2==0:
        return (0,0)
    if p==q:
        s1 = (3*x1**2+a)%prime
        s2 = 2*y1
        s = s1*inverse(s2,prime)
    else:
        s1 = (y2-y1)%prime
        s2 = (x2-x1)%prime
        s = s1*inverse(s2,prime)
    x3 = (s*s-x1-x2)%prime
    y3 = (s*(x1-x3)-y1)%prime
    return (x3,y3)

def scalar_mul(p,n):
    q = p
    r = (0,0)
    while n>0:
        if n%2 == 1:
            r = point_addition(r,q)
        q = point_addition(q,q)
        n = n//2
    return r

qx = 4726
nb = 6534
y2 = (qx**3+497*qx+1768)%prime
y = pow(y2,(prime+1)//4,prime)
print(y)
S = scalar_mul((4726,6287),6534)
print(S)
# QA = (815,3190)
# nb = 1829
# G = (1804,5368)
# S = scalar_mul(QA,nb)
# key = hashlib.sha1()
# key.update(str(S[0]).encode())
# print(key.hexdigest())

# p=(493,5564)
# q=(1539,4742)
# r=(4403,5202)
# ans = point_addition(point_addition(point_addition(p,p),q),r)
# print(ans) 

# p = (2339,2213)
# n = 7863
# print(scalar_mul(p,n))