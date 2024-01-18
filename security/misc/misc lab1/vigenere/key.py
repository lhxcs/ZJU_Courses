from random import randrange

text_list = ' !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\t\n'

c = open('cipher.txt','r').read()

def countpro(list):
    li = []
    alphabet = [chr(i) for i in range(97,123)]
    for c in alphabet:
        cnt = 0 
        for ch in list:
            if ch == c:
                cnt += 1
        li.append(cnt/len(list))
    return li

def texttolist(text,length):
    textMatrix = []
    row = []
    index = 0
    for ch in text:
        row.append(ch)
        index += 1
        if index % length == 0:
            textMatrix.append(row)
            row = []
    return textMatrix

key = []
matrix = texttolist(c,29)

def max(list):
    max = list[0]
    for x in list:
        if x > max:
            max = x
    return max

eindex = text_list.index('e')

alpha =[]
for i in range(29):
    w = [row[i].lower() for row in matrix]
    li = countpro(w) 
    max1 = max(li)
    cnt1 = li.index(max1)
    origindex = w[cnt1]
    textindex = text_list.index(origindex)
    print(origindex)
    alpha.append(textindex)

for num in alpha:
    for k in range(1,1000):
        if (69 * k) % 97 == num:
            k %= 97
            key.append(k)
            break
print(key)

