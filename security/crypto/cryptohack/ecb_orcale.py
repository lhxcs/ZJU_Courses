import string
import requests

def encrypt(plaintext):
    r = requests.get(f"https://aes.cryptohack.org/ecb_oracle/encrypt/{plaintext}")
    return bytes.fromhex(r.json()['ciphertext'])

ciphers=[]
for i in range(1,17):
    garbage = i*b'?'.hex()
    ct = encrypt(garbage)
    ciphers.append(ct)

alpha = list(dict.fromkeys("crypto{eainshr_}" + string.ascii_lowercase + string.digits + string.ascii_uppercase))
flag = b""
for i in range(31,7,-1):
    for char in alpha:
        char =char.encode()
        ct = encrypt((i*b"?"+flag+char).hex())[:32]
        exp = encrypt((i*b"?").hex())[:32]
        if ct == exp:
            flag += char
            print(f"{char.decode()}",flush=True,end='')
            break