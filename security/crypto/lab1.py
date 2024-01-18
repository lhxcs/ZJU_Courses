from random import randrange

text_list = ' !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\t\n'

key = [randrange(1, 97) for _ in range(randrange(15, 30))]

print('key = ' + str(key))

def encrypt(s, k):
    out = ''
    for i in range(len(s)):
        index = text_list.index(s[i])
        index *= k[i % len(k)]
        index %= 97
        out += text_list[index]
    return out

def decrypt(c, k):
    out = ''
    for i in range(len(c)):
        index = text_list.index(c[i])
        index *= modular_inverse(k[i % len(k)], 97)
        index %= 97
        out += text_list[index]
    return out

def modular_inverse(a, m):
    for x in range(1, m):
        if (a * x) % m == 1:
            return x
    return None

cipher = open('cipher.txt', 'r').read()
decrypted = decrypt(cipher, key)
open('plain.txt','w').write(decrypted)


ciphertext = open('cipher.txt', 'r').read()
plaintext = open('plain.txt', 'r').read()

for i in range(1, 97):
    key = [i] * len(ciphertext)
    decrypted = decrypt(ciphertext, key)
    if decrypted == plaintext:
        print("Key found: ", key)
        break







