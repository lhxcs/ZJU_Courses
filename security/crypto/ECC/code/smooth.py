from Crypto.Cipher import AES  
from Crypto.Util.Padding import pad,unpad
from sage.all import *
import hashlib

p = 310717010502520989590157367261876774703
a = 2
b = 3
F = GF(p)
E = EllipticCurve(F,[a,b])
g_x = 179210853392303317793440285562762725654
g_y = 105268671499942631758568591033409611165
G = E.point((g_x,g_y))

b_x = 272640099140026426377756188075937988094
b_y = 51062462309521034358726608268084433317
QB = E.point((b_x,b_y))

a_x=280810182131414898730378982766101210916
a_y=291506490768054478159835604632710368904
QA = E.point((a_x,a_y))

n = G.order()
fac = list(factor(n))
# print(fac)

module = []
remain = []
for i,j in fac:
    mod = i**j
    g = G*ZZ(n/mod)
    q = QA*ZZ(n/mod)
    dl = discrete_log(q,g,operation = "+")
    module.append(mod)
    remain.append(dl)
nA = crt(remain,module)
S = QB*nA

sha1 = hashlib.sha1()
sha1.update(str(S[0]).encode('ascii'))
key = sha1.digest()[:16]

iv=bytes.fromhex('07e2628b590095a5e332d397b8a59aa7')
encrypted_flag=bytes.fromhex('8220b7c47b36777a737f5ef9caa2814cf20c1c1ef496ec21a9b4833da24a008d0870d3ac3a6ad80065c138a2ed6136af')
cipher = AES.new(key,AES.MODE_CBC,iv)
flag = unpad(cipher.decrypt(encrypted_flag),16).decode()
print(flag)