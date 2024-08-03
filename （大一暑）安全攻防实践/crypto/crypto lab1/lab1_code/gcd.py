import math
# gcd求解算法
# 代码版本
def gcd_code(x,y):
    if y == 0:
        return x
    else:
        return gcd_code(y,x%y)
    
# 使用python库函数
x = 15
y = 20
gcd_1 = math.gcd(x,y)

#乘法逆元求解算法
def extended_gcd(a, b):
    if b == 0:
        return a, 1, 0
    else:
        d, x, y = extended_gcd(b, a % b)
        return d, y, x - (a // b) * y

def find_multiplicative_inverse(a, m):
    d, x, y = extended_gcd(a, m)
    if d == 1:
        return (x % m + m) % m
    else:
        return None