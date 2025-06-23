from bs4 import BeautifulSoup
import requests

headers = {
    "User-Agent" : "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36 Edg/114.0.1823.67"
}

for start_num in range(0,250,25):
    r = requests.get(f"https://movie.douban.com/top250?start={start_num}",headers = headers).text
    soup = BeautifulSoup(r,"html.parser")
    all_titles = soup.findAll("span",attrs={"class":"title"})
    for title in all_titles:
        title_string = title.string
        if "/" not in title_string:
            print(title.string)

