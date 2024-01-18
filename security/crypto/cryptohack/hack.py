import requests
import hashlib
from time import sleep
from Crypto.Cipher import AES

# Get CIphertext
url = "https://aes.cryptohack.org/passwords_as_keys"
r = requests.get(f"{url}/encrypt_flag")
ct = r.json()['ciphertext']
print(f"Ciphertext:{ct}")

# Get word list
r = requests.get("https://gist.githubusercontent.com/wchargin/8927565/raw/d9783627c731268fb2935a731a618aa8e95cf465/words")
words = r.content.split(b'\n')

# brute password
for word in words:
    key = hashlib.md5(word).digest()
    cipher = AES.new(key,AES.MODE_ECB)
    try:
        pt = cipher.decrypt(bytes.fromhex(ct))
        if b"crypto{" in pt:
            print(f"plaintext:{pt.decode()}")
    except: 
        continue

