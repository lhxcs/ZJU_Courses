from math import sqrt
from math import gcd
from Crypto.Util.number import isPrime

def bsgs(g ,y ,p):
    m = int(p ** 0.5) + 1
    S = {pow(g, j, p): j for j in range(m)}
    # 生成一个字典S，其中键是对应于 0 <= j < m 的 g^j (mod p) 的值，而相应的值是 j 的值。
    for i in range(m):
        value = (y * pow(g, -m * i, p)) % p
        if value in S:
            return i * m + S[value]
    return None

# 分解质因数算法
def breakdown(n):
    result = []
    for i in range(2, int(sqrt(n) + 1)):
        if n % i == 0 :
            while n % i == 0:
                n //= i
            result.append(i)
        if n != 1:
            result.append(n)
    return result

## Pollard rho
def f(x):
    return x**2 + 1

def pollard_rho(n):
    x_n = 2
    x_2n = 2
    d = 1
    while d == 1 :
        x_n = f(x_n) % n
        x_2n = f(f(x_2n)) % n
        abs_val = abs(x_n - x_2n)
        d = gcd(abs_val,n)
    return d
def factor(n):
    ans = []
    while True:
        temp = pollard_rho(n)
        ans.append(temp)
        n = n//temp
        if n==1 :
            return ans
        if isPrime(n):
            ans.append(n)
            return ans


p = 22874236765582512818346580947708667745188778288884101219751361699392149989458510773797824610944321686257783426829474659298957510513578978620495392070614563   
print(factor(p))