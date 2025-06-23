from Crypto.Util.number import *
from sympy.polys.galoistools import gf_crt
from sympy.polys.domains import ZZ
import gmpy2
import random

def Pohlig_Hellman(g, h, p):
    # 模数分解
    p_1 = p - 1
    d, factors = 2, []
    while d*d <= p_1:
        while (p_1 % d) == 0:
            factors.append(d)
            p_1 //= d
        d += 1
    if p_1 > 1:
        factors.append(p)
    factors = [[i, factors.count(i)] for i in set(factors)]

    # 求每个素因子进制下的c_i
    x = []
    for factor in factors:
        c_i_list = []
        for i in range(factor[1]):
            if i != 0:
                beta = (beta * pow(g, -(c_i_list[-1] * (factor[0] ** (i - 1))), p)) % p
            else:
                beta = h
            e1 = pow(beta, (p-1) // (factor[0] ** (i + 1)), p)
            e2 = pow(g, (p-1) // factor[0], p)
            for c_i in (range(factor[0])):
                if pow(e2, c_i, p) == e1:
                    c_i_list.append(c_i)
                    break
        x.append(c_i_list)

    # 将模p_i意义下的p_i进制表示转换为模p_i意义下的十进制
    system = []
    for i, factor in enumerate(factors):
        res = 0
        for j, x_j in enumerate(x[i]):
            res += x_j * (factor[0] ** j)
        res = res % (factor[0] ** factor[1])
        system.append(res)

    # 中国剩余定理
    factors = [factors[i][0] ** factors[i][1] for i in range(len(factors))]
    result = gf_crt(system, factors, ZZ)
    return result


if __name__ == "__main__":
    p = 7863166752583943287208453249445887802885958578827520225154826621191353388988908983484279021978114049838254701703424499688950361788140197906625796305008451719
    a = random.randint(0, 2 ** 512)
    x = random.randint(0, 2 ** 256)
    b = pow(a, x, p)
    print("real_x = {}".format(x))

    res = Pohlig_Hellman(a, b, p)
    print("x1 = {}".format(res))

# sage: p = 7863166752583943287208453249445887802885958578827520225154826621191353388988908983484279021978114049838254701703424499688950361788140197906625796305008451719
# sage: primitive_root(p)
# 13
    g = 13 # p的本原元为13
    u = Pohlig_Hellman(g, a, p)
    v = Pohlig_Hellman(g, b, p)
    try:
        x = gmpy2.invert(u, p - 1) * v % (p - 1)
        print("x2 = {}".format(x))
    except: # u 和 p-1 可能不互素，导致之间没有逆元；该情况将u除以最大公因数使得两者之间互素即可，最后结果除以相应的数即可
        i = 0 
        gcd = gmpy2.gcd(u, p - 1)
        while True:
            if gmpy2.gcd(u, p - 1) != 1:
                u = u // gmpy2.gcd(u, p - 1)      
                i += 1
            else:
                break
        assert gmpy2.gcd(u, p - 1) == 1
        x = (gmpy2.invert(u // gmpy2.gcd(u, p - 1), p - 1) * v) % (p - 1) // (gcd ** i)
        print("x = {}".format(x))

     
"""
a ^ x \equiv b (mod p) 之中a不是原根
real_x = 17475167858715014509948693871106677723065342839264165381680037187400995034209
x1 = 3931583376291971643604226624722943901442979289413760112577413310595676694494454509217307369704071534867821221958389972909818020158235480633350085553499260068
x = 17475167858715014509948693871106677723065342839264165381680037187400995034209
"""

"""
a ^ x \equiv b (mod p) 之中a是原根
real_x = 59538927048508916825466804038603833711975305674466217174924215808245351055236
x1 = 59538927048508916825466804038603833711975305674466217174924215808245351055236
x2 = 59538927048508916825466804038603833711975305674466217174924215808245351055236
"""


