from PIL import Image
import numpy as np

img = Image.open('chall.png')
width,height = img.size
flag = " "
index = 0
img = img.convert("RGB")

for y in range(height):
    for x in range(width):
            pixel = list(img.getpixel((x,y)))
            r,g,b = [bin(p)[-1] for p in pixel]
            data_byte = r+ g+ b
            flag += data_byte[-1]
            index+=1
            if index % 8 == 0:
                try:
                    char = chr(int(flag,2))
                    flag1 = " "
                    print(flag,end="")
                except ValueError:
                     break
                