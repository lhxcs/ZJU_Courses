from random import randrange

text_list = ' !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\t\n'

key =  [51,14,22,90,67,43,17,82,48,17,41,33,89,94,60,80,13,72,79,18,65,50,20,6,36,39,56,7,65]
key1 = []
for i in key:
    key1.append(text_list[i])
print(key1)
def decrypt(c, k):
    out = ''
    for i in range(len(c)):
        index = text_list.index(c[i])
        index *= modular_inverse(k[i % len(k)], 97)
        index %= 97
        out += text_list[index]
    return out

def modular_inverse(a, m):
    if a==0:
        return 0
    for x in range(1, m):
        if (a * x) % m == 1:
            return x

cipher = open('cipher.txt','r').read()
decrypted = decrypt(cipher,key)
open('plain1.txt','w').write(decrypted)