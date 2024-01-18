import string
import requests

def encrypt(plaintext):
    r = requests.get(f"https://10.214.160.22:29777")
    return bytes.fromhex(r.json()['ciphertext'])

# ciphers=[]
# for i in range(1,17):
#     garbage = i*b'?'.hex()
#     ct = encrypt(garbage)
#     ciphers.append(ct)

flag_len = 25
alpha = list(dict.fromkeys("AAA{eainshr_}" + string.ascii_lowercase + string.digits + string.ascii_uppercase))
flag = b""
print("Brute forcing flag……\n")
for i in range(31,7,-1):
    for char in alpha:
        char =char.encode()
        ct = encrypt((i*b"?"+flag+char).hex())[:32]
        exp = encrypt((i*b"?").hex())[:32]
        if ct == exp:
            flag += char
            print(f"{char.decode()}",flush=True,end='')
            break